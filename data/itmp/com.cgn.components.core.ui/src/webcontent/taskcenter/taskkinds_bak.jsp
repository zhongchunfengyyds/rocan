<!Doctype html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/common.jsp"%>

<html xmlns=http://www.w3.org/1999/xhtml>
<!-- 
  - Author(s): YingQuan.H
  - Date: 2016-08-03 16:24:27
  - Description: 发起任务--任务类型列表
-->
<head>
<title><b:message key="business-catalog"></b:message></title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
<style type="text/css">
body {
	overflow: none;
}

.list {
	overflow: auto;
	padding: 8px;
	border: solid 1px #a7abb0;
	height: 100%;
	border: none;
}

.list>.item-header {
	height: 22px;
	background: url(coframe/tools/skins/skin1/images/item-head.png)
		no-repeat;
}

.item-header>span {
	float: left;
	padding-left: 26px;
	font-weight: bold;;
	color: #FFFFFF;
	height: 22px;
	line-height: 22px;
	text-shadow: olive;;
}

.list>.item-body {
	
}

.item-body>ul {
	border: solid 1px #a7abb0;
	border-left: none;
}

.item-body>ul>li {
	float: left;
	list-style-type: none;
	padding: 0 2px;
	width: 19%;
}

.divide {
	clear: left;
	height: 8px;
}

.startFlowSpan {
	padding: 5px;
	border: 1px #d1e5f3 solid;
	vertical-align: middle;
	position: absolute;
	white-space: nowrap;
}

.remove-flow-icon {
	width: 16px;
	height: 16px;
	line-height: 16px;
	position: relative;
	margin-left: 5px;
	display: block;
	background-image: url("taskcenter/media/images/star-on.png");
	cursor: pointer;
	margin-top: 2px;
	float: right;
}

.add-flow-icon {
	width: 16px;
	height: 16px;
	line-height: 16px;
	position: relative;
	margin-left: 5px;
	display: block;
	background-image: url("taskcenter/media/images/star-off.png");
	cursor: pointer;
	margin-top: 2px;
	float: right;
}

.flow-view {
	width: 16px;
	height: 16px;
	line-height: 16px;
	position: relative;
	margin-right: 5px;
	display: block;
	background-image: url("taskcenter/media/images/processinstance.gif");
	cursor: pointer;
	margin-top: 2px;
	float: left;
}

.flow-name {
	position: relative;
	margin-right: 5px;
	margin-left: 5px;
	display: block;
	cursor: pointer;
	color: #0069ac;
	white-space: nowrap;
	float: left;
	font-family: "微软雅黑", "宋体", Arial, Verdana;
	font-size: 16px;
}

.span-flow-name {
	display: block;
	white-space: nowrap;
	float: right;
	position: relative;
}
</style>

<style>
* {
	padding-bottom: 0px;
	margin: 0px;
	outline-style: none;
	outline-color: invert;
	padding-left: 0px;
	outline-width: medium;
	padding-right: 0px;
	padding-top: 0px;
}

TABLE {
	border-spacing: 0;
	border-collapse: collapse;
}

INPUT[type='submit'] {
	border-bottom: medium none;
	border-left: medium none;
	font-family: "微软雅黑", "黑体", "宋体";
	VERTICAL-ALIGN: middle;
	border-top: medium none;
	border-right: medium none;
	-webkit-appearance: none;
}

.search_tow {
	float: right;
}
.search_result{
	min-width: 960px;
	width: 98%;
	position: absolute;
	DISPLAY:none;
	margin-top: 140px;
	margin-left: 10px;
	border: #eb6d57 1px solid;
	border-radius: 4px;
	min-height: 363px;
	margin-left: 10px;
	z-index:90;
	_overflow: visible;
	_width: 960px;
	_height: 363px;
	overflow: auto;
	height:78%;
}
.search-nav-item {
	line-height: 44px;
	width: 180px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 44px;
	cursor: pointer;
}
.search-nav-icon {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: top;
	margin-top: 12px;
	margin-left: 15px;
}
.search-for-item {
	border-bottom: transparent 1px solid;
	border-left: transparent 1px solid;
	width: 143px;
	display: block;
	height: 42px;
	color: #333;
	border-top: transparent 1px solid;
	border-right: transparent 1px solid;
	text-decoration: none;
	_border-color: tomato;
}



 .search-nav-text {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: top;
	text-align: left;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	margin-left:5px;
	font-size:14px;	
	cursor: pointer;
	text-align: left;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	cursor: pointer;
	width: 104px;
	line-height: 41px;
	height: 41px;
}


.h
{
	color: #f40 !important;
}

.search_result .inner
{
	text-align: center;
	padding-bottom: 100px;
	margin: 20px;
	padding-left: 0px;
	padding-right: 0px;
	display: none;
	font-family: "微软雅黑"; FONT-SIZE: 14px;
	font-weight: 700;
	padding-top: 100px;
}
.search_result .inner .taogongzai
{
	width: 80px;
	display: inline-block;
	*display:inline;
	background: url(taskcenter/media/images/found270.png) no-repeat 0px 0px;
	height: 90px;
	vertical-align: middle;
	margin-right: 40px;
}
.search_result .inner .item-not-found
{
	text-align: left;
	line-height: 30px;
	display: inline-block;
	*display:inline;
	vertical-align: middle;
}
 
.search_title{
	line-height: 30px;
	margin: 0px auto;
	text-align:center;
	height: 30px;
	font-size:14px;
	font-weight: bold;
	margin-right: 4px;
	_line-height: 35px;
	border-bottom: #333232 1px solid;
}
.search_nav {
	z-index: 888;
	position: absolute;
	filter: progid:DXImageTransform.Microsoft.Shadow(Strength=4, Direction=135,
		Color='#333232');
	_WIDTH: 960px;
	width: 100%;
	min-width: 960px;
	DISPLAY: none;
	BACKGROUND: #f8f8f8;
	HEIGHT: 119px;
	margin-top: 10px;
	margin-left: 10px;
	BORDER: #eb6d57 1px solid;
	RIGHT: 0px;
	border-radius: 4px;
	box-shadow: 1px 1px 2px #ccc;
	-webkit-box-shadow: 1px 1px 2px #ccc;
	-moz-box-shadow: 1px 1px 2px #ccc;
}

.search_input {
	border-bottom: #0066b3 1px solid;
	border-left: #0066b3 1px solid;
	padding-bottom: 0px;
	line-height: 36px;
	padding-left: 5px;
	width: 341px;
	padding-right: 0px;
	font-family: "Microsoft Yahei", Arial, Helvetica, sans-serif, "黑体";
	HEIGHT: 36px;
	color: #333333;
	font-size: 14px;
	border-top: #0066b3 1px solid;
	border-right: #0066b3 1px solid;
	padding-top: 0px;
}

.search_sn {
	margin: 0px auto;
	width: 470px;
	height: 70px;
	overflow: hidden;
}

.search_btn {
	text-align: center;
	line-height: 38px;
	width: 100px;
	display: inline-block;
	*display: inline;
	font-family: "Microsoft Yahei", Arial, Helvetica, sans-serif, "黑体";
	BACKGROUND: url(taskcenter/media/images/scbtn.png) no-repeat;
	height: 38px;
	color: #fff;
	font-size: 18px;
	cursor: pointer;
}

.hot-words {
	text-align: left;
	line-height: 40px;
	height: 40px;
	font-size: 14px;
	display: block;
}

.hot-words A {
	color: #333;
	text-decoration: none;
	margin-right: 20px;
}

.gb_btn {
	text-align: right;
	padding-right: 3px;
	height: 30px;
	padding-top: 3px;
}

.header {
	z-index: 11;
	position: relative;
	margin: 0px auto;
	margin-left: 12px;
	_WIDTH: 960px;
	width: 98%;
	min-width: 960px;
	height: auto;
	clear: both;
}
</style>

<style>
.clearfix:before {
	line-height: 0;
	display: table;
	content: "";
}

.clearfix:after {
	line-height: 0;
	display: table;
	content: "";
}

.clearfix:after {
	clear: both;
}

.container {
	margin: 0px auto;
	margin-left: 10px;
	min-width: 956px;
	_width: 956px;
	width: 98%
}

#ccbPage {
	position: relative;
	width: 100%;
	overflow: hidden;
}

#pToolbar {
	position: relative;
	padding-bottom: 10px;
	padding-left: 0px;
	padding-right: 0px;
}

#pToolbar A {
	/*color: #fff;*/
	
}

#pToolbar .bd .item {
	padding: 10px 12px;
	position: relative;
	width: 98%;
	FLOAT: left;
	height: 65px;
	font-size: 14px;
	border-radius: 4px;
	BORDER: #eb6d57 1px solid;
	top: 10px;
}

#pToolbar .bd .cygn #setCYGN {
	position: absolute;
	text-align: center;
	line-height: 26px;
	display: block;
	top: 10px;
	cursor: pointer;
	/*BORDER: #eb6d57 1px solid;*/
	right: 15px;
	border-radius: 4px;
}

#pToolbar .bd .cygn UL {
	margin-top: 10px;
	width: 960px;
	margin-left: 0px;
}

#pToolbar .bd .cygn UL LI {
	text-align: center;
	width: 140px;
	float: left;
}

.h-words {
	text-align: left;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	_width: 120px;
	width: 120px;
	cursor: pointer;
	*display: block;
}
</style>

<style>
.clearfix:after {
	display: block;
	height: 0px;
	clear: both;
	content: '\20';
}

.clearfix {
	zoom: 1;
}

.s-xmancard {
	min-height: 318px;
	_height: 318px;
}

.s-mancacrd-main {
	z-index: 2;
	position: relative;
}

.s-ctner-contents {
	min-width: 960px;
	width: 98%;
	margin-top: 10px;
	margin-left: 10px;
	border: #eb6d57 1px solid;
	border-radius: 4px;
	min-height: 363px;
	margin-left: 10px;
	_overflow: visible;
	_width: 960px;
	_height: 363px;
	overflow: auto;
}

.s-xmancard-mine {
	position: relative;
	padding-bottom: 21px;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

.s-code-blocks {
	border-bottom: transparent 1px solid;
	position: relative;
	margin-top: 13px;
	width: 100%;
	margin-bottom: 10px;
	border-top: transparent 1px solid;
	_margin-bottom: 5px;
	_overflow: hidden;
	_border: 0;
	_margin-top: 13px;
}

.s-block-container {
	margin: 0px auto;
	_width: 960px;
	width: 100%;
}

.s-block-container .s-mblock-content {
	font-size: 14px;
}

.s-code-blocks .s-mblock-title {
	z-index: 0;
	position: relative;
	text-align: left;
	padding-bottom: 6px;
	width: 100%;
	height: 30px;
	font-size: 14px;
}

.s-code-blocks .title-content {
	line-height: 30px;
	height: 100%;
	cursor: pointer;
}

.mine-title .mine-title-icon {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.mine-title .mine-title-text {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.mine-title .mine-title-num {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-code-blocks .title-content .mine-title .mine-title-icon {
	z-index: 0;
	position: relative;
	width: 10px;
	height: 10px;
	font-size: 0px;
	margin-right: 6px;
}

.s-code-blocks .title-content .mine-title .mine-title-icon EM {
	border-bottom: transparent 5px dashed;
	position: absolute;
	border-left: transparent 5px dashed;
	line-height: 0;
	width: 0px;
	height: 0px;
	font-size: 0px;
	border-top: #666 5px solid;
	top: 3px;
	border-right: transparent 5px dashed;
	left: 0px;
}

.s-code-blocks .title-content .mine-title .mine-title-text {
	line-height: 30px;
	height: 30px;
	font-weight: bold;
	margin-right: 4px;
	_line-height: 35px;
}

.s-code-blocks .title-content .mine-title .mine-title-num {
	height: 30px;
	color: #666;
	_line-height: 27px;
}

.s-code-blocks .title-content .edit-tool {
	float: right;
	height: 27px;
	font-weight: normal;
}

.s-code-blocks .title-content .edit-tool .edit-comp {
	text-align: center;
	line-height: 26px;
	background-color: #38f;
	width: 54px;
	height: 26px;
	color: #fff;
	font-size: 12px;
	cursor: pointer;
}

.s-block-nav .s-block-container {
	_width: 844px;
	width: 90%;
	overflow: hidden;
}

.s-block-nav .s-mblock-content {
	position: relative;
	text-align: left;
	padding-bottom: 15px;
	width: 100%;
	_width: 850px;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAsCAYAAACkJ9JhAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABdJREFUeNpi+P//PwPD8CM+fPjwHyDAAMWihE8GZVHBAAAAAElFTkSuQmCC);
	border-top: #f0f0f0 1px solid;
}

.s-isindex-wrap .s-content .s-block-nav .block-classed {
	background: none transparent scroll repeat 0% 0%;
	border-top: 0px;
}

.s-block-nav .nav-del {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: top;
}

.s-block-nav .nav-icon {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: top;
	margin-top: 12px;
	margin-left: 15px;
}

.s-block-nav .nav-text {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: top;
}


.s-block-nav .nav-text {
	text-align: left;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	cursor: pointer;
}

.block-classed .nav-text {
	text-align: left;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	cursor: pointer;
}

.s-block-nav .nav-text {
	width: 104px;
}

.block-classed .nav-text {
	width: 100px;
}

.s-block-nav .border-for-item .nav-text {
	line-height: 41px;
	height: 41px;
}

.s-block-nav .border-for-item .nav-text .nav-text-content {
	text-overflow: ellipsis;
	max-width: 100%;
	white-space: nowrap;
	float: left;
	height: 100%;
	overflow: hidden;
	_width: 100%;
}

.s-block-nav .block-nav-fanli .nav-text .nav-text-content {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: top;
}

.s-block-nav .nav-del {
	margin: 10px 0px 0px 6px;
	width: 15px;
	display: none;
	height: 15px;
}

.s-block-nav .nav-del .del-icon {
	width: 100%;
	height: 100%;
}

.s-block-nav .nav-item-edit {
	display: none;
}



.s-block-nav .nav-text {
	text-align: left;
	margin-left: 5px;
}

.s-block-nav .dir-item {
	position: relative;
	margin-top: -1px;
	width: 100%;
}

.s-block-nav .dir-item .dir-name {
	position: relative;
	zoom: 1;
	display: inline-block;
	vertical-align: top;
	*display: inline;
}

.s-block-nav .dir-item .dir-content {
	position: relative;
	zoom: 1;
	display: inline-block;
	vertical-align: top;
	*display: inline;
}

.s-block-nav .dir-item .dir-name {
	line-height: 42px;
	width: 64px;
	height: 100%;
	border-top: #f0f0f0 1px solid;
}

.s-block-nav .dir-item .dir-border {
	position: absolute;
	width: 74px;
	bottom: 0px;
	height: 0px;
	font-size: 0px;
	border-top: #f0f0f0 1px solid;
	left: 0px;
	_display: none;
	_bottom: -2px;
}

.s-block-nav .dir-item .white-border {
	z-index: 1;
	position: absolute;
	width: 850px;
	bottom: 1px;
	height: 0px;
	font-size: 0px;
	border-top: #fff 1px solid;
	right: 0px;
	_height: 2px;
	_bottom: -1px;
	_background-color: #fff;
}

.s-block-nav .dir-item .dir-name .name-text {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .dir-item .dir-name .name-text {
	line-height: 42px;
	width: 80px;
	text-overflow: ellipsis;
	white-space: nowrap;
	height: 42px;
	overflow: hidden;
}

.s-block-nav .dir-item .dir-name .edting-dir-name {
	z-index: 0;
	border-bottom: #f0f0f0 1px solid;
	position: absolute;
	border-left: #f0f0f0 1px solid;
	padding-bottom: 11px;
	line-height: 14px;
	outline-style: none;
	outline-color: invert;
	padding-left: 8px;
	outline-width: medium;
	width: 48px;
	padding-right: 8px;
	display: none;
	height: 14px;
	border-top: #f0f0f0 1px solid;
	top: 3px;
	border-right: #f0f0f0 1px solid;
	padding-top: 11px;
	left: 0px;
}

.s-block-nav .dir-item .dir-content {
	border-bottom: #ededed 1px solid;
	position: relative;
	min-height: 43px;
	min-width: 775px;
	width: 90%;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAsCAYAAACkJ9JhAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAABdJREFUeNpi+P//PwPD8CM+fPjwHyDAAMWihE8GZVHBAAAAAElFTkSuQmCC);
	border-top: #ededed 1px solid;
	_border-bottom: none;
	_height: 43px;
	_width: 775px;
	_background: none;
}

.s-block-nav .dir-item .d-nav-item {
	line-height: 44px;
	width: 180px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 44px;
	cursor: pointer;
}

.s-block-nav .s-mblock-content .dir-item .d-nav-item {
	z-index: 2;
}

.s-block-nav .d-nav-item .border-for-item {
	border-bottom: transparent 1px solid;
	border-left: transparent 1px solid;
	width: 143px;
	display: block;
	height: 42px;
	color: #333;
	border-top: transparent 1px solid;
	border-right: transparent 1px solid;
	text-decoration: none;
	_border-color: tomato;
}

.s-block-nav .title-content .edit-tool {
	text-align: right;
	float: right;
	height: 26px;
	font-size: 12px;
	font-weight: normal;
	margin-right: 2px;
}

.s-block-nav .title-content .edit-tool .tool-item {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .title-content .edit-tool .tool-item SPAN {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .title-content .edit-tool .tool-item {
	line-height: 26px;
	margin-left: 30px;
	vertical-align: top;
	cursor: pointer;
}

.s-code-blocks .s-setbar .edit-class {
	line-height: 30px;
	width: 83px;
	height: 30px;
}

.s-code-blocks .s-setbar .edit-class SPAN {
	line-height: 29px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 30px;
	vertical-align: middle;
}

.s-code-blocks .s-setbar .fanli-class SPAN {
	line-height: 29px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 30px;
	vertical-align: middle;
}

.s-code-blocks .s-setbar .fanli-class {
	line-height: 30px;
	width: 77px;
	height: 30px;
}

.s-block-nav .s-mblock-title .edit-add .add-icon {
	width: 14px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 14px;
	font-size: 0px;
	vertical-align: middle;
	margin-right: 7px;
}

.s-block-nav .s-mblock-title .edit-class .class-icon {
	width: 14px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 14px;
	font-size: 0px;
	vertical-align: middle;
	margin-right: 7px;
}

.s-block-nav .s-mblock-title .fanli-class .class-icon {
	width: 14px;
	zoom: 1;
	display: inline-block;
	*display: inline;
	height: 14px;
	font-size: 0px;
	vertical-align: middle;
	margin-right: 7px;
}

.s-block-nav .s-mblock-title .edit-add .add-icon {
	margin-right: 3px;
}

.s-block-nav .s-mblock-title .edit-class .class-icon {
	background-position: -68px -13px;
}

.s-block-nav .s-mblock-title .fanli-class .class-icon {
	background-position: -68px -13px;
}

.s-block-nav .s-mblock-title .classed .class-icon {
	background-position: -50px -13px;
}

.s-block-nav .title-content .edit-tool .edit-comp {
	text-align: center;
	line-height: 26px;
	background-color: #38f;
	width: 54px;
	height: 26px;
	color: #fff;
}

.s-block-nav .title-content .edit-tool .edit-indir {
	position: relative;
	text-align: right;
	line-height: normal;
	width: 177px;
	height: 26px;
	_margin-right: -30px;
}

.s-block-nav .title-content .edit-tool .dir-enter {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .title-content .edit-tool .dir-cancel {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .title-content .edit-tool .tool-add-dir {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .title-content .edit-tool .tool-add-dir {
	border-bottom: #cecece 1px solid;
	border-left: #cecece 1px solid;
	outline-style: none;
	outline-color: invert;
	padding-left: 5px;
	outline-width: medium;
	width: 100px;
	height: 24px;
	border-top: #cecece 1px solid;
	border-right: #cecece 1px solid;
	padding-top: 2px;
	_width: 90px;
}

.s-block-nav .title-content .edit-tool .dir-enter {
	text-align: right;
	line-height: 24px;
	width: 35px;
	height: 100%;
	color: #07f;
	_width: 35px;
}

.s-block-nav .title-content .edit-tool .dir-cancel {
	text-align: right;
	line-height: 24px;
	width: 35px;
	height: 100%;
	color: #07f;
	_width: 35px;
}

.s-block-nav .title-content .edit-tool .dir-cancel {
	color: #666;
}

.s-block-nav .del-dir {
	position: absolute;
	line-height: 20px;
	margin-top: -10px;
	display: none;
	height: 20px;
	top: 50%;
	cursor: pointer;
	right: 12px;
}

.s-block-nav .del-dir .del-dir-icon {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .del-dir .del-dir-text {
	zoom: 1;
	display: inline-block;
	*display: inline;
	vertical-align: middle;
}

.s-block-nav .del-dir .del-dir-icon {
	width: 7px;
	height: 7px;
	font-size: 0px;
	margin-right: 5px;
}

.s-block-container {
	overflow: hidden;
}

.s-mblock-up .s-mblock-content {
	display: none;
}

.s-mblock-up .s-mblock-title {
	border-bottom: #f0f0f0 1px solid;
}

.s-mblock-up .title-content .mine-title .mine-title-icon EM {
	border-left: #666 5px solid;
	border-top: transparent 5px dashed;
	top: 0px;
	left: 3px;
	*display: inline;
}

.search_tow_a_hover {
	width: 41px;
	display: block;
	background: url(taskcenter/media/images/search_btn.jpg) no-repeat;
	height: 38px;
	margin-left: 4px;
}
</style>



</head>
<body>
<span style="display:none"><b:write property="serviceUrl"/></span>	
	<div class="header">
		<div class="search_tow">
			<div class="search_nav">
				<div class="gb_btn">
					<a class="sd_sn" onclick="LinkClickFunction(this)" > <img
						src="taskcenter/media/images/gb.png" /></a>
				</div>
				<div class="search_sn">
					<form class="AcqStep" method="post" name="SearchForm" action="com.cgn.components.coframe.taskcenter.taskKindsSearch.flow"
						target="_self">
						<input type="hidden" name="command" value="search" /><input
							type="hidden" name="pageNumber" value="0" /><input type="hidden"
							name="resultsRange" value="10" /><input type="hidden"
							name="extendedHighlighting" value="Yes" /><input type="hidden"
							name="targetPage" value="resultsPage" />
						<table width="100%">
							<tbody>
								<tr>
									<td class="sn_td1"><input class="search_input" name="q" onkeyup="searchKeyUp()"
										value="" /></td>
									<td class="sn_td2"><input class="search_btn" type="button" onclick="searchFlow()"
										name="searchBtn" value="搜索" /></td>
								</tr>
								<tr>
									<td class="hot-words" colspan="2" align="left"><span>热门流程：</span>
										<l:iterate id="p1" property="findHot/WFCommonFlow">
												<a class="h-words" 
													processDefId='<b:write iterateId="p1" property="flowCode" />' title='<b:write iterateId="p2" property="flowName"/>'><b:write
														iterateId="p1" property="flowName" /></a>
										</l:iterate></td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
</div>
		</div>
		
	<div class="search_result">
			<div class="search_title">
			<span>搜索结果</span>
			</div>
			<div class="search_content">
				<div class="search-nav-item">
					<a class="search-for-item" target="_blank"><img class="search-nav-icon"  processDefId='<b:write iterateId="c13" property="processdefid"/>'
																			src="taskcenter/media/images/processinstance.gif" width="16" height="16" /><div class="search-nav-text" processDefId='<b:write iterateId="c13" property="processdefid"/>'
								title='<b:write iterateId="c13" property="processname"/>'><span>财务共享流程</span></div>
					</a>
				</div>
			</div>
			<DIV class="inner">
				<DIV class="taogongzai"></DIV>
				<DIV class="item-not-found">
					<DIV>没有找到与“<SPAN class="h">财务共享流程</SPAN>”相关的流程
					</DIV>
				</DIV>
			</DIV>	
	</div>
	
	
	
	<div id="ccbPage1">
		<div id="pToolbar">
			<div class="bd container clearfix">
				<div class="cygn item">
					<A class="search_tow_a search_tow_a_hover" id="setCYGN"
						onclick="LinkClickFunction(this)" ></A>
					<h2 style="margin-left: 48px">常用流程</h2>
					<ul id="setCYGN1" class="clearfix">
						<l:iterate id="p2" property="commonlist/WFCommonFlow">
							<li><a 
								processDefId='<b:write iterateId="p2" property="flowCode"/>'
								title='<b:write iterateId="p2" property="flowName"/>'> <span processDefId='<b:write iterateId="p2" property="flowCode"/>'
								title='<b:write iterateId="p2" property="flowName"/>'
									class="h-words"><b:write iterateId="p2"
											property="flowName" /> </span>
							</a></li>
						</l:iterate>
					</ul>
				</div>

			</div>
		</div>
	</div>

	<div id="s_ctner_contents"
		class="s-ctner-contents s-opacity-white-background">
		<div id="s_content_100" class="s-content">
			<div id="s_xmancard_mine" class="s-xmancard-mine s-xmancard">
				<div class="s-mine-wrapper clearfix">
					<l:iterate id="c11" property="list/PACSource">
						<l:equal iterateId="c11" property="pcatalogid" targetValue="1">
							<l:empty iterateId="c11" property="processdefid">
							<div class="s-code-blocks s-block-nav">
								<div class="s-block-container">
									<div class="s-mblock-title s-opacity-border4-bottom">
										<div class="title-content">
											<span class="mine-title">
												<div class="mine-title-icon">
													<em></em>
												</div> <span class="mine-title-text"> <b:write
														iterateId="c11" property="menuname" />
											</span> <span class="mine-title-num"> <!--(<span>8</span>)-->
											</span>
											</span>
										</div>
									</div>

									<l:iterate id="c12" property="list/PACSource">
										<l:equal iterateId="c12" property="pcatalogid" targetId="c11" targetProperty="catalogid">
										<l:empty iterateId="c12" property="processdefid"> 
											<div class="s-mblock-content s-opacity-blank3 block-classed block-nav-fanli">
												<div class="dir-item s-opacity-blank3" data-dir="1">
													<div class="dir-border s-opacity-blank3"></div>
													<div class="white-border"></div>
													<div class="dir-name s-opacity-blank3">
														<span class="name-text"><b:write iterateId="c12"
																property="menuname" /></span>
													</div>
														<div class="dir-content s-opacity-blank3">
													<l:iterate id="c13" property="list/PACSource">
														<l:equal iterateId="c13" property="catalogid"
															targetId="c12" targetProperty="catalogid">
															<l:notEmpty iterateId="c13" property="processdefid">
																	<div class="d-nav-item s-opacity-blank3">
																		<a class="border-for-item" title='<b:write iterateId="c13" property="processname"/>'
																			target="_blank">
																			<div class="nav-del">
																				<div class="del-icon"></div>
																			</div><img class="nav-icon" alt='<b:write iterateId="c13" property="processname"/>' processDefId='<b:write iterateId="c13" property="processdefid"/>'
																			src="taskcenter/media/images/processinstance.gif" width="16" height="16" /><div class="nav-text" processDefId='<b:write iterateId="c13" property="processdefid"/>'
								title='<b:write iterateId="c13" property="processname"/>'><span class="nav-item-edit"></span><span><b:write iterateId="c13" property="processname" /></span></div>
																		</a>
																	</div>
															</l:notEmpty>
														</l:equal>
													</l:iterate>
													</div>
												</div>
											</div>
											</l:empty>
										</l:equal>
									</l:iterate>
								</div>
							</div>
							</l:empty>
						</l:equal>
					</l:iterate>
				</div>
			</div>
		</div>
	</div>


	<div id="window" class="nui-window" showHeader="false"
		showToolbar="false" showFooter="false" allowResize="false"
		allowDrag="false" showCloseButton="true" showMaxButton="true"
		maskOnLoad="true" style="width: 100%; height: 100%"></div>

	<div id="chart-dialog" title='<b:message key="flow-chart"/>'
		class="nui-window" showToolbar="false" showFooter="false"
		showModal="true" showShadow="true" showMaxButton="true"
		maskOnLoad="true" allowResize="true"
		style="width: 1000px; height: 458px">
		<iframe id="chart-frame" frameborder="0" width="100%" height="100%"></iframe>
	</div>
	<script type="text/javascript">
	var _CONTEXT_PATH = "<%=request.getContextPath()%>";
		$(function() {
			nui.parse();
			var window = nui.get("#window");
			window.show = function() {
				$("body").css("overflow", "hidden");
				nui.Window.prototype.show.apply(this, arguments);
				if (parent.cgnui) {
					parent.cgnui.addNavigationItem("<b:message key='create'/>"
							+ $this.text() + "<b:message key='task'/>",
							"icon-new", null);
				}
			};
			window.hide = function() {
				$("body").css("overflow", "auto");
				nui.Window.prototype.hide.apply(this, arguments);
				if (parent.cgnui) {
					parent.cgnui.removeLastNavigationItem();
				}
			};

			$(".title-content").bind(
							"click",
							function(e){
							
							if($(this).parent().parent().parent().hasClass("s-mblock-up")){
							 $(this).parent().parent().parent().removeClass("s-mblock-up");
							}
							else{
							$(this).parent().parent().parent().addClass('s-mblock-up');}
			});
			$(".nav-icon").bind("click",openFlowView);		
			$(".nav-text").bind("click",openClick);							
			$(".h-words").bind("click",openClick);
		});

function openFlowView(e)
{
	$this = $(this);
								var processDefId=	$this.attr("processDefId");
								if(processDefId){
									showFlowView(processDefId);
								}
}

function openClick(e)
{
		$this = $(this);
								var processDefId = $this.attr("processDefId");
								var processDefName = $this.attr("title");
								if (processDefId) {
								var window = nui.get("#window");
									window.setTitle("<b:message key='create'/>"
											+ $this.text()
													+ "<b:message key='task'/>");
									window
											.load("com.cgn.components.coframe.taskcenter.task.flow?processDefId="
													+ processDefId+"&processDefName="+processDefName);
									window.show();
								}
								return false;
	
}

		function showFlowView(id) {
			$("#chart-frame").attr(
					"src",
					"com.cgn.components.coframe.taskcenter.flowchart.flow?processDefName="
							+ id + "&contextPath=" + _CONTEXT_PATH);
			nui.get("#chart-dialog").show();
		}
		
		function LinkClickFunction(obj){
			if($(obj).hasClass("sd_sn")){
				$(".search_nav").hide();
				$(".search_result").fadeOut(1000);
				$("#s_ctner_contents").show();
				$("#ccbPage1").show();
			}
			else{
				$(".search_nav").show();
				$("#s_ctner_contents").hide();
				$("#ccbPage1").hide();
			}
		}
		
		function addFavorite(obj, id) {
			if ($(obj).attr("title") == "取消收藏") {
				$(obj).attr('title', '收藏').addClass('add-flow-icon')
						.removeClass('remove-flow-icon');
			} else {
				$(obj).attr('title', '取消收藏').addClass('remove-flow-icon')
						.removeClass('add-flow-icon');
			}

		}
		
		
		function searchFlow()
		{
		if($("input[name='q']").val()==""){
			nui.alert("请输入关键字");
			return;
		}
		var loading=nui.loading("正在搜索中。。。", '');	
		var data = {searchkey: $("input[name='q']").val()};
		nui.ajax({
				    url: "com.cgn.components.coframe.taskcenter.BusinessCatalog.SearchFlowCataLog.biz.ext",
				    data:data,
				    type: "post",
	                contentType:"text/json",
	                success: function (data) {
		                nui.hideMessageBox(loading);
		                $(".search_result").fadeIn(1000);
		                $(".search_content").empty();
				if(data.list&&data.list.length>0){
				 $(".inner").hide();
				  for (var i = 0; i < data.list.length; i++) {
				    var file = data.list[i];
		                var div= $('<div></div>');
		                div.addClass("search-nav-item");
		                var a= $('<a></a>');
		                 a.attr("target","_blank");
		                 var img= $('<img></img>');
		                 img.addClass("search-nav-icon");
		                 img.attr("processDefId",file.id);
		                 img.attr("height","16");
		                 img.attr("width","16");
		                 img.attr("src","taskcenter/media/images/processinstance.gif");
		                 img.bind("click",openFlowView);
		                var divText=$('<div></div>');
		                 divText.addClass("search-nav-text");
		                 divText.attr("title",file.text);
		                 divText.attr("processDefId",file.id);
		                 divText.bind("click",openClick);
		                 var span=$('<span></span>');
		                 span.html(file.text);
		                 divText.append(span);
		                 a.append(img);
		                 a.append(divText);
		                 div.append(a);
		                 $(".search_content").append(div);
		                }
		            }else{
		              $(".h").html($("input[name='q']").val());
		              $(".inner").show();
		            }
	                },
	                error: function (jqXHR, textStatus, errorThrown) {
	                nui.alert(jqXHR.responseText);
	                }
	            });
		}
		
		function searchKeyUp()
		{
			var code = event.keyCode;
			if(code == 13){
				searchFlow();
			}
			return;
		}
	</script>
</body>
</html>