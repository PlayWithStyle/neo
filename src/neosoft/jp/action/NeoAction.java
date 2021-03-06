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




	//??????????????
	public String newsAction(){
		//??????????????????????
		java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat(    
			     "yyyy-MM-dd");    
		java.util.Date currentTime = new java.util.Date();    
		insert_time = simpleDateFormat.format(currentTime).toString();  
		news.setInsert_time(insert_time);
		news.setInsert_text(insert_text);
		//????????????????????????????????????????????????id??????????????id????????0.
		news.setId(0);
		//????????????????????
		service.newsService(news);
		return showNewsAction1();
	}
	//??????????????????
	//public String showNewsAction(){
	//	List<News> list=service.showNewsService();
		//??list??????????????????
	//	HttpServletRequest request=ServletActionContext.getRequest();
	//	request.getSession().setAttribute("newslist", list);
	//	return "shownews";
	//}
	
	//????????????????????
	public String queryPictureAction(){
		List<Picture> list = service.queryPictureService();
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("querylist", list);
		return "querylist";
	}
	
	//??????????????????
	public String showNewsAction1(){
				//??????????????????
				int i = service.newsCountService();
				//????????????????
				page.setPageCount(i);
				//????????????????
				page.setPageNo(pageNo);
				//????service??????????????????????????list??????
				List<News> list=service.showNewsService(page.getPageNo(),page.getPageSize());
				//??list??????????????????
				HttpServletRequest request=ServletActionContext.getRequest();
				request.setAttribute("alllist", list);
				request.setAttribute("page", page);
		        return "alllist";
	}
	
	
	//????????????????????
	public String showNewsAction(){
		//??????????????????
		int i = service.newsCountService();
		//????????????????
		page.setPageCount(i);
		//????????????????
		page.setPageNo(pageNo);
		//????service??????????????????????????list??????
		List<News> list=service.showNewsService(page.getPageNo(),page.getPageSize());
		//??list??????????????????
		HttpServletRequest request=ServletActionContext.getRequest();
		request.setAttribute("newslist", list);
		request.setAttribute("page", page);
		return "shownews";
	}
	
	//????????????
	public String deleteAction(){
		service.deleteService(id);
		return showNewsAction1();
	}
	//??????????????
	public String deletePictureAction(){
		service.deletePictureService(id);
		return queryPictureAction();
	}
	//????????????????????
	public String selectAction(){
		News news = service.selectService(id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("news", news);
		return "select";
	}
	//??????????????????????
	public String regetAction(){
		service.regetService(news);
		return showNewsAction1();
	}
	
	//??????????????????
	public String threeAction(){
		List<News> tlist=service.threeService();
		//??list??????????????????
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("tlist", tlist);
		return "news";
	}
	
	//????????
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
	//????????????????????
	public String showPictureAction(){
		List<Picture> plist=service.showPictureService();
		//??list??????????????????
		HttpServletRequest request=ServletActionContext.getRequest();
		request.getSession().setAttribute("plist", plist);
		request.getSession().setAttribute("photo", picture.getPath());
		return "news";
	}
	//??????????????
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
	//??????????????????ajax????????????????
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
