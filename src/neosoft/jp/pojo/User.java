package neosoft.jp.pojo;

public class User {
	private int userid;
	private String username;
	private String password;
	private String privilege;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
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
	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int userid, String username, String password, String privilege) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.privilege = privilege;
	}
	public User(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	

}
