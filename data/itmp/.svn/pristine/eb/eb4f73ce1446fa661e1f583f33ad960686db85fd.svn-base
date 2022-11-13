/**
 * 
 */
package com.cgn.itmp.basecommon;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.aspose.words.Document;
import com.aspose.words.License;
import com.aspose.words.SaveFormat;
import com.eos.runtime.core.ApplicationContext;
import com.eos.system.annotation.Bizlet;

import commonj.sdo.DataObject;
import freemarker.template.Configuration;
import freemarker.template.Template;

/**
 * @author LENOVO
 * @date 2019-09-19 16:21:51
 * 
 */
@Bizlet("")
public class WordUtil {

	private Configuration configuration = null;

	public WordUtil() {
		configuration = new Configuration();
		configuration.setDefaultEncoding("utf-8");
	}

	// 导出word "scjl.ftl"
	@Bizlet("")
	public String createDoc(String modelname, DataObject data,String title) {

		// 要填入模本的数据文件

		// getData(data);
		// 设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，
		// 这里我们的模板是放在com.ftl包下面

		try {
			configuration.setDirectoryForTemplateLoading(new File(
					ApplicationContext.getInstance().getWarRealPath()
							+ "word-model"));
		} catch (IOException e1) {
			// TODO 自动生成的 catch 块
			e1.printStackTrace();
		}
		Template t = null;
		String filePath = ApplicationContext.getInstance().getWarRealPath()
				+ "temp";
		// 输出文档路径及名称
		File outFile = new File(filePath);
		if (!outFile.exists()) {
			outFile.mkdirs();
		}

		Writer out = null;
		String fileName = "";
		try {
			// test.ftl为要装载的模板
			t = configuration.getTemplate(modelname);
			t.setEncoding("utf-8");
			fileName = title + ".doc";
			String templateDir = filePath + File.separator + fileName;
			new File(templateDir).createNewFile();
			out = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(templateDir), "utf-8"));
			t.process(data, out);
			out.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "temp" + File.separator + fileName;
	}
	
	// 导出word "scjl.ftl"
		@Bizlet("")
		public String createDocMap(String modelname, Map data,String name) {

			// 要填入模本的数据文件

			// getData(data);
			// 设置模本装置方法和路径,FreeMarker支持多种模板装载方法。可以重servlet，classpath，数据库装载，
			// 这里我们的模板是放在com.ftl包下面

			try {
				configuration.setDirectoryForTemplateLoading(new File(
						ApplicationContext.getInstance().getWarRealPath()
								+ "word-model"));
			} catch (IOException e1) {
				// TODO 自动生成的 catch 块
				e1.printStackTrace();
			}
			Template t = null;
			String filePath = ApplicationContext.getInstance().getWarRealPath()
					+ "temp";
			// 输出文档路径及名称
			File outFile = new File(filePath);
			if (!outFile.exists()) {
				outFile.mkdirs();
			}

			Writer out = null;
			String fileName = "";
			try {
				// test.ftl为要装载的模板
				t = configuration.getTemplate(modelname);
				t.setEncoding("utf-8");
				fileName = name+ ".doc";
				String templateDir = filePath + File.separator + fileName;
				new File(templateDir).createNewFile();
				out = new BufferedWriter(new OutputStreamWriter(
						new FileOutputStream(templateDir), "utf-8"));
				t.process(data, out);
				out.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			String fileFullPath = filePath + File.separator + fileName;
			String newpath = filePath + File.separator + name+".pdf";
			doc2pdf(fileFullPath,newpath);
			return name+".pdf";
		}

	/**
	 * 注意dataMap里存放的数据Key值要与模板中的参数相对应
	 * 
	 * @param dataMap
	 * 
	 */
	@SuppressWarnings("unchecked")
	private void getData(DataObject data) {
		Map<String, Object> d = new HashMap<String, Object>();
		List<Map<String, Object>> array = new ArrayList<Map<String, Object>>();
		for (int j = 0; j < 2; j++) {
			Map<String, Object> ma = new HashMap<String, Object>();
			List<Map<String, Object>> newsList = new ArrayList<Map<String, Object>>();
			for (int i = 0; i < 20; i++) {
				Map<String, Object> m = new HashMap<String, Object>();
				m.put("cernumber", "测试");
				m.put("projcode", "测试");
				m.put("validdate", "测试");
				m.put("office", "测试");
				m.put("result", "测试");
				m.put("remarks", "测试");
				newsList.add(m);
			}
			ma.put("name", "进货日期" + j);
			ma.put("operatingnumber", "产品名称" + j);
			ma.put("job", "生产厂家" + j);
			ma.put("items", "产品规格" + j);
			ma.put("initial", "进货数量" + j);
			ma.put("validity", "进货数量" + j);
			ma.put("review", "进货数量" + j);
			ma.put("result", "结果" + j);
			ma.put("remarks", "备注" + j);
			ma.put("title", "标题" + j);
			ma.put("down", "下标题" + j);
			ma.put("list", newsList);
			array.add(ma);
		}

		d.put("array", array);
	}

	// public static void main(String[] args) {
	// //
	// WordUtil dh=new WordUtil();
	// dh.createDoc();
	// System.out.println("end");
	// }

	public static void main(String[] args) {
		
		 String filePaths="F://findbugs插件集成及使用.docx";

        String pdfPath="F://findbugs插件集成及使用.pdf";

        doc2pdf(filePaths,pdfPath);
	}
	
	//获取到word 转成pdf得相应配置
	public static boolean getLicense() {
       boolean result = false;  
       try {  
       	//获取到licese得路径
       	InputStream is = new FileInputStream(new File(ApplicationContext.getInstance().getWarRealPath()+"license.xml")); // license.xml应放在..\WebRoot\WEB-INF\classes路径下
    	   //InputStream is = new FileInputStream(new File("D://EOS/apache-tomcat-7.0.54/webapps/itmp/license.xml")); // license.xml应放在..\WebRoot\WEB-INF\classes路径下
           License aposeLic = new License();  
           aposeLic.setLicense(is);  
           result = true;  
       } catch (Exception e) {
           e.printStackTrace();  
       }  
       return result;  
   }  
 
	/**
	 * 
	 * @param word路径
	 * @param 生成pdf得路径
	 * @return
	 * swh
	 * word转成pdf
	 */
   public static boolean doc2pdf(String inPath, String outPath) {
       if (!getLicense()) { // 验证License 若不验证则转化出的pdf文档会有水印产生  
           return false;  
       }
       FileOutputStream os = null;
       try {  
           long old = System.currentTimeMillis();
           File file = new File(outPath); // 新建一个空白pdf文档
           os = new FileOutputStream(file);
           Document doc = new Document(inPath); // Address是将要被转化的word文档  
           doc.save(os, SaveFormat.PDF);// 全面支持DOC, DOCX, OOXML, RTF HTML, OpenDocument, PDF,  
                                        // EPUB, XPS, SWF 相互转换  
           long now = System.currentTimeMillis();
           System.out.println("pdf转换成功，共耗时：" + ((now - old) / 1000.0) + "秒"); // 转化用时
       } catch (Exception e) {
           e.printStackTrace();
           return false;
       }finally {
           if (os != null) {
               try {
                   os.flush();
                   os.close();
               } catch (IOException e) {
                   e.printStackTrace();
               }
           }
       }
       return true;
   }  
}
