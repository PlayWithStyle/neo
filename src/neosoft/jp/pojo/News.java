package neosoft.jp.pojo;

public class News {
	private int id;
	private String insert_time;
	private String insert_text;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(int id, String insert_time, String insert_text) {
		super();
		this.id = id;
		this.insert_time = insert_time;
		this.insert_text = insert_text;
	}
	public News(String insert_time, String insert_text) {
		super();
		this.insert_time = insert_time;
		this.insert_text = insert_text;
	}
	
	

}
