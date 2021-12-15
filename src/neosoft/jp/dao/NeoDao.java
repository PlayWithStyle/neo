package neosoft.jp.dao;

import java.util.List;

import neosoft.jp.pojo.News;
import neosoft.jp.pojo.Picture;
import neosoft.jp.pojo.User;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;




public class NeoDao extends HibernateDaoSupport {
	//����Ա������Ϣ
	public void newsDao(News news){
		if(news != null){
			getHibernateTemplate().save(news);
		}
	}
	//��ȫ����Ϣ��ʾ��ҳ����
	//public List<News> showNewsDao(){
	//	SessionFactory sf = getHibernateTemplate().getSessionFactory();
	//	Session session = sf.openSession();
	//	String hql = "from News order by id desc";
	//	Query query = session.createQuery(hql);
	//	List<News> list = query.list();		
	//	return list;
	//}
	
	//���ϴ�����ͼƬ��ʾ
		public List<Picture> queryPictureDao(){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from Picture order by id desc";
			Query query = session.createQuery(hql);
			List<Picture> list = query.list();		
			return list;
		}
	
	
	//��ʾȫ���û�
		public List<News> showNewsDao(int pageNo,int pageSize){
			return listByPage(pageNo, pageSize);
			
		}
		//ʵ���û���ҳ��ʾ,ֻ��dao�㱻����
		public List<News> listByPage(int pageNo,int pageSize){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from News order by id desc";
			Query query = session.createQuery(hql);
			//ÿһҳҪ��ʾ�ĵ�һ���û�����
			query.setFirstResult((pageNo-1)*pageSize);
			//�������ҳ��
			query.setMaxResults(pageSize);
			List<News> list = query.list();		
			return list;
		}
		//����һ�����û�����
			public int newsCountDao(){
				String hql = "select count(n) from News n";
				SessionFactory sf = getHibernateTemplate().getSessionFactory();
				Session session = sf.openSession();
				Number num =(Number) session.createQuery(hql).uniqueResult();
				return num.intValue();
			}

	
	
	
	//����Աɾ����Ϣ
	public void deleteDao(int id){
		SessionFactory sf = getHibernateTemplate().getSessionFactory();
		 News news = new News();
		 news.setId(id);
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.delete(news);
		tx.commit();
		sf.close();		
	} 
	//����Աɾ��ͼƬ
	public void deletePictureDao(int id){
		SessionFactory sf = getHibernateTemplate().getSessionFactory();
		 Picture picture = new Picture();
		 picture.setId(id);
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		session.delete(picture);
		tx.commit();
		sf.close();		
	} 
	//����id����Ҫ�༭����Ϣ��ʾ
		public News selectDao(int id){
			News news = null;
			String hql = "from News where id=?";
			List<News> list = getHibernateTemplate().find(hql, id);
			return news = list.get(0);
			
		}
		//���»�ȡ���༭֮�����Ϣ
		public void regetDao(News news){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.update(news);
			tx.commit();
			sf.close();
		}
		//ȡ�����ݿ�����Ϣ�������������
		public List<News> threeNews(){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from News order by id desc limit 0,3";
			Query query = session.createQuery(hql);
			List<News> list = query.list();		
			return list;
		}
		//���һ����Ƭ
		public void pictureDao(Picture picture){
			if(picture!=null){
				getHibernateTemplate().save(picture);
			}
		}
		//��ѯ��Ƭ��ʾ��ҳ����
		public List<Picture> showPictureDao(){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from Picture order by id desc limit (0,3)";
			Query query = session.createQuery(hql);
			List<Picture> plist = query.list();		
			return plist;
		}
		//����Ա��¼�ж�
		public User checkDao(User user){
			String hql = "from User u where u.username = ? and u.password = ?";
			List<User> list = getHibernateTemplate().find(hql,user.getUsername(),user.getPassword());
			if(list != null && list.size()>0){
				return list.get(0);
			}else
				return null;
		}
	
	
	
	
	
	
	
	
}
