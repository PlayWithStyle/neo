package neosoft.jp.pojo;

public class Page {
	//当前页码数
	private int pageNo=1;
	//总共的页码数
	private int pageCount;
	//设置每页显示的用户数量
	private int pageSize=10;
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	//获取下一页
	public int getNextPageNo() {
		int nextNo=pageNo+1;
		if(nextNo>pageCount){
			return pageCount;
		}
		return nextNo;
	}
	//获取上一页
	public int getPrePageNo(){
		int preNo=pageNo-1;
		if(preNo<1){
			return 1;
		}
		return preNo;
	}
	//获取当前页码
	public int getPageNo() {
		if(pageNo<1){
			return 1;
		}else if(pageNo>pageCount){
			return pageCount;
		}
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo=pageNo;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int dataCount) {
		if(dataCount%pageSize==0){
			this.pageCount = dataCount/pageSize;
		}else{
			this.pageCount = dataCount/pageSize+1;
		}
	}
	
}
