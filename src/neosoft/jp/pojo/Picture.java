package neosoft.jp.pojo;

public class Picture {
	private int id;
	private String path;
	private String name;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Picture() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Picture(int id, String path, String name) {
		super();
		this.id = id;
		this.path = path;
		this.name = name;
	}
	
	
	
	

}
