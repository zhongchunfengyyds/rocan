#!/usr/bin/env node
import fs, { Stats } from 'fs-extra'
import path from 'path'
import { replaceFile } from './replaceFile'
import { file } from './type'
import yargs from 'yargs'
import { hideBin } from 'yargs/helpers'

yargs(hideBin(process.argv))
    .command('build', 'path', (e) => {
        console.log(e);
    }, (argv) => {
        let handlerPath = argv._[1] as string
        // 目录内所有jsp文件
        const fileArr: file[] = []

        // 找出所有指定目录内所有jsp文件
        const findFile = (dir: string) => {
            const files: string[] = fs.readdirSync(dir)
            files.forEach(file => {
                const filePath = path.join(dir, file)
                const stats: Stats = fs.statSync(filePath)
                if (stats.isFile() && file.endsWith('.jsp')) {
                    fileArr.push({
                        name: file,
                        path: filePath
                    })
                } else if (stats.isDirectory()) {
                    findFile(filePath)
                }
            })
        }
        console.log('系统开始运行')

        findFile(handlerPath)

        const handlerArr: file[] = []
        fileArr.forEach((curfile: file) => {
            if (replaceFile(curfile)) {
                handlerArr.push(curfile)
            }
        })
        console.log(JSON.stringify(handlerArr));
        console.log('系统运行结束，一共' + fileArr.length + '个文件', '修改了' + handlerArr.length + '个文件')
    })
    .demandCommand(1)
    .parse()
