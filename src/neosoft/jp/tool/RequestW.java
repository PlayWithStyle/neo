package neosoft.jp.tool;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;


public class RequestW extends HttpServletRequestWrapper{
	HttpServletRequest request = null;
	public RequestW(HttpServletRequest request) {
		super(request);
		this.request=request;
		
	}
	
	@Override
	public String getParameter(String name) {
		String para1=null;
		if("GET".equalsIgnoreCase(request.getMethod())){
			String p=request.getParameter(name);
			try {
			
			if(p!=null){
				para1 = new String(p.getBytes("ISO-8859-1"),"UTF-8");
			}
			
				 
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return para1;
		}
		return request.getParameter(name);
	}

}
