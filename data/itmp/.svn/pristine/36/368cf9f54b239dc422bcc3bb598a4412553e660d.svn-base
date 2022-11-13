package com.cgn.itmp.inspectcomponentmanage.pipelayout;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.eos.common.config.ConfigurationFactory;
import com.eos.das.entity.IDASCriteria;
import com.eos.das.entity.criteria.CriteriaType;
import com.eos.foundation.PageCond;
import com.eos.foundation.common.lang.DateUtil;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.eos.spring.DASDaoSupport;
import com.primeton.ext.infra.security.BASE64Decoder;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.cgn.itmp.inspectcomponentmanage.pipelayout.Pipelayout;

import commonj.sdo.DataObject;

/**
 * <pre>
 * Title: 程序的中文名称
 * Description: 程序功能的描述
 * </pre>
 * 
 * @author littlebear (mailto:service6@primeton.com)
 * @version 1.00.00
 * 
 */
@SuppressWarnings("all")
public class PipelayoutService extends DASDaoSupport implements
		IPipelayoutService {
	public void addPipelayout(Pipelayout pipelayout) {
		getDASTemplate().getPrimaryKey(pipelayout);
		getDASTemplate().insertEntity(pipelayout);
	}

	public void deletePipelayouts(Pipelayout[] pipelayouts) {
		for (DataObject pipelayout : pipelayouts) {
			getDASTemplate().deleteEntityCascade(pipelayout);
		}
	}

	public void getPipelayout(Pipelayout pipelayout) {
		getDASTemplate().expandEntity(pipelayout);
	}

	public Pipelayout[] queryPipelayouts(CriteriaType criteriaType,PageCond pageCond) {
		IDASCriteria dasCriteria = getDASTemplate().criteriaTypeToDASCriteria(criteriaType);
		return getDASTemplate().queryEntitiesByCriteriaEntityWithPage(Pipelayout.class, dasCriteria, pageCond);
	}

	public void updatePipelayout(Pipelayout pipelayout) {
		getDASTemplate().updateEntity(pipelayout);
	}
	/**
	 * 导入前判断是否存在
	 * @param dataObject
	 * @return
	 */
	public JSONObject getPilelayout(DataObject obj) {
		JSONObject jsonobj = new JSONObject();
		Map map = new HashMap();
		map.put("model",obj.get("model"));
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPilelayout";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		if(db.length>0){
			jsonobj.put("flag", true);
		}else{
			jsonobj.put("flag", false);
		}
		return jsonobj;
	}
	/**
	 * 删除当前蒸发器基础数据
	 * @param obj
	 * @return
	 */
	public JSONObject dellayout(DataObject obj) {
		JSONObject jsonobj = new JSONObject();
		Map map = new HashMap();
		map.put("model",obj.get("model"));
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.dellayout";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class, sql, map);
		jsonobj.put("flag", true);
		return jsonobj;
	}
	
	/**
	 * 获取跟踪管
	 * 
	 * @param trackArr
	 * @return
	 */
	public JSONArray getTrackPipePoint(JSONArray[] trackArr,DataObject dataObject) {
		JSONObject pipeSolidData = setPipeData("#ba00fd", "跟踪管");// 实心点-黑色
		JSONObject pipeHollowData = setPipeData("#2e8286", "空管");// 空心点
		JSONArray arr = new JSONArray();
		List list = JSONObject.parseArray(JSONObject.toJSONString(trackArr).replace("\"", ""));
		if (!dataObject.getString("jd").equals("86")) {
			// 拼接图表数据
			List allArrHollow = new ArrayList();// 空心点-全部管束
			allArrHollow = getAllPilePoint(dataObject);//获取全部管束
			allArrHollow.removeAll(getBlankPipePoint(dataObject));//从全部管束中去除被遮挡部分管束
			allArrHollow.removeAll(list);// 从全部管束中去除跟踪管
			// 将基础数据和坐标拼接
			pipeSolidData.put("data", list);// 添加跟踪管
			pipeHollowData.put("data", allArrHollow);// 空心
			arr.add(pipeSolidData);
			arr.add(pipeHollowData);
		} else {
			List anchorPpoint = new ArrayList();// 实心点-红色 锚点
			List sePer_a = new ArrayList();// 实心点-红色 锚点
			List sePer_b = new ArrayList();// 实心点-红色 锚点
			
			JSONObject anchorPpointData = setPipeData("#ff6e6e", "锚点");// 锚点
			JSONObject sePer_aData = setPipeData("#0027ff", "次外围两圈50%（A类）");// 次外围两圈50%（A类）_外围抽样
			JSONObject sePer_bData = setPipeData("#ff0000", "次外围两圈50%（B类）");// 次外围两圈50%（B类）_外围抽样
			
			
			List allArrHollow = new ArrayList();// 空心点-全部管束
			allArrHollow = getAllPilePoint(dataObject);//获取全部管束
			pipeHollowData.put("data", allArrHollow);// 空心
			
			anchorPpoint = getPipepointByInfo(dataObject,"锚点");//获取锚点
			allArrHollow.removeAll(anchorPpoint);//从全部管束中去除锚点
			anchorPpoint.removeAll(list);// 去除跟踪管
			sePer_a = getPipepointByInfo(dataObject,"次外围两圈50%（A类）_外围抽样");
			allArrHollow.removeAll(sePer_a);//从全部管束中去除次外围两圈50%（A类）_外围抽样
			sePer_a.removeAll(list);// 去除跟踪管
			sePer_b = getPipepointByInfo(dataObject,"次外围两圈50%（B类）_外围抽样");
			allArrHollow.removeAll(sePer_b);//从全部管束中去除次外围两圈50%（B类）_外围抽样
			sePer_b.removeAll(list);// 去除跟踪管
			allArrHollow.removeAll(list);//从全部管束中去除跟踪管
			anchorPpointData.put("data", anchorPpoint);//锚点
			sePer_aData.put("data", sePer_a);//次外围两圈50%（A类）_外围抽样
			sePer_bData.put("data", sePer_b);//次外围两圈50%（B类）_外围抽样
			pipeSolidData.put("data", list);// 添加跟踪管
			arr.add(pipeSolidData);
			arr.add(anchorPpointData);//锚点
			arr.add(sePer_aData);//次外围两圈50%（A类）_外围抽样
			arr.add(sePer_bData);//次外围两圈50%（B类）_外围抽样
			arr.add(pipeHollowData);
		}
		return arr;
	}

	/**
	 * 根据传递信息查询管板坐标和抽检方式 所有抽检方法分开写，后期有改动方便维护
	 * 
	 * @return statisticstype
	 * steamGeneratorModel
	 */
	public JSONArray getPipePoint(DataObject dataObject) {
		String statisticstype = dataObject.getString("statisticstype");
		JSONArray arr = new JSONArray();
		List allArrSolid = new ArrayList();// 实心点-黑色
		List allArrHollow = new ArrayList();// 空心点-全部管束
		
		List anchorPpoint = new ArrayList();// 实心点-红色 锚点
		List sePer_a = new ArrayList();// 实心点-红色 锚点
		List sePer_b = new ArrayList();// 实心点-红色 锚点

		if (!dataObject.getString("jd").equals("86")) {
			allArrSolid.addAll(getPilePointByVal(dataObject));
		} else {
			allArrSolid.addAll(getPilePointByValTS(dataObject));// 台山地区
			anchorPpoint = getPipepointByInfo(dataObject,"锚点");//获取锚点
			sePer_a = getPipepointByInfo(dataObject,"次外围两圈50%（A类）_外围抽样");
			sePer_b = getPipepointByInfo(dataObject,"次外围两圈50%（B类）_外围抽样");
		}

		allArrSolid = removeDuplicate(allArrSolid);
		allArrHollow = getAllPilePoint(dataObject);// 获取全部管束
		allArrHollow = removeDuplicate(allArrHollow);

		// 拼接图表数据
		JSONObject pipeSolidData = setPipeData("#000", "被检查");// 实心点-黑色
		JSONObject pipeHollowData = setPipeData("#2e8286", "空管");// 空心点
		
		JSONObject anchorPpointData = setPipeData("#ff6e6e", "锚点");// 锚点
		JSONObject sePer_aData = setPipeData("#0027ff", "次外围两圈50%（A类）");// 次外围两圈50%（A类）_外围抽样
		JSONObject sePer_bData = setPipeData("#ff004f", "次外围两圈50%（B类）");// 次外围两圈50%（B类）_外围抽样

		allArrHollow.removeAll(getBlankPipePoint(dataObject));// 从全部管束中去除被遮挡部分管束
		allArrSolid.removeAll(getBlankPipePoint(dataObject));// 从抽检管束中去除被遮挡部分管束
		allArrHollow.removeAll(allArrSolid);// 从全部管束中去除被抽检的数据

		// 将基础数据和坐标拼接
		pipeSolidData.put("data", allArrSolid);// 实心
		if(dataObject.getString("statisticstype").equals("全部100%")){
			pipeHollowData = setPipeData("#000", "被检查");// 实心点-黑色
			pipeHollowData.put("data", allArrHollow);// 空心
		}else{
			pipeHollowData = setPipeData("#2e8286", "空管");// 空心点
			pipeHollowData.put("data", allArrHollow);// 空心
			
		}
		if (dataObject.getString("jd").equals("86")) {
			anchorPpointData.put("data", anchorPpoint);//锚点
			sePer_aData.put("data", sePer_a);//次外围两圈50%（A类）_外围抽样
			sePer_bData.put("data", sePer_b);//次外围两圈50%（B类）_外围抽样
		}
		arr.add(pipeSolidData);
		arr.add(pipeHollowData);
		if (dataObject.getString("jd").equals("86")) {
			arr.add(anchorPpointData);//锚点
			arr.add(sePer_aData);//次外围两圈50%（A类）_外围抽样
			arr.add(sePer_bData);//次外围两圈50%（B类）_外围抽样
		}
		return arr;
	}

	/**
	 * 根据传值获取管束(1/8抽检、最外围、泥渣区)
	 * 
	 * @return
	 */
	public List getPilePointByVal(DataObject dboj) {
		String statisticstype = dboj.getString("statisticstype");
		String[] stype = statisticstype.split("\\＋");
		List arr = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		for (int i = 0; i < stype.length; i++) {
			if (stype[i].contains("移位")) {
				String num = getNum(stype[i]);
				if (statisticstype.contains("泥渣区")) {
					arr.addAll(getSludgeArea(num, dboj));
				} else {
					arr.addAll(getOneEight(num, dboj));
				}
			} else {
				Map map = new HashMap();
				map.put("statisticstype", stype[i]);
				map.put("MODEL", dboj.getString("model"));
				DataObject[] db = getDASTemplate().queryByNamedSql(
						DataObject.class, sql, map);
				for (int K = 0; K < db.length; K++) {
					JSONArray ar = new JSONArray();
					DataObject dataObject = db[K];
					if (dataObject.get("x") == null
							|| dataObject.get("y") == null) {
						break;
					} else {
						ar.add(Integer.parseInt(dataObject.get("x").toString()));
						ar.add(Integer.parseInt(dataObject.get("y").toString()));
						arr.add(ar);
					}
				}
			}
		}
		return arr;
	}

	/**
	 * 根据传值获取管束(1/8抽检、最外围、泥渣区)台山地区
	 * 
	 * @return
	 */
	public List getPilePointByValTS(DataObject dboj) {
		String statisticstype = dboj.getString("statisticstype");
		String[] stype = statisticstype.split("\\＋");
		List arr = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		for (int i = 0; i < stype.length; i++) {
			if (stype[i].contains("抽检")) {
				String num = getNumts(stype[i]);
				if (statisticstype.contains("泥渣区")) {
					arr.addAll(getSludgeArea(num, dboj));
				} else {
					arr.addAll(getOneEightts(num, dboj));
				}
			} else {
				Map map = new HashMap();
				map.put("statisticstype", stype[i]);
				map.put("jd", dboj.getString("jd"));
				map.put("MODEL", dboj.getString("model"));
				DataObject[] db = getDASTemplate().queryByNamedSql(
						DataObject.class, sql, map);
				for (int K = 0; K < db.length; K++) {
					JSONArray ar = new JSONArray();
					DataObject dataObject = db[K];
					if (dataObject.get("x") == null
							|| dataObject.get("y") == null) {
						break;
					} else {
						ar.add(Integer.parseInt(dataObject.get("x").toString()));
						ar.add(Integer.parseInt(dataObject.get("y").toString()));
						arr.add(ar);
					}
				}
			}
		}
		return arr;
	}

	/**
	 * 获取全部管束（不包含被去除部分）
	 * 
	 * @return
	 */
	public List getAllPilePoint(DataObject dboj) {
		Map map = new HashMap();
		map.put("statisticstype", "全部管束&八分之一抽样点");
		map.put("jd", dboj.getString("jd"));
		map.put("MODEL", dboj.getString("model"));
		List allArr = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		// 获取全部管束
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			if (dataObject.get("linenum") == null
					|| dataObject.get("all_start") == null
					|| dataObject.get("all_end") == null) {
				break;
			} else {
				int linenum = Integer.parseInt(dataObject.get("linenum")
						.toString());
				int startPoint = Integer.parseInt(dataObject.get("all_start")
						.toString());
				int endPoint = Integer.parseInt(dataObject.get("all_end")
						.toString());
				int x = 0;
				for (int i = 0; i < endPoint; i++) {
					if (dboj.getString("jd").equals("86")) {
						// 台山地区
						if (x >= endPoint) {
						} else {
							x = startPoint + i;
							JSONArray ar = new JSONArray();
							if (1 <= linenum && linenum <= 12 && x >= 67 && x <= 71) {

							} else {
								if (linenum % 2 != 0) {
									if (x % 2 == 0) {
										ar.add(x);// 行
										ar.add(linenum);// 列
										allArr.add(ar);
									}
								} else {
									if (x % 2 != 0) {
										ar.add(x);// 行
										ar.add(linenum);// 列
										allArr.add(ar);
									}
								}
							}

						}
					} else {
						// 非台山地区
						if (x >= endPoint) {
						} else {
							x = startPoint + i;
							JSONArray ar = new JSONArray();
							ar.add(x);// 行
							ar.add(linenum);// 列
							allArr.add(ar);
						}
					}
				}
			}
		}
		return allArr;
	}

	/**
	 * 去除遮挡区域
	 * 
	 * @param arrList
	 * @return
	 */
	public List getBlankPipePoint(DataObject dboj) {
		Map map = new HashMap();
		map.put("statisticstype", "遮挡区");
		map.put("jd", dboj.getString("jd"));
		map.put("MODEL", dboj.getString("model"));
		List list = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			if (dataObject.get("x") == null || dataObject.get("y") == null) {

			} else {
				int x = Integer.parseInt(dataObject.get("x").toString());
				int y = Integer.parseInt(dataObject.get("y").toString());
				JSONArray arList = new JSONArray();
				arList.add(x);
				arList.add(y);
				list.add(arList);
			}
		}
		return list;
	}
	/**
	 * 根据条件获取点
	 * 
	 * @param arrList
	 * @return
	 */
	public List getPipepointByInfo(DataObject dboj,String pipetype) {
		Map map = new HashMap();
		map.put("statisticstype", pipetype);
		map.put("jd", dboj.getString("jd"));
		map.put("MODEL", dboj.getString("model"));
		List list = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			if (dataObject.get("x") == null || dataObject.get("y") == null) {

			} else {
				int x = Integer.parseInt(dataObject.get("x").toString());
				int y = Integer.parseInt(dataObject.get("y").toString());
				JSONArray arList = new JSONArray();
				arList.add(x);
				arList.add(y);
				list.add(arList);
			}
		}
		return list;
	}

	/**
	 * 获取八分之一抽样
	 * 
	 * @param arrList
	 * @return
	 */
	public List getOneEight(String str, DataObject dboj) {
		Map map = new HashMap();
		map.put("statisticstype", "全部管束&八分之一抽样点");
		map.put("jd", dboj.getString("jd"));
		map.put("MODEL", dboj.getString("model"));
		List allArr = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		// 获取八分之一抽样点
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, map);
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			if (dataObject.get("linenum") == null|| dataObject.get("eight" + str + "_start") == null|| dataObject.get("all_end") == null) {
			} else {
				int linenum = Integer.parseInt(dataObject.get("linenum").toString());
				int startPoint = Integer.parseInt(dataObject.get("eight" + str + "_start").toString());
				int endPoint = Integer.parseInt(dataObject.get("all_end").toString());
				int loop = 0;
				for (int j = 0; j <= (endPoint / 8); j++) {
					List ar = new ArrayList();
					loop = loop + 8;
					if (j == 0) {
						loop = loop - 8;
						ar.add(startPoint);
						ar.add(linenum);
					} else {
						if (startPoint + loop <= endPoint) {
							ar.add(startPoint + loop);
							ar.add(linenum);
						} else {
							break;
						}
					}
					allArr.add(ar);
				}
			}
		}
		return allArr;
	}
	
	/**
	 * 台山获取八分之一抽样
	 * 
	 * @param arrList
	 * @return
	 */
	public List getOneEightts(String str, DataObject dboj) {
		Map map = new HashMap();
		map.put("statisticstype", "全部管束&八分之一抽样点");
		map.put("jd", dboj.getString("jd"));
		map.put("MODEL", dboj.getString("model"));
		List allArr = new ArrayList();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		// 获取八分之一抽样点
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,sql, map);
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			if (dataObject.get("linenum") == null|| dataObject.get("eight" + str + "_start") == null|| dataObject.get("all_end") == null) {
			} else {
				int linenum = Integer.parseInt(dataObject.get("linenum").toString());
				int startPoint = Integer.parseInt(dataObject.get("eight" + str + "_start").toString());
				int endPoint = Integer.parseInt(dataObject.get("all_end").toString());
				int loop = 0;
				for (int j = 0; j <= (endPoint / 8); j++) {
					List ar = new ArrayList();
					loop = loop + 8;
					if (j == 0) {
						loop = loop - 8;
						ar.add(startPoint);
						ar.add(linenum);
					} else {
						if (dboj.getString("jd").equals("86")&&1 <= linenum && linenum <= 12 && startPoint + loop >= 67 && startPoint + loop <= 71) {
						}else{
							if (startPoint + loop <= endPoint) {
								ar.add(startPoint + loop);
								ar.add(linenum);
							} else {
								break;
							}
						}
					}
					allArr.add(ar);
				}
			}
		}
		return allArr;
	}

	/**
	 * 获取泥渣区
	 * 
	 * @param str
	 * @return
	 */
	public List getSludgeArea(String str, DataObject dboj) {
		Map map = new HashMap();
		map.put("statisticstype", "泥渣区");
		map.put("jd", dboj.getString("jd"));
		map.put("MODEL", dboj.getString("model"));
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getPipePoint";
		// 获取泥渣区
		DataObject[] dbSludgeArea = getDASTemplate().queryByNamedSql(
				DataObject.class, sql, map);
		DataObject dataSludgeArea = dbSludgeArea[0];
		// 确定泥渣区的两组坐标
		int y1 = Integer.parseInt(dataSludgeArea.get("y1").toString());
		int x1 = Integer.parseInt(dataSludgeArea.get("x1").toString());
		int y2 = Integer.parseInt(dataSludgeArea.get("y2").toString());
		int x2 = Integer.parseInt(dataSludgeArea.get("x2").toString());

		List allArr = new ArrayList();
		// 获取八分之一抽样点
		Map emap = new HashMap();
		emap.put("statisticstype", "全部管束&八分之一抽样点");
		emap.put("MODEL", dboj.getString("model"));
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, emap);
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			if (dataObject.get("linenum") == null
					|| dataObject.get("eight" + str + "_start") == null
					|| dataObject.get("all_end") == null) {
			} else {
				int linenum = Integer.parseInt(dataObject.get("linenum")
						.toString());
				int startPoint = Integer.parseInt(dataObject.get(
						"eight" + str + "_start").toString());
				int endPoint = Integer.parseInt(dataObject.get("all_end")
						.toString());
				// 泥渣区列范围内
				if (linenum >= y2 && linenum <= y1) {
					int loop = 0;
					for (int j = 0; j <= (endPoint / 8); j++) {
						List ar = new ArrayList();
						loop = loop + 8;
						if (startPoint + loop <= endPoint) {
							// 泥渣区行范围内
							if (startPoint + loop >= x1
									&& startPoint + loop <= x2) {
								ar.add(startPoint + loop);
								ar.add(linenum);
							} else {
							}
						} else {
							break;
						}
						allArr.add(ar);
					}
				}
			}
		}

		return allArr;
	}

	/**
	 * 设置图表基数据
	 * 
	 * @return
	 */
	public JSONObject setPipeData(String color, String pipeType) {
		JSONObject pipeData = new JSONObject();
		pipeData.put("symbolSize", 9);// 点大小
		pipeData.put("name", pipeType);// 名称对应图例
		pipeData.put("type", "scatter");// 类型

		JSONObject normal = new JSONObject();
		// normal.put("shadowBlur", "5");//阴影大小
		// normal.put("shadowColor", "rgba(0, 0, 0, 0.5)");//阴影颜色
		// normal.put("shadowOffsetY", "5");//阴影方向
		normal.put("color", color);// 点颜色

		pipeData.put("itemStyle", normal);// 颜色
		return pipeData;
	}

	/**
	 * 取出字符串中的数字
	 * 
	 * @param str
	 * @return
	 */
	public String getNum(String str) {
		String regEx = "[^0-9]";
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(str);
		return m.replaceAll("").trim();
	}

	/**
	 * 台山取出第几轮次大修
	 * 
	 * @param str
	 * @return
	 */
	public String getNumts(String str) {
		String st = "";
		String num = "";
//		String regex = "第(.*)次";
		String regex = "顺序(.*)抽检";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		while (matcher.find()) {
			st = matcher.group(1);
		}
		if(st.equals("1")){
			num = "0";
		}else if(st.equals("2")){
			num = "1";
		}else if(st.equals("3")){
			num = "2";
		}else if(st.equals("4")){
			num = "3";
		}else if(st.equals("5")){
			num = "4";
		}else if(st.equals("6")){
			num = "5";
		}else if(st.equals("7")){
			num = "6";
		}else if(st.equals("8")){
			num = "7";
		}
		return num;
	}

	/**
	 * 将base64转为图片 data:image/png;base64,
	 * 
	 * @param base64Pic
	 * @return
	 * @throws IOException
	 */
	public String dowImage(String base64Pic, String imgName) throws IOException {
		String flag;
		base64Pic = base64Pic.replaceAll("data:image/png;base64,", "").replaceAll("＋", "+");
		BASE64Decoder decoder = new BASE64Decoder();
//		String imgFilePath = "D://upload//" + imgName;
		try {
			byte[] b = decoder.decodeBuffer(base64Pic);
			for (int i = 0; i < b.length; ++i) {
				if (b[i] < 0) {
					b[i] += 256;
				}
			}
			Configuration config=ConfigurationFactory.getUserConfiguration();
			Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
			String FILE_UPLOAD_PATH=fileGroup.getConfigValue("FILE_PATH");
			
			String tempPath = DateUtil.getSysDateString("yyyy")+File.separator+DateUtil.getSysDateString("MM")+File.separator;
			String filePath = FILE_UPLOAD_PATH+imgName;
			
			// 生成图片
			OutputStream out = new FileOutputStream(filePath);
			out.write(b);
			out.flush();
			out.close();
			flag = filePath;
		} catch (Exception e) {
			flag = "";
		}
		return flag;
	}

	/**
	 * 获取导入手动选取管
	 * @return
	 */
	public JSONArray getImportManual() {
		JSONArray jsonArr = new JSONArray();
		String sql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.getImportManual";
		// 获取全部管束
		DataObject[] db = getDASTemplate().queryByNamedSql(DataObject.class,
				sql, "全部管束&八分之一抽样点");
		for (int K = 0; K < db.length; K++) {
			DataObject dataObject = db[K];
			JSONArray arr = new JSONArray();
			if (dataObject.get("x") == null || dataObject.get("y") == null) {
				break;
			} else {
				int y = Integer.parseInt(dataObject.get("y").toString());
				int x = Integer.parseInt(dataObject.get("x").toString());
				arr.add(x);
				arr.add(y);
				jsonArr.add(arr);
			}
		}
		// 读取完后删除数据
		String delsql = "com.cgn.itmp.inspectcomponentmanage.pipelayout.impl.pipelayoutsql.delImportManual";
		getDASTemplate().queryByNamedSql(DataObject.class, delsql, "");
		return jsonArr;
	}

	/**
	 * 利用list的contains方法去重
	 * @param list
	 * @return
	 */
	public static ArrayList removeDuplicate(List list) {
		ArrayList tempList = new ArrayList(list.size());
		for (int i = 0; i < list.size(); i++) {
			if (!tempList.contains(list.get(i)))
				tempList.add(list.get(i));
		}
		return tempList;
	}
	/**
	 * 复制文件
	 * @param srcFilename
	 * @param destFilePath
	 * @param fileName
	 * @param doDel
	 */
	public void copyFile(String srcFilename, String destFilePath,String fileName,boolean doDel) {
		InputStream is=null;
		OutputStream os=null;
        try {
			File srcFile = new File(srcFilename);
			if (!srcFile.exists()) {
			    throw new FileNotFoundException("Cannot find the source file: " + srcFile.getAbsolutePath());
			}
			if (!srcFile.canRead()) {
			    throw new IOException("Cannot read the source file: " + srcFile.getAbsolutePath());
			}

			File destFile = new File(destFilePath);
			if (!destFile.exists()) {
				destFile.mkdirs();
			}
			is=new FileInputStream(srcFile);
			os=new FileOutputStream(new File(destFilePath+fileName));
			byte[] buffer = new byte[1024 * 4];
			int n = 0;
			while ((n = is.read(buffer)) != -1) {
				os.write(buffer, 0, n);
			}
			if(doDel){
				//保存过之后删除原文件
				srcFile.deleteOnExit();
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			if (is!=null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			if(os!=null){
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
    }
}
