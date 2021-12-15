package neosoft.jp.service;

import java.util.List;

import neosoft.jp.dao.NeoDao;
import neosoft.jp.pojo.News;
import neosoft.jp.pojo.Picture;
import neosoft.jp.pojo.User;

public class NeoService {
	private NeoDao dao;

	public NeoDao getDao() {
		return dao;
	}

	public void setDao(NeoDao dao) {
		this.dao = dao;
	}
	
	//管理员发布信息
	public void newsService(News news){
		dao.newsDao(news);
	}
	//将信息显示到页面
	//public List<News> showNewsService(){
	//	List<News> list = dao.showNewsDao();
	//	return list;
	//}
	
	//查询所有上传过的图片
	public List<Picture> queryPictureService(){
		return dao.queryPictureDao();
	}
	
	//计算用户数量
	public int newsCountService(){
		return dao.newsCountDao();
	}
	//显示全部信息
	public List<News> showNewsService(int pageNo,int pageSize){
		return dao.showNewsDao(pageNo, pageSize);
	}
	
	//删除一条信息
	public void deleteService(int id){
		dao.deleteDao(id);
	}
	//删除图片
	public void deletePictureService(int id){
		dao.deletePictureDao(id);
	}
	//显示出需要编辑的数据
	public News selectService(int id){
		News news = dao.selectDao(id);
		return news; 
	}
	//重新获取编辑之后的数据
	public void regetService(News news){
		dao.regetDao(news);
	}
	//查询最新的三条消息
	public List<News> threeService(){
		List<News> tlist = dao.threeNews();
		return tlist;
	}
	
	//添加一张照片
	public void pictureService(Picture picture){
		dao.pictureDao(picture);
	}
	//查询照片显示到页面上
	public List<Picture> showPictureService(){
		List<Picture> plist = dao.showPictureDao();
		return plist;
	}
	//管理员登录判断
	public User checkService(String username,String password){
		User user = new User(username,password);
		//user.setUsername(username);
		//user.setPassword(password);
		user = dao.checkDao(user);
		return user;
	}

}
