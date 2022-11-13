mini.LOCAL_CONFIG = {
	//JUD_LOCATION: "http://10.100.24.6:8080",
	JUD_LOCATION: "http://localhost:8080",
	//BPS_LOCATION: "http://10.100.24.8:8080",
	BPS_LOCATION: "http://localhost:8080",
	//AUTH_LOCATION: "http://10.100.24.7:8080"
	AUTH_LOCATION: "http://localhost:8080"
};
mini.MService_CONFIG = {
	URL_updateBpmAttachment : "http://10.100.22.171:35446/updateBpmAttachment",
	URL_updateBpmAttachments : "http://10.100.22.171:35446/updateBpmAttachments",//附件更新
	URL_saveAttachs:"http://10.100.22.171:35446/saveAttachs",//附件保存
	URL_downloadFile:"http://10.100.22.171:35446/downloads",//附件下载
	URL_queryFlowAttachs:"http://10.100.22.171:35446/queryFlowAttachs", //查询附件列表
	
	URL_getStaffsByKeyWord : "http://10.100.22.171:35438/user/getStaffsByKeyWord",
	URL_sendSmsByStaffNos : "http://10.100.22.171:35442/sendSmsByStaffNos", //发送短信
	URL_processEmail : "http://10.100.22.171:35444/aep/bizcenter/email/processEmail?key=1" //发送邮件	
};