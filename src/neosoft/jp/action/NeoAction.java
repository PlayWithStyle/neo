package neosoft.jp.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import neosoft.jp.pojo.News;
import neosoft.jp.pojo.Page;
import neosoft.jp.pojo.Picture;
import neosoft.jp.pojo.User;
import neosoft.jp.service.NeoService;




import neosoft.jp.tool.FileUpLoad;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class NeoAction extends ActionSupport {
	private NeoService service;
	private News news = new News();
	
	private int id;
	private String insert_time;
	private String insert_text;
	
	private Picture picture = new Picture();
	private int pid;
	
	private File upload;
	private String upLoadContentType;
	private String uploadFileName;
	
	
	private int pageNo;
	
	private User user = new User();
	private String username;
	private String password;
	
	private Page page = new Page();
	

	public NeoService getService() {
		return service;
	}
	
	
	

	public News getNews() {
		return news;
	}




	public void setNews(News news) {
		this.news = news;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public void setService(NeoService service) {
		this.service = service;
	}
	


	public String getInsert_time() {
		return insert_time;
	}

	public void setInsert_time(String insert_time) {
		this.insert_time = insert_time;
	}

	public String getInsert_text() {
		return insert_text;
	}

	public void setInsert_text(String insert_text) {
		this.insert_text = insert_text;
	}
	
	
	public Picture getPicture() {
		return picture;
	}




	public void setPicture(Picture picture) {
		this.picture = picture;
	}




	public int getPid() {
		return pid;
	}




	public void setPid(int pid) {
		this.pid = pid;
	}



	public File getUpload() {
		return upload;
	}




	public void setUpload(File upload) {
		this.upload = upload;
	}




	public String getUpLoadContentType() {
		return upLoadContentType;
	}




	public void setUpLoadContentType(String upLoadContentType) {
		this.upLoadContentType = upLoadContentType;
	}




	public String getUploadFileName() {
		return uploadFileName;
	}




	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}




	public int getPageNo() {
		return pageNo;
	}




	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}




	public Page getPage() {
		return page;
	}




	public void setPage(Page page) {
		this.page = page;
	}
	
	




	public User getUser() {
		return user;
	}




	public void setUser(User user) {
		this.user = user;
	}
	



	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}




	public String getPassword() {
		return password;
	}




	public void setPassword(String password) {
		this.password = password;
	}




	//管理员发布信息
	public String newsAction(){
		//获取发布信息的系统时间
		java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
			     "yyyy-MM-dd");    
		java.util.Date currentTime = new java.util.Date();    
		insert_time = simpleDateFormat.format(currentTime).toString();  
		news.setInsert_time(insert_time);
		news.setInsert_text(insert_text);
		//更新功能之后进行添加操作，因为缓存添加的数据主键id重复，所以设置id初始值为0.
		news.setId(0);
		//获取从页面添加的信息
		service.newsService(news);
		return showNewsAction1();
	}
	//将信息显示到页面上
	//public String showNewsAction(){
	//	List<News> list=service.showNewsService();
		//将list放到会话中等待调用
	//	HttpServletRequest request=ServletActionContext.getRequest();
	//	request.getSession().setAttribute("newslist", list);
	//	return "shownews";
	//}
	
	//查询所有上传过的图片
	public String queryPictureAction(){
		List<Picture> list = service.queryPictureService();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("querylist", list);
		return "querylist";
	}
	
	//管理员查看所有信息
	public String showNewsAction1(){
				//计算一共的信息数量
				int i = service.newsCountService();
				//计算一共有多少页
				page.setPageCount(i);
				//获得当前的页码数
				page.setPageNo(pageNo);
				//调用service层方法，将查询的数据暂存到list集合中
				List<News> list=service.showNewsService(page.getPageNo(),page.getPageSize());
				//将list放到会话中等待调用
				HttpServletRequest request=ServletActionContext.getRequest();
				request.setAttribute("alllist", list);
				request.setAttribute("page", page);
		        return "alllist";
	}
	
	
	//用户页面显示全部信息
	public String showNewsAction(){
		//计算一共的信息数量
		int i = service.newsCountService();
		//计算一共有多少页
		page.setPageCount(i);
		//获得当前的页码数
		page.setPageNo(pageNo);
		//调用service层方法，将查询的数据暂存到list集合中
		List<News> list=service.showNewsService(page.getPageNo(),page.getPageSize());
		//将list放到会话中等待调用
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("newslist", list);
		request.setAttribute("page", page);
		return "shownews";
	}
	
	//删除一条信息
	public String deleteAction(){
		service.deleteService(id);
		return showNewsAction1();
	}
	//管理员删除图片
	public String deletePictureAction(){
		service.deletePictureService(id);
		return queryPictureAction();
	}
	//将需要编辑的信息显示
	public String selectAction(){
		News news = service.selectService(id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("news", news);
		return "select";
	}
	//重新获取编辑之后的信息
	public String regetAction(){
		service.regetService(news);
		return showNewsAction1();
	}
	
	//获取最新的三条数据
	public String threeAction(){
		List<News> tlist=service.threeService();
		//将list放到会话中等待调用
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("tlist", tlist);
		return "news";
	}
	
	//上传照片
	public String pictureAction(){
		ServletContext sc =(ServletContext) ActionContext.getContext().get(ServletActionContext.SERVLET_CONTEXT);
		String uuid = UUID.randomUUID().toString();
		String ext = uploadFileName.substring(uploadFileName.lastIndexOf("."), uploadFileName.length());
		String realpath = sc.getRealPath("/upload")+"/"+uuid+ext;
		FileUpLoad fileupload = new FileUpLoad();
		try {
			fileupload.uploadFile(realpath, upload);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		picture.setPath(uuid+ext);
		service.pictureService(picture);
		return queryPictureAction();
	}
	//查询照片并显示到页面
	public String showPictureAction(){
		List<Picture> plist=service.showPictureService();
		//将list放到会话中等待调用
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("plist", plist);
		request.getSession().setAttribute("photo", picture.getPath());
		return "news";
	}
	//管理员判断登录
	/*public void checkAction() throws IOException{		
		 User checkuser = service.checkService(user.getUsername(),user.getPassword());
		Map<String,String>	m = new HashMap<String, String>();
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		if(checkuser == null){
			m.put("status","error");
			out.print(new Gson().toJson(m));
		}else{
			
			HttpServletRequest request = ServletActionContext.getRequest();
			request.getSession().setAttribute("name", user.getUsername());
			m.put("status","success");
			out.print(new Gson().toJson(m));
		}
	}*/
	//管理员判断登录没有ajax登录失败跳转页面
	public String checkAction(){
		System.out.print(user.getPassword()+user.getUsername());
		User checkuser = service.checkService(user.getUsername(),user.getPassword());
		if(checkuser != null){
			HttpServletRequest request = ServletActionContext.getRequest();
			request.getSession().setAttribute("name", user.getUsername());
			return showNewsAction1();
		}else{
			return "fail";
		}
	}

}
