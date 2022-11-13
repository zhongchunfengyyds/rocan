//整个日历相当于有两个图层
//一个是fc-content 为事件层（横轴），浮动在上方
//一个是fc-bg 为日历层（竖轴），在事件层下面
var a = moment.duration(13, 'M');
var b = moment.duration(1, 'M');
a.subtract(b).days();
var proData = new Array();
//新增事件
var flag = true;
//function getData() {
//	rlInfo();
//};
function rlInfo(){
	var backgroundColor = "";
	var borderColor = "";
//	var jdArray = getCookie('jdArray');
	var data = {};
	data.jdArray = jdManagerArray.join(',');
	var json = nui.encode(data);
	
	$.ajax({
		url : 'com.cgn.itmp.dailyandoverhaul.overhaul.OverhaulCalendar.dxrlList.biz.ext',
		type : 'post',
		cache:false,
		async:false, 
		 data:json,
	    contentType:'text/json',
		success : function(text) {
			var res=text.result;
			if(res!=null&&res !=""){
				
				 for(var i=0; i< res.length; i++){
					 var startt=nui.parseDate(res[i].startTime, "yyyy-MM-dd");
					 var edtt=nui.parseDate(res[i].endTime, "yyyy-MM-dd");
					 var dxzt = "";
	//				 if(dxzt == '正在进行的大修'){
	//					 backgroundColor ="#00a1e5";
	//					 borderColor = "#88AC3F";
	//				 }else if(dxzt == '正在准备的大修'){
	//					 backgroundColor ="#ffd600";
	//					 borderColor = "#88AC3F";
	//				 }else {	
	//					 backgroundColor ="#83bc15";
	//					 borderColor = "#88AC3F";
	//				 }
					 var date =new Date();
					 if(date>startt && date<edtt){
						 backgroundColor ="#00a1e5";
						 borderColor = "#88AC3F";
						 dxzt="正在进行的大修";
					 }else if(startt > date){
						 backgroundColor ="#ffd600";
						 borderColor = "#88AC3F";
						 dxzt="正在准备的大修";
					 }else if(date > edtt){
						 backgroundColor ="#83bc15";
						 borderColor = "#88AC3F";
						 dxzt="已完成的大修";
					 }
					 proData.push({
							resourceId : res[i].name,
							title : res[i].xh,
							start : res[i].startTime,
							end : res[i].endTime,
							dxgq : res[i].dxgq,
							dxzt : dxzt,
							backgroundColor :backgroundColor,
							borderColor : borderColor
					});
	              
			}
				 loadCalendar(proData);
		}
		}
	});
}
function loadCalendar(proData) {
$('.testContain').fullCalendar({
    header: {
      left: '',
      center: '',
      right: 'prevYear,title,nextYear'
    },
    defaultView: 'thisYear',//默认展示的类型名
    views: {
      timelineDay: {
        buttonText: ':15 slots',
        slotDuration: '00:15'
      },
      timelineTenDay: {
        type: 'timeline',
        duration: { days: 10 }
      },
	  timelineYear : {
		//slotDuration: moment.duration(1, 'months')
	  },
	  thisYear : {//自定义类型
		type: 'timeline',//展示类型
		slotDuration: moment.duration(1, 'months'),//单元格最小时间间隔
        duration: { years: 1 }, //需要展示的时间长度
        buttonText:"今年"
	  }
    },
    monthNames: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
    monthNamesShort: ["1月", "2月", "3月", "4月", "5月", "6月", "7月", "8月", "9月", "10月", "11月", "12月"],
    editable: false,
    navLinks: true,
    businessHours: true,
	events : proData,
	eventMouseover:function(event,jsEvent,view){
		var stime=format(event.start, 'yyyy-MM-dd');
		var etime=format(event.end, 'yyyy-MM-dd');
			$(".time").remove();
			var html2 = $("<a href='#' onclick='addTab(\""+event.title+"\")'><div class='time' style='display:block'><ul class='uul'><li>大修轮次："+event.title+"</li><li id='dxzt'>大修状态："+event.dxzt+"</li><li>开始时间：" + stime + "</li><li>结束时间：" + etime + "</li><li>大修工期：" + event.dxgq + "</li></ul></div></a>");
			$(this).append(html2);
			var screen = document.body.clientWidth;
			var tipW = $(this)[0].offsetWidth;
			var tipH = $(this)[0].offsetHeight;
			var tipL = $(this)[0].offsetLeft;
			var screena = screen-tipW-tipL;
			if (screena >= 250|| w > 200 ) {
				$('.time').css({
					'display' : 'block',
					'position' : 'absolute',
					'top' : '0',
					'left' : '0',
				    'padding': '25px 1px 0',
				    'background': 'rgba(255,255,255,0)'
				});
				
				$('.uul').css({
					'background': '#fff',
					'padding':'7px'
				})
				/*$('.triangle-border').css({
					'position' : 'absolute',
					'left' : "20px"
				})*/
			} else {
				$('.time').css({
					'display' : 'block',
					'position' : 'absolute',
					'top' : '0',
					'left' : '-80px',
					'padding': '25px 1px 0'
				});
				
				
				/*$('.triangle-border').css({
					'position' : 'absolute',
					'right' : "50px"
				})*/
				
			}        
//			console.log($(this)[0])
	},
	eventMouseout:function(event,jsEvent,view){
		$(".time").delay(200).hide(0);
	},
	eventAfterAllRender : function(){
		/*console.log('already',jdManagerArray);*/
//		
		$('.huizhouTr,.dayawanTr,.hongyanheTr,.ningdeTr,.fangchenggangTr,.yangjiangTr,.taishanTr').css('display','none');
		$('.huizhouTr1,.dayawanTr1,.hongyanheTr1,.ningdeTr1,.fangchenggangTr1,.yangjiangTr1,.taishanTr1').css('display','none');
		for(var i = 0;i < jdManagerArray.length;i++){
			if(jdManagerArray[i] == '惠州'){
				$('.huizhouTr').css('display','table-row');
				$('.huizhouTr1').css('display','table-row');
			}
			if(jdManagerArray[i] == '大亚湾'){
				$('.dayawanTr').css('display','table-row');
				$('.dayawanTr1').css('display','table-row');
			}
			if(jdManagerArray[i] == '红沿河'){
				$('.hongyanheTr').css('display','table-row');
				$('.hongyanheTr1').css('display','table-row');
			}
			if(jdManagerArray[i] == '宁德'){
				$('.ningdeTr').css('display','table-row');
				$('.ningdeTr1').css('display','table-row');
			}
			if(jdManagerArray[i] == '防城港'){
				$('.fangchenggangTr').css('display','table-row');
				$('.fangchenggangTr1').css('display','table-row');
			}
			if(jdManagerArray[i] == '阳江'){
				$('.yangjiangTr').css('display','table-row');
				$('.yangjiangTr1').css('display','table-row');
			}
			if(jdManagerArray[i] == '台山'){
				$('.taishanTr').css('display','table-row');
				$('.taishanTr1').css('display','table-row');
			}
		}
		
		
		
		$('.fc-event-container>a').each(function(k,ele){
//			 console.log('ele',ele,$(ele).find('.fc-title').text(),jdManagerArray[i]);
			//console.log($(ele).find('.fc-title').text()[0]);
			var jzname=$(ele).find('.fc-title').text().substr(0,2);
			var top = jzManagerArray.indexOf(jzname);
			ele.style.top = top*24 + "px";
			});
			
			
	}
	
  	});
}
var format = function(time, format){
    var t = new Date(time);
    var tf = function(i){return (i < 10 ? '0' : '') + i};
    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
        switch(a){
            case 'yyyy':
                return tf(t.getFullYear());
                break;
            case 'MM':
                return tf(t.getMonth() + 1);
                break;
            case 'mm':
                return tf(t.getMinutes());
                break;
            case 'dd':
                return tf(t.getDate());
                break;
            case 'HH':
                return tf(t.getHours());
                break;
            case 'ss':
                return tf(t.getSeconds());
                break;
        }
    })
}


function addTab(e) {
         var tabs = parent.parent.nui.get("mainTabs");
         var tab = { title: "大修日历详情", url: '/itmp/overhaul/OverhaulCalendar/CalendarForm.jsp?proData='+JSON.parse(JSON.stringify(e)), showCloseButton: true };
         tab = tabs.addTab(tab);            
	     tabs.activeTab(tab);
    }



