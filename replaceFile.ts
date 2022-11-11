import fs from 'fs-extra'

interface file {
    name: string;
    path: string;
}
interface tags {
    filename: string;
    filepath: string;
}
export let changeNum = 0
export function replaceFile(file: file) {
    const data = fs.readFileSync(file.path, 'utf-8')
    // 情况一 input 上面带着 uploadUrl
    const reg =
        /<input[\W\w]*?uploadUrl="\/itmp\/com.cgn.itmp.basecommon.FileComp.selectFile.biz.ext.[\W\w]*?<\/tr>/g
    let replaceStr = data.match(reg) || []
    if (replaceStr.length) {
        //  获取字段名称
        const reg2 = /id="([\W\w]*?)"/g
        const reg3 = /name="([\W\w]*?)"/g
        const name = replaceStr[0].matchAll(reg3)
        const value = replaceStr[0].matchAll(reg2)
        const nameArr = [...name].map((item) => item[1])
        const valueArr = [...value].map((item) => item[1])

        let obj: tags = {
            filename: '',
            filepath: '',
        }
        nameArr.forEach((item, index) => {
            console.log(item, valueArr[index])
            obj[item as keyof tags] = valueArr[index]
        })
        let newData = data.replace(reg,
            `
            <input type="file" id="file" name="file" multiple onchange="uploadFile(event)" />
            <input class="nui-hidden" id="${obj.filepath}" name="filepath"/>
            <input class="nui-hidden" id="${obj.filename}" name="filename"/>
            </tr>
             `)
        newData = newData.replace(/<\/body>/g, `
         <script>
         function uploadFile (e) {
            let  xhr = new XMLHttpRequest();
            let  fd = new FormData();
            fd.append('file', e.target.files[0]);
            xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
            xhr.send(fd);
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    let  data = JSON.parse(xhr.responseText);
                    console.log(data);
                    if (data.code == '1') {
                        nui.get("fname").setValue(data.list[0].name);
						nui.get("fpath").setValue(data.list[0].uri);
                    } else {
                        nui.alert(data.message);
                    }
                }
            };
        }
         </script>
         </body>
         `)
        changeNum++
        // 保存
        fs.writeFileSync(file.path + '.jsp', newData)
    }
}
