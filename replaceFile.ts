#!/usr/bin/env node
import fs from 'fs-extra'
import { file } from './type'

export function replaceFile(file: file): boolean {
    let data: string = fs.readFileSync(file.path, 'utf-8')
    const inputReg = /<input.*?\/>/gs
    let inputArr: string[] = data.match(inputReg) || []
    // 情况一 input 上面带着 uploadUrl basecommon.FileComp.selectFile.biz
    // 情况二 input 上面带着 uploadUrl coframe/framework/dzqm/uploaddzq
    const inputUploadArr: string[] = inputArr.filter((input: string) => input.indexOf('basecommon.FileComp.selectFile.biz') > -1 || input.indexOf('coframe/framework/dzqm/uploaddzq') > -1) ?? []
    if (inputUploadArr.length) {
        inputUploadArr.forEach((uploadUrl) => {
            //  获取 inputUploadArr 中的 id
            const regId = /id=".*?"/
            let ids: string[] = uploadUrl.match(regId) || []
            const id = ids.length > 0 ? ids[0].replace(/id="/, '').replace(/"/, '') : ''
            const regName = /name=".*?"/
            let names: string[] = uploadUrl.match(regName) || []
            const name = ids.length > 0 ? names[0].replace(/name="/, '').replace(/"/, '') : ''
            const type = uploadUrl.indexOf('basecommon.FileComp.selectFile.biz') > -1 ? 'biz' : 'uploaddzq'
            data = data.replace(uploadUrl, ` <input  property="editor" id="${id}" name="${name}"  class="nui-htmlfile"  onfileselect="uploadFile(event,'${id}','${type}')" style="width:100%" />`)
        })

        data = data.replace(/<\/body>/g, `
             <script>
             function uploadFile (e,id,type) {
                let  xhr = new XMLHttpRequest();
                let  fd = new FormData();
                // type biz  basecommon.FileComp.selectFile.biz uploaddzq coframe/framework/dzqm/uploaddzq
                if(type === 'biz'){
                    fd.append('file', e.target.files[0]);
                    xhr.open('POST', '/itmp/coframe/framework/dzqm/uploadbd.jsp', true);
                }else{
                    fd.append('file', e[0][1]._fileEl.files[0]);
                    xhr.open('POST', '/itmp/coframe/framework/dzqm/uploaddzqm.jsp', true);
                }
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
                                    list:data.list,
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
