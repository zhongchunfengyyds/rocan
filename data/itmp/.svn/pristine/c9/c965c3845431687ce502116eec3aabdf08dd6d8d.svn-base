package com.cgn.itmp.basecommon;


import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.imageio.ImageIO;

import sun.misc.BASE64Encoder;

import com.eos.common.config.ConfigurationFactory;
import com.eos.infra.config.Configuration;
import com.eos.infra.config.Configuration.Group;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
 
/**
 * 二维码生成和读的工具类
 *
 */
public class QrCodeUtil {
	public static String path="http://10.100.3.189:13471/itmp/";
//	public static String path="http://10.100.3.189:13471/itmp/";
	
    /**
     * 生成包含字符串信息的二维码图片
     * @param outputStream 文件输出流路径
     * @param content 二维码携带信息
     * @param qrCodeSize 二维码图片大小
     * @param imageFormat 二维码的格式
     * @throws WriterException 
     * @throws IOException 
     */
    @SuppressWarnings("unused")
	public static boolean createQrCode(OutputStream outputStream, String content, int qrCodeSize, String imageFormat) throws WriterException, IOException{  
            //设置二维码纠错级别ＭＡＰ
            Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<EncodeHintType, ErrorCorrectionLevel>();  
            hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);  // 矫错级别  
            QRCodeWriter qrCodeWriter = new QRCodeWriter();  
            //创建比特矩阵(位矩阵)的QR码编码的字符串  
            content=new String(content.getBytes("ISO-8859-1"),"UTF-8");
            BitMatrix byteMatrix = qrCodeWriter.encode(content, BarcodeFormat.QR_CODE, qrCodeSize, qrCodeSize, hintMap);  
            // 使BufferedImage勾画QRCode  (matrixWidth 是行二维码像素点)
            int matrixWidth = byteMatrix.getWidth();
            BufferedImage image = new BufferedImage(matrixWidth-200, matrixWidth-200, BufferedImage.TYPE_INT_RGB);  
            image.createGraphics();  
            Graphics2D graphics = (Graphics2D) image.getGraphics();  
            graphics.setColor(Color.WHITE);  
            graphics.fillRect(0, 0, matrixWidth, matrixWidth);  
            // 使用比特矩阵画并保存图像
            graphics.setColor(Color.BLACK);  
            for (int i = 0; i < matrixWidth; i++){
                for (int j = 0; j < matrixWidth; j++){
                    if (byteMatrix.get(i, j)){
                        graphics.fillRect(i-100, j-100,1, 1);  
                    }
                }
            }
            image.flush();
            
            BufferedImage outImage = new BufferedImage(1800, 1800, BufferedImage.TYPE_INT_ARGB);
            Graphics2D outg = outImage.createGraphics();
            outg.setColor(Color.WHITE);  
            outg.fillRect(0, 0, 900, 900); 
            outg.setColor(Color.BLACK); 
         //   outg.setBackground(Color.WHITE);  
            // 画二维码到新的面板
            outg.drawImage(image, 100, 100,image.getWidth(), image.getHeight(), null);
            // 画文字到新的面板
            
            // 字体、字型、字号
           Font font=new Font("Microsoft YaHei",Font.PLAIN,50);  
            outg.setFont(font);  
            //文字长度
            int strWidth = graphics.getFontMetrics().stringWidth("B0000001");
            //总长度减去文字长度的一半  （居中显示）
            int wordStartX=(700 - strWidth) / 2;
            //height + (outImage.getHeight() - height) / 2 + 12
         //   int wordStartY=680;
            // 画文字
//            outg.drawString("测试\r\n测试", wordStartX, 750);
//            outg.drawString("测试\r\n测试", wordStartX, 800);
 
            outImage.flush();
            return ImageIO.write(outImage, imageFormat, outputStream);  
    }  
     
    /**
     * 输出二维码图片
     * @param outputStream
     * @param content
     * @param qrCodeSize
     * @param imageFormat
     * @return
     * @throws WriterException
     * @throws IOException
     */
    public static boolean createQrCodeImg(OutputStream outputStream, String content, int qrCodeSize, String imageFormat) throws WriterException, IOException{  
        //设置二维码纠错级别ＭＡＰ
        Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<EncodeHintType, ErrorCorrectionLevel>();  
        hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);  // 矫错级别  
        QRCodeWriter qrCodeWriter = new QRCodeWriter();  
        //创建比特矩阵(位矩阵)的QR码编码的字符串  
        content=new String(content.getBytes("ISO-8859-1"),"UTF-8");
        BitMatrix byteMatrix = qrCodeWriter.encode(content, BarcodeFormat.QR_CODE, qrCodeSize, qrCodeSize, hintMap);  
        // 使BufferedImage勾画QRCode  (matrixWidth 是行二维码像素点)
        int matrixWidth = byteMatrix.getWidth();
        BufferedImage image = new BufferedImage(matrixWidth-200, matrixWidth-200, BufferedImage.TYPE_INT_RGB);  
        image.createGraphics();  
        Graphics2D graphics = (Graphics2D) image.getGraphics();  
        graphics.setColor(Color.WHITE);  
        graphics.fillRect(0, 0, matrixWidth, matrixWidth);  
        // 使用比特矩阵画并保存图像
        graphics.setColor(Color.BLACK);  
        for (int i = 0; i < matrixWidth; i++){
            for (int j = 0; j < matrixWidth; j++){
                if (byteMatrix.get(i, j)){
                    graphics.fillRect(i-100, j-100,1, 1);  
                }
            }
        }
        image.flush();
        return ImageIO.write(image, imageFormat, outputStream);  
}  
    
    /**
     * 读二维码并输出携带的信息
     */
//    public static void readQrCode(InputStream inputStream) throws IOException{  
//        //从输入流中获取字符串信息
//        BufferedImage image = ImageIO.read(inputStream);  
//        //将图像转换为二进制位图源
//        LuminanceSource source = new BufferedImageLuminanceSource(image);  
//        BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));  
//        QRCodeReader reader = new QRCodeReader();  
//        Result result = null ;  
//        try {
//         result = reader.decode(bitmap);  
//        } catch (ReaderException e) {
//            e.printStackTrace();  
//        }
//        System.out.println(result.getText());  
//    }
    
    public static String getWillNo(String no) {
    	
    	String s =no.substring(0, 6);
    	Integer willNo=Integer.parseInt(no.substring(6, 8));
    	int i= willNo.intValue()+1;
    	
    	return s+i;
    }
    
    
    /**
     * 生成包含字符串信息的二维码图片
     * @param outputStream 文件输出流路径
     * @param content 二维码携带信息
     * @param qrCodeSize 二维码图片大小
     * @param imageFormat 二维码的格式
     * @throws WriterException 
     * @throws IOException 
     */
    public static String base64(String content, int qrCodeSize, String imageFormat,String firstrow,String Second,int length) throws WriterException, IOException{  
            //设置二维码纠错级别ＭＡＰ
            Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<EncodeHintType, ErrorCorrectionLevel>();  
            hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);  // 矫错级别  
            QRCodeWriter qrCodeWriter = new QRCodeWriter();  
            //创建比特矩阵(位矩阵)的QR码编码的字符串  
            content=new String(content.getBytes("ISO-8859-1"),"UTF-8");
            BitMatrix byteMatrix = qrCodeWriter.encode(content, BarcodeFormat.QR_CODE, qrCodeSize, qrCodeSize, hintMap);  
            // 使BufferedImage勾画QRCode  (matrixWidth 是行二维码像素点)
            int matrixWidth = byteMatrix.getWidth();
            BufferedImage image = new BufferedImage(matrixWidth-100, matrixWidth-100, BufferedImage.TYPE_INT_RGB);  
            image.createGraphics();  
            Graphics2D graphics = (Graphics2D) image.getGraphics();  
            graphics.setColor(Color.WHITE);  
            graphics.fillRect(0, 0, matrixWidth, matrixWidth);  
            // 使用比特矩阵画并保存图像
            graphics.setColor(Color.BLACK);  
            for (int i = 0; i < matrixWidth; i++){
                for (int j = 0; j < matrixWidth; j++){
                    if (byteMatrix.get(i, j)){
                        graphics.fillRect(i-100, j-100,1, 1);  
                    }
                }
            }
//            image.flush();
            
            BufferedImage outImage = new BufferedImage(1500, 1750, BufferedImage.TYPE_INT_ARGB);
            Graphics2D outg = outImage.createGraphics();
            outg.setColor(Color.WHITE);  
            outg.fillRect(0, 0, 900, 900); 
            outg.setColor(Color.BLACK); 
         //   outg.setBackground(Color.WHITE);  
            // 画二维码到新的面板
            outg.drawImage(image, 100,25,image.getWidth(), image.getHeight(), null);
            // 画文字到新的面板
            
            // 字体、字型、字号
           Font font=new Font("",Font.PLAIN,80);  
            outg.setFont(font);  
            length+=500;
            int height=1400;
            //文字长度
            int strWidth = outg.getFontMetrics().stringWidth(firstrow);
            //第一行文字长度处理，如果下方文字放不下一行，最多做两行处理
            if(strWidth>1400){
            	//获取要放进二维码下方字符得比例
            	int proportion=strWidth/firstrow.length();
            	//获取到多出来的值长度
            	int difference=strWidth-1400;
            	//根据比例获取到需要截取多少字
            	int lengt=difference/proportion;
            	//第一行字
            	String firstStr=firstrow.substring(0,firstrow.length()-lengt);
            	//第二行字
            	String secondStr=firstrow.substring(firstrow.length()-lengt,firstrow.length());
            	//第一行长度
            	int firstWidth = outg.getFontMetrics().stringWidth(firstStr);
            	//第二行长度
            	int secondWidth= outg.getFontMetrics().stringWidth(secondStr);
            	//第一行X坐标
            	int firstStartX=(length - firstWidth) / 2;
            	//第二行X坐标
            	int secondStartX=(length - secondWidth) / 2;
            	//写入
            	outg.drawString(firstStr, firstStartX, height);
            	height+=100;
            	outg.drawString(secondStr, secondStartX, height);
            	height+=100;
            }else{
            	//总长度减去文字长度的一半  （居中显示）
            	int wordStartX=(length - strWidth) / 2;
            	//画文字
            	outg.drawString(firstrow, wordStartX, height);
            	height+=100;         	
            }
            //第二行文字
            strWidth = outg.getFontMetrics().stringWidth(Second);
            //第一行文字长度处理，如果下方文字放不下一行，最多做两行处理
            if(strWidth>1400){
            	//获取要放进二维码下方字符得比例
            	int proportion=strWidth/Second.length();
            	//获取到多出来的值长度
            	int difference=strWidth-1400;
            	//根据比例获取到需要截取多少字
            	int lengt=difference/proportion;
            	//第一行字
            	String firstStr=Second.substring(0,Second.length()-lengt);
            	//第二行字
            	String secondStr=Second.substring(Second.length()-lengt,Second.length());
            	//第一行长度
            	int firstWidth = outg.getFontMetrics().stringWidth(firstStr);
            	//第二行长度
            	int secondWidth= outg.getFontMetrics().stringWidth(secondStr);
            	//第一行X坐标
            	int firstStartX=(length - firstWidth) / 2;
            	//第二行X坐标
            	int secondStartX=(length - secondWidth) / 2;
            	//写入
            	outg.drawString(firstStr, firstStartX, height);
            	height+=100;
            	outg.drawString(secondStr, secondStartX, height);
            	height+=100;
            }else{
	            int wordStartX=(length - strWidth) / 2;
	            //画文字
	            outg.drawString(Second, wordStartX, height);
            }
//            outImage.flush();
            ByteArrayOutputStream os = new ByteArrayOutputStream();//新建流。
            ImageIO.write(outImage,imageFormat,os);//利用ImageIO类提供的write方法，将bi以png图片的数据模式写入流。
            byte b[] = os.toByteArray();//从流中获取数据数组。
            String str = new BASE64Encoder().encode(b);
            return str;  
    }
    
   

    /**
     *  生成二维码图片并上传至ftp
     * @param uuid
     * @param content 内容
     * @param fileName
     * @return
     */
    public static boolean createFtpQrCode(String uuid,String content,String fileName){
    	boolean b = false;
    	try {
    		Configuration config=ConfigurationFactory.getUserConfiguration();
			Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
			String FILE_UPLOAD_PATH=fileGroup.getConfigValue("FILE_PATH");
			
			String filePath = FILE_UPLOAD_PATH+"qrcode";
			File tempFileDir=new File(filePath);
			if(!tempFileDir.exists()){
				tempFileDir.mkdirs();
			}
			String pngFileName = filePath+File.separator+fileName;
			File file = new File(pngFileName);
			
			Boolean flag = QrCodeUtil.createQrCode(new FileOutputStream(file),content,1500,"PNG");
			if(flag){
				b = FTPUtil.instance.uploadFileToFtpServerByname(fileName, pngFileName);
				if(b){
					file.delete();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return b;
    }
    
    public static String creatRrCode(String contents, int width, int height) {
        String binary = null;
        Hashtable hints = new Hashtable();
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
        try {
            BitMatrix bitMatrix = new MultiFormatWriter().encode(
                    contents, BarcodeFormat.QR_CODE, width, height, hints);
            // 1、读取文件转换为字节数组
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            BufferedImage image = toBufferedImage(bitMatrix);
            //转换成png格式的IO流
            ImageIO.write(image, "png", out);
            byte[] bytes = out.toByteArray();

            // 2、将字节数组转为二进制
            BASE64Encoder encoder = new BASE64Encoder();
            binary = encoder.encodeBuffer(bytes).trim();
        } catch (WriterException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return binary;
    }

    /**
     * image流数据处理
     *
     * @author ianly
     */
    public static BufferedImage toBufferedImage(BitMatrix matrix) {
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                image.setRGB(x, y, matrix.get(x, y) ? 0xFF000000 : 0xFFFFFFFF);
            }
        }
        return image;
    }



    
    
    
    /**
     * 测试代码
     * @throws WriterException 
     */
    public static void main(String[] args) throws IOException, WriterException {  

	    	
    	
    	
    	
			String fileName = "1123.png";
    		String uuid = (UUID.randomUUID().toString()).replace("-","");
//    		二维码链接地址
			String content="http://49.4.50.125:8081/1.pdf";
//			ces();
//			createQrCode(content,800,"PNG");
	        
//			Map<String,Object> map=new HashMap<String,Object>();
//			map.put("imagedata",qr);
//			map.put("id","1234");
//			Map param=new HashMap();
//			param.put("qrCodes", map);
//			WordUtil wd=new WordUtil();
//			wd.createDoc("welderQR.ftl",param);
			//Configuration config=ConfigurationFactory.getUserConfiguration();
			//Group fileGroup=config.getGroup("FILE_UPLOAD", "FILE_INFO");
			//String FILE_UPLOAD_PATH=fileGroup.getConfigValue("FILE_PATH");
        	createQrCode(new FileOutputStream(new File("D:/erwei/"+fileName)),content,1500,"PNG");
        	
        	//boolean flag = FTPUtil.instance.uploadFileToFtpServer("192.168.1.111", 21, "fpus", "sun.japan2010", "/ITMP", "123456.png", fileName);
//        	FTPUtil.instance.deleteFile("192.168.1.111", 21, "fpus", "sun.japan2010", "/ITMP", fileName);
        	//System.out.println(flag);
        	
    }
}