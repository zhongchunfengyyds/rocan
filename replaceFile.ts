import fs from 'fs-extra'

interface file {
    name: string;
    path: string;
}
interface tags {
    filename: string;
    filepath: string;
}
export function replaceFile(file: file): boolean {
    let data = fs.readFileSync(file.path, 'utf-8')
    const inputReg = /<input.*?\/>/gs
    let inputArr = data.match(inputReg) || []
    // 情况一 input 上面带着 uploadUrl
    let inputUploadArr: string[] = []
    inputArr.forEach((input) => {
        if (input.indexOf('basecommon.FileComp.selectFile.biz') > -1) {
            inputUploadArr.push(input)
        }
    })
    if (inputUploadArr.length) {
        inputUploadArr.forEach((uploadUrl) => {
            //  获取 inputUploadArr 中的 id
            const regId = /id=".*?"/
            let ids = uploadUrl.match(regId) || []
            const id = ids.length > 0 ? ids[0].replace(/id="/, '').replace(/"/, '') : ''
            data = data.replace(uploadUrl, ` <input type="file" id="${id}" name="file" multiple onchange="uploadFile(event,id)" /> `)
        })
        data = data.replace(/<\/body>/g, `
             <script>
             function uploadFile (e, id) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                fd.append('file', e.target.files[0]);
                xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                xhr.send(fd);
                xhr.onreadystatechange = function () {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        let  data = JSON.parse(xhr.responseText);
                        if (data.code == '1') {
                            onUploadSuccess&&onUploadSuccess({
                                file: {
                                    name: data.list[0].name
                                },
                                sender:{
                                    id: id
                                },
                                serverData: JSON.stringify({
                                    ret: {
                                        filePath: data.list[0].uri
                                    }
                                })
                            });
                        } else {
                            nui.alert(data.message);
                        }
                    }
                };
            }
             </script>
             </body>
             `)
        fs.writeFileSync(file.path, data)
        return true
    } else {
        return false
    }
}
