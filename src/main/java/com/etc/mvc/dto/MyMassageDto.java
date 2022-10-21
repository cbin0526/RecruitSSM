package com.etc.mvc.dto;

public class MyMassageDto {
	private Integer flag; //0 .����û������  1.��ȡ���ݳɹ�	2.�����쳣	3.�û�����ʧЧ
	private String msgcontent; //������Ϣ������
	private Object msgobject; //��Ϣ����
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
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
