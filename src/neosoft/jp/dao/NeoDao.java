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
	//管理员发布信息
	public void newsDao(News news){
		if(news != null){
			getHibernateTemplate().save(news);
		}
	}
	//将全部信息显示到页面上
	//public List<News> showNewsDao(){
	//	SessionFactory sf = getHibernateTemplate().getSessionFactory();
	//	Session session = sf.openSession();
	//	String hql = "from News order by id desc";
	//	Query query = session.createQuery(hql);
	//	List<News> list = query.list();		
	//	return list;
	//}
	
	//将上传过的图片显示
		public List<Picture> queryPictureDao(){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from Picture order by id desc";
			Query query = session.createQuery(hql);
			List<Picture> list = query.list();		
			return list;
		}
	
	
	//显示全部用户
		public List<News> showNewsDao(int pageNo,int pageSize){
			return listByPage(pageNo, pageSize);
			
		}
		//实现用户分页显示,只在dao层被调用
		public List<News> listByPage(int pageNo,int pageSize){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from News order by id desc";
			Query query = session.createQuery(hql);
			//每一页要显示的第一条用户数据
			query.setFirstResult((pageNo-1)*pageSize);
			//设置最大页码
			query.setMaxResults(pageSize);
			List<News> list = query.list();		
			return list;
		}
		//计算一共的用户数量
			public int newsCountDao(){
				String hql = "select count(n) from News n";
				SessionFactory sf = getHibernateTemplate().getSessionFactory();
				Session session = sf.openSession();
				Number num =(Number) session.createQuery(hql).uniqueResult();
				return num.intValue();
			}

	
	
	
	//管理员删除信息
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
	//管理员删除图片
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
	//根据id将需要编辑的信息显示
		public News selectDao(int id){
			News news = null;
			String hql = "from News where id=?";
			List<News> list = getHibernateTemplate().find(hql, id);
			return news = list.get(0);
			
		}
		//重新获取被编辑之后的信息
		public void regetDao(News news){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			session.update(news);
			tx.commit();
			sf.close();
		}
		//取出数据库中消息日期最近的三条
		public List<News> threeNews(){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from News order by id desc limit 0,3";
			Query query = session.createQuery(hql);
			List<News> list = query.list();		
			return list;
		}
		//添加一张照片
		public void pictureDao(Picture picture){
			if(picture!=null){
				getHibernateTemplate().save(picture);
			}
		}
		//查询照片显示到页面上
		public List<Picture> showPictureDao(){
			SessionFactory sf = getHibernateTemplate().getSessionFactory();
			Session session = sf.openSession();
			String hql = "from Picture order by id desc limit (0,3)";
			Query query = session.createQuery(hql);
			List<Picture> plist = query.list();		
			return plist;
		}
		//管理员登录判断
		public User checkDao(User user){
			String hql = "from User u where u.username = ? and u.password = ?";
			List<User> list = getHibernateTemplate().find(hql,user.getUsername(),user.getPassword());
			if(list != null && list.size()>0){
				return list.get(0);
			}else
				return null;
		}
	
	
	
	
	
	
	
	
}
