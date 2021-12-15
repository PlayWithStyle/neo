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
	
	//����Ա������Ϣ
	public void newsService(News news){
		dao.newsDao(news);
	}
	//����Ϣ��ʾ��ҳ��
	//public List<News> showNewsService(){
	//	List<News> list = dao.showNewsDao();
	//	return list;
	//}
	
	//��ѯ�����ϴ�����ͼƬ
	public List<Picture> queryPictureService(){
		return dao.queryPictureDao();
	}
	
	//�����û�����
	public int newsCountService(){
		return dao.newsCountDao();
	}
	//��ʾȫ����Ϣ
	public List<News> showNewsService(int pageNo,int pageSize){
		return dao.showNewsDao(pageNo, pageSize);
	}
	
	//ɾ��һ����Ϣ
	public void deleteService(int id){
		dao.deleteDao(id);
	}
	//ɾ��ͼƬ
	public void deletePictureService(int id){
		dao.deletePictureDao(id);
	}
	//��ʾ����Ҫ�༭������
	public News selectService(int id){
		News news = dao.selectDao(id);
		return news; 
	}
	//���»�ȡ�༭֮�������
	public void regetService(News news){
		dao.regetDao(news);
	}
	//��ѯ���µ�������Ϣ
	public List<News> threeService(){
		List<News> tlist = dao.threeNews();
		return tlist;
	}
	
	//���һ����Ƭ
	public void pictureService(Picture picture){
		dao.pictureDao(picture);
	}
	//��ѯ��Ƭ��ʾ��ҳ����
	public List<Picture> showPictureService(){
		List<Picture> plist = dao.showPictureDao();
		return plist;
	}
	//����Ա��¼�ж�
	public User checkService(String username,String password){
		User user = new User(username,password);
		//user.setUsername(username);
		//user.setPassword(password);
		user = dao.checkDao(user);
		return user;
	}

}
