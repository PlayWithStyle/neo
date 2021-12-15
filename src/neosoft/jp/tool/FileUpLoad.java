package neosoft.jp.tool;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class FileUpLoad {
	//上传文件
	public static void uploadFile(String path,File file) throws Exception{
		//上传用户图片到指定位置 
		FileOutputStream foStream = new FileOutputStream(path);
		FileInputStream fiStream = new FileInputStream(file);
		byte[] buffer = new byte[1024];
		int len = 0;
		while((len = fiStream.read(buffer))>0){
			foStream.write(buffer, 0, len);
		}
	}
	//得到保存路径
	public static String getSavePath(ActionContext ac){
		String uploadPath=ServletActionContext.getServletContext().getRealPath("/upload");
		//ServletContext sc =(ServletContext) ac.get(ServletActionContext.SERVLET_CONTEXT);
		//String path = sc.getRealPath("/upload");
		return uploadPath;
	}

}
