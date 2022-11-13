var aep_omscenter_rest_api="http://aep-p.gnpjvc.cgnpc.com.cn/omscenter/";


var aepgw_rest_api ="http://aepgw-p.gnpjvc.cgnpc.com.cn/";
var aep_rest_api="http://aep-p.gnpjvc.cgnpc.com.cn/";
var aepgateway_rest_api="http://aepgateway/";

/*-------------------------------单点登录组件-------------------------------------*/
var aep_sso = "http://aep-p.gnpjvc.cgnpc.com.cn/sso/getUserDetail";

var aep_sso_login="http://aep-p.gnpjvc.cgnpc.com.cn/omscenter/getUserDetail"

/*-------------------------------发送邮件，短信-------------------------------------*/

var aep_omscenter_rest_api_sendEmail = aep_omscenter_rest_api+"sendEmail";

var aep_omscenter_rest_api_sendSms = aep_omscenter_rest_api+"sendSms";


/*-------------------------------日志中心-------------------------------------*/
//附件日志查询
var aep_omscenter_rest_api_queryFileLog = aep_omscenter_rest_api+"queryFileLog";
//邮件日志查询 
var aep_omscenter_rest_api_queryEmailLog = aep_omscenter_rest_api+"queryEmailLog";
//短信日志查询
var aep_omscenter_rest_api_querySmsLog = aep_omscenter_rest_api+"querySmsLog";
//登陆日志
var aep_omscenter_rest_api_queryLoginLog=aep_omscenter_rest_api+"queryLoginLog";
//邮件统计
var aep_omscenter_rest_api_statEmailLogByTenantAppId=aep_omscenter_rest_api+"statEmailLogByTenantAppId";
//sms统计
var aep_omscenter_rest_api_statSmsLogByTenantAppId = aep_omscenter_rest_api+"statSmsLogByTenantAppId";

/*-------------------------------流程中心-------------------------------------*/

var aep_omscenter_rest_api_physicalDeleteBpmFiles = aep_omscenter_rest_api+"physicalDeleteBpmFiles";

var aep_omscenter_rest_api_uploadBpmFiles = aep_omscenter_rest_api+"uploadBpmFiles";

var aep_omscenter_rest_api_directDownloadBpmFile = aep_omscenter_rest_api+"directDownloadBpmFile";


/*-------------------------------文件中心-------------------------------------*/
//分片上传
var aep_omscenter_rest_api_uploadFilesByChunk = aep_omscenter_rest_api+"uploadFilesByChunk";
//附件上传
var aep_omscenter_rest_api_uploadFiles = aep_omscenter_rest_api+"uploadFiles";
//附件删除
var aep_omscenter_rest_api_logicalDeleteFiles = aep_omscenter_rest_api+"logicalDeleteFiles";
//附件下载
var aep_omscenter_rest_api_directDownload = aep_omscenter_rest_api+"directDownload";
//附件统计
var aep_omscenter_rest_api_queryFiles = aep_omscenter_rest_api+"queryFiles";

/*-------------------------------用户中心-------------------------------------*/
//获取域信息
var aep_omscenter_rest_api_getUserDetail = aep_omscenter_rest_api+"getUserDetail"
//获取人员信息
var aep_omscenter_rest_api_getUserInfoByUserId = aep_omscenter_rest_api+"getUserInfoByUserId"
//部门树加载
var aep_omscenter_rest_api_getOrgTreeByLazy = aep_omscenter_rest_api+"getOrgTreeByLazy"
//根据部门id查人员
var aep_omscenter_rest_api_getStaffsByOrgId = aep_omscenter_rest_api+"getStaffsByOrgId"
//根据部门ID查询本部门及其所有父部门的字符串
var aep_omscenter_rest_api_getFullNameOfOrgByOrgId = aep_omscenter_rest_api+"getFullNameOfOrgByOrgId"
//根据关键字查询人员
var aep_omscenter_rest_api_getStaffsByKeyWord = aep_omscenter_rest_api+"getStaffsByKeyWord"
//根据人员ID获取信息
var aep_omscenter_rest_api_getUserInfoByUserId = aep_omscenter_rest_api+"getUserInfoByUserId"

/*-------------------------------应用中心-------------------------------------*/
var aep_omscenter_rest_api_getAppTree = aep_omscenter_rest_api+"getAppTree"

var aep_omscenter_rest_api_getAppDetail = aep_omscenter_rest_api+"getAppDetail";

var aep_omscenter_rest_api_getAppsByCatalog = aep_omscenter_rest_api+"getAppsByCatalog";

var aep_omscenter_rest_api_getMicroServiceTree =aep_omscenter_rest_api+"getMicroServiceTree";

var aep_omscenter_rest_api_getAppsByServiceAuthority =aep_omscenter_rest_api+"getAppsByServiceAuthority";

var aep_omscenter_rest_api_grantAppService =aep_omscenter_rest_api+"grantAppService";

var aep_omscenter_rest_api_getAppGrantedService =aep_omscenter_rest_api+"getAppGrantedService";

var aep_omscenter_rest_api_getAppsByKeyword = aep_omscenter_rest_api+"getAppsByKeyword";

var aep_omscenter_rest_api_getServicesByCatalog =aep_omscenter_rest_api+"getServicesByCatalog";



var aep_omscenter_rest_api_getAppsById = aep_omscenter_rest_api+"getAppsById";

var aep_omscenter_rest_api_registerApp = aep_omscenter_rest_api+"registerApp";

var aep_omscenter_rest_api_validationAppCode = aep_omscenter_rest_api+"validationAppCode";

var aep_omscenter_rest_api_deleteApp = aep_omscenter_rest_api+"deleteApp";

var aep_omscenter_rest_api_queryDictEntry = aep_omscenter_rest_api+"queryDictEntry";




var aep_omscenter_rest_api_addServicesBlackList = aep_omscenter_rest_api+"addServicesBlackList"

var aep_omscenter_rest_api_addServicesWhiteList = aep_omscenter_rest_api+"addServicesWhiteList";

var aep_omscenter_rest_api_getAllServicesBlackList = aep_omscenter_rest_api+"getAllServicesBlackList";

var aep_omscenter_rest_api_getAllBlackListIp =aep_omscenter_rest_api+"getAllBlackListIp";

var aep_omscenter_rest_api_removeServicesList =aep_omscenter_rest_api+"removeServicesList";

var aep_omscenter_rest_api_blackAndWhiteListSwitchVO =aep_omscenter_rest_api+"blackAndWhiteListSwitchVO";

var aep_omscenter_rest_api_modifyServicesBlackList =aep_omscenter_rest_api+"modifyServicesBlackList";

var aep_omscenter_rest_api_modifyServicesWhiteList = aep_omscenter_rest_api+"modifyServicesWhiteList";

var aep_omscenter_rest_api_getAllWhiteList =aep_omscenter_rest_api+"getAllWhiteList";

var aep_omscenter_rest_api_getAllWhiteListIp =aep_omscenter_rest_api+"getAllWhiteListIp";

/*-------------------------------网关-------------------------------------*/
//网关地址
var aep_gateway ="http://10.100.22.152:9999";

var aep_api_manager = "http://10.100.22.152:3000";

/*-------------------------------授权中心-------------------------------------*/
var aep_omscenter_rest_api_addResource = aep_omscenter_rest_api+"addResource";

var aep_omscenter_rest_api_updateResource = aep_omscenter_rest_api+"updateResource";

var aep_omscenter_rest_api_removeResource = aep_omscenter_rest_api+"removeResource";

var aep_omscenter_rest_api_lockResource=aep_omscenter_rest_api+"lockResource";

var aep_omscenter_rest_api_unLockResource=aep_omscenter_rest_api+"unLockResource";

var aep_omscenter_rest_api_validateResource = aep_omscenter_rest_api+"validateResource";

var aep_omscenter_rest_api_queryRoles = aep_omscenter_rest_api+"queryRoles";

var aep_omscenter_rest_api_queryUnLockResourcesByApp = aep_omscenter_rest_api+"queryUnLockResourcesByApp";

var aep_omscenter_rest_api_grantRoleResource = aep_omscenter_rest_api+"grantRoleResource";

var aep_omscenter_rest_api_revokeRoleResource=aep_omscenter_rest_api+"revokeRoleResource";

var aep_omscenter_rest_api_queryResourceIdsByRole=aep_omscenter_rest_api+"queryResourceIdsByRole";

var aep_omscenter_rest_api_batchGrantRoleResource = aep_omscenter_rest_api+"batchGrantRoleResource";

var aep_omscenter_rest_api_queryUnLockRoles = aep_omscenter_rest_api+"queryUnLockRoles";

var aep_omscenter_rest_api_revokeUserRole = aep_omscenter_rest_api+"revokeUserRole";

var aep_omscenter_rest_api_batchGrantUserRole = aep_omscenter_rest_api+"batchGrantUserRole";

var aep_omscenter_rest_api_queryUserByRole=aep_omscenter_rest_api+"queryUserByRole";

var aep_omscenter_rest_api_addRole=aep_omscenter_rest_api+"addRole";

var aep_omscenter_rest_api_updateRole = aep_omscenter_rest_api+"updateRole";

var aep_omscenter_rest_api_removeRole = aep_omscenter_rest_api+"removeRole";

var aep_omscenter_rest_api_validateRole = aep_omscenter_rest_api+"validateRole";

var aep_omscenter_rest_api_queryUserInfoByRoleWithPage = aep_omscenter_rest_api+"queryUserInfoByRoleWithPage";

var aep_omscenter_rest_api_queryResourceType = aep_omscenter_rest_api+"queryResourceType";
