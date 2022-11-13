package com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.impl;

import java.io.IOException;

import com.cgn.itmp.basecommon.FileUtil;
import com.cgn.itmp.inspectcomponentmanage.inspecomponentmenutree.equipmentbaseinformation.EquipmentbaseinformationI;
import com.eos.system.annotation.Bizlet;



public class EquipmentbaseinformationImp implements EquipmentbaseinformationI {
	
	/**
	 * 多文件上传暂行方法
	 */
	@Bizlet
	public String[] getFj(String filepath1, String filename1, String filepath2,
			String filename2, String filepath3, String filename3,
			String filepath4, String filename4, String filepath5,
			String filename5) throws IOException {
		// TODO 自动生成的方法存根
		
		FileUtil fUtil=new FileUtil();
		String[] s=new String[5];
		if (null!=filepath1&&!"".equals(filepath1)) {
			String eommfile = fUtil.uploadFile(filepath1,filename1);
			s[0]=eommfile;
		}
		if (null!=filepath2&&!"".equals(filepath2)) {
			String sdfile = fUtil.uploadFile(filepath2,filename2);
			s[1]=sdfile;
		}
		if (null!=filepath3&&!"".equals(filepath3)) {
			String euqipmentgraph = fUtil.uploadFile(filepath3,filename3);
			s[2]=euqipmentgraph;
		}
		if (null!=filepath4&&!"".equals(filepath4)) {
			String quiaxedgraph = fUtil.uploadFile(filepath4,filename4);
			s[3]=quiaxedgraph;
		}
		if (null!=filepath5&&!"".equals(filepath5)) {
			String eomrfile = fUtil.uploadFile(filepath5,filename5);
			s[4]=eomrfile;
		}
		
		if(s.length<=0){
		
		return null;
		}else{
			return s;
		}
	}
}
