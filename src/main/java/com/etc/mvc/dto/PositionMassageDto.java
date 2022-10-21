package com.etc.mvc.dto;

public class PositionMassageDto {
	private Integer flag;     //flag=0��ʾû������  1��ʾ������
	private Integer page=1;   //���ݵ�ҳ��
	private Integer size=2;		//ÿҳ��ʾ����
	private Integer maxPage=1;	//���ҳ��
	private String msgcontent; //������Ϣ������
	private Object msgobject; //��Ϣ����
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public Integer getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(Integer maxPage) {
		this.maxPage = maxPage;
	}
	public String getMsgcontent() {
		return msgcontent;
	}
	public void setMsgcontent(String msgcontent) {
		this.msgcontent = msgcontent;
	}
	public Object getMsgobject() {
		return msgobject;
	}
	public void setMsgobject(Object msgobject) {
		this.msgobject = msgobject;
	}
	
}
