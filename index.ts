import fs from 'fs-extra'
import path from 'path'
import { replaceFile } from './replaceFile'
interface file {
    name: string;
    path: string;
}
// 目录内所有jsp文件
const fileArr: file[] = []

// 找出所有指定目录内所有jsp文件
const findFile = (dir: string) => {
    const files = fs.readdirSync(dir)
    console.log('.........')
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

findFile('./data')

console.log('一共寻找到' + fileArr.length + '个文件')
// 修改文件内容
// const replaceFile = (file: file) => {
//     const data = fs.readFileSync(file.path, 'utf-8')

//     const newData = data.replace(
//         /<img src="\/images/g,
//         '<img src="https://www.abc.com/images',
//     )
//     fs.writeFileSync(file.path, newData)
// }

const handlerArr: file[] = []
fileArr.forEach((file) => {
    console.log(file.name + ' loading...');
    if (replaceFile(file)) {
        handlerArr.push(file)
    }
})
console.log(JSON.stringify(handlerArr));
console.log('系统运行结束，一共' + handlerArr.length + '个文件', '修改了' + handlerArr.length + '个文件')
