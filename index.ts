import fs from 'fs-extra'
import path from 'path'
import { replaceFile } from './replaceFile'
import yargs from 'yargs'
import { hideBin } from 'yargs/helpers'

yargs(hideBin(process.argv))
    .command('build', 'path', (e) => {
        console.log(e);
    }, (argv) => {
        console.log(argv);
        let handlerPath = argv._[1] as string
        interface file {
            name: string;
            path: string;
        }
        // 目录内所有jsp文件
        const fileArr: file[] = []

        // 找出所有指定目录内所有jsp文件
        const findFile = (dir: string) => {
            const files = fs.readdirSync(dir)
            files.forEach((file) => {
                const filePath = path.join(dir, file)
                const stats = fs.statSync(filePath)
                if (stats.isFile() && file.endsWith('.jsp')) {
                    fileArr.push({
                        name: file,
                        path: filePath,
                    })
                } else if (stats.isDirectory()) {
                    findFile(filePath)
                }
            })
        }
        console.log('系统开始运行')

        findFile(handlerPath)

        const handlerArr: file[] = []
        fileArr.forEach((file) => {
            if (replaceFile(file)) {
                handlerArr.push(file)
            }
        })
        console.log(JSON.stringify(handlerArr));
        console.log('系统运行结束，一共' + fileArr.length + '个文件', '修改了' + handlerArr.length + '个文件')
    })
    .demandCommand(1)
    .parse()
