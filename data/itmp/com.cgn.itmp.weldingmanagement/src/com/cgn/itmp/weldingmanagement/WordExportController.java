package com.cgn.itmp.weldingmanagement;


import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import com.eos.runtime.core.ApplicationContext;
import com.eos.system.annotation.Bizlet;

import freemarker.template.Configuration;
import freemarker.template.Template;


public class WordExportController {

    private Configuration configuration = null;

    public WordExportController() {
        configuration = new Configuration();
        configuration.setDefaultEncoding("utf-8");
    }
    //导出word
    @Bizlet
    public String createDoc() {
        // 要填入模本的数据文件
        Map dataMap = new HashMap();
        getData(dataMap);
        // 设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，  
        // 这里我们的模板是放在com.ftl包下面  
        
        try {
        	configuration.setDirectoryForTemplateLoading(new File(ApplicationContext.getInstance().getWarRealPath()+"word-model"));
		} catch (IOException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}
        Template t = null;
        
        String filePath=ApplicationContext.getInstance().getWarRealPath()
				+"temp";
        // 输出文档路径及名称
        File outFile = new File(filePath);
        if (!outFile.exists()) {
        	outFile.mkdirs();
        }
        
        Writer out = null;
        String fileName="";
        try {
            // test.ftl为要装载的模板 
            t = configuration.getTemplate("scjl.ftl");
            t.setEncoding("utf-8");
            fileName = System.currentTimeMillis()+".doc";
            String templateDir=filePath+File.separator+fileName;
            new File (templateDir).createNewFile();
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(templateDir), "utf-8"));
            t.process(dataMap, out);
            out.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "temp"+File.separator+fileName;
    }

    /**
     * 注意dataMap里存放的数据Key值要与模板中的参数相对应 
     * @param dataMap
     * 
     */
    @SuppressWarnings("unchecked")
    private void getData(Map dataMap) {
    	List<Map<String,Object>> array=new ArrayList<Map<String,Object>>();
   
    	for(int j=0;j<2;j++){
    		Map<String,Object> ma=new HashMap<String,Object>();
    		List<Map<String,Object>> newsList=new ArrayList<Map<String,Object>>();
        	for(int i=0;i<20;i++){
        		Map<String,Object> m=new HashMap<String,Object>();
        		m.put("cernumber","测试");
        		m.put("projcode","测试");
        		m.put("validdate","测试");
        		m.put("office","测试");
        		m.put("result","测试");
        		m.put("remarks","测试"); 
        		newsList.add(m);
        	}
        	ma.put("name", "进货日期"+j);
        	ma.put("operatingnumber", "产品名称"+j);
        	ma.put("job", "生产厂家"+j);
        	ma.put("items", "产品规格"+j);
            ma.put("initial", "进货数量"+j);
            ma.put("validity", "进货数量"+j);
            ma.put("review", "进货数量"+j);
            ma.put("result", "结果"+j);
            ma.put("remarks", "备注"+j);
            ma.put("title", "标题"+j);
            ma.put("down", "下标题"+j);
            ma.put("list",newsList);
            array.add(ma);
    	}
    	
    	dataMap.put("array",array);
    }    
    
    public static void main(String[] args) {
        //
    	WordExportController dh=new WordExportController();  
        dh.createDoc();  
//        System.out.println("end"); 
    }
   

}