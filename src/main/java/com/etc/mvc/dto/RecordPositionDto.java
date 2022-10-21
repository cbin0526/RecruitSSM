package com.etc.mvc.dto;

public class RecordPositionDto {
	
	//�ڼ���״̬���е�id-->δ����=0��֪ͨ����=1���ܾ�=2
	private Integer rs_id;
	//����id
	private Integer rs_recordid;
	//��λid
	private Integer rs_positionid;
	//����
	private String r_name; 
	//�Ա�
	private String r_sex;
	//ѧ��
	private String r_graduation;
	//��������
	private String r_workedyear;
	//������������
	private String r_city;
	///��ҵԺУ
	private String r_school;
	//ӦƸ�ĸ�λ����
	private String p_name;
	//ӦƸ����ϵ�绰
	private String r_tel;
	//ӦƸ�ߵ�������
	private String r_email;
	//������״̬
	private Integer rs_status;

	public Integer getRs_id() {
		return rs_id;
	}
	public void setRs_id(Integer rs_id) {
		this.rs_id = rs_id;
	}
	public Integer getRs_recordid() {
		return rs_recordid;
	}
	public void setRs_recordid(Integer rs_recordid) {
		this.rs_recordid = rs_recordid;
	}
	public Integer getRs_positionid() {
		return rs_positionid;
	}
	public void setRs_positionid(Integer rs_positionid) {
		this.rs_positionid = rs_positionid;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_sex() {
		return r_sex;
	}
	public void setR_sex(String r_sex) {
		this.r_sex = r_sex;
	}
	public String getR_graduation() {
		return r_graduation;
	}
	public void setR_graduation(String r_graduation) {
		this.r_graduation = r_graduation;
	}
	public String getR_workedyear() {
		return r_workedyear;
	}
	public void setR_workedyear(String r_workedyear) {
		this.r_workedyear = r_workedyear;
	}
	public String getR_city() {
		return r_city;
	}
	public void setR_city(String r_city) {
		this.r_city = r_city;
	}
	public String getR_school() {
		return r_school;
	}
	public void setR_school(String r_school) {
		this.r_school = r_school;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getR_tel() {
		return r_tel;
	}
	public void setR_tel(String r_tel) {
		this.r_tel = r_tel;
	}
	public String getR_email() {
		return r_email;
	}
	public void setR_email(String r_email) {
		this.r_email = r_email;
	}
	public Integer getRs_status() {
		return rs_status;
	}
	public void setRs_status(Integer rs_status) {
		this.rs_status = rs_status;
	}
	
	@Override
	public String toString() {
		return "RecordPositionDto [rs_id=" + rs_id + ", rs_recordid=" + rs_recordid + ", rs_positionid=" + rs_positionid
				+ ", r_name=" + r_name + ", r_sex=" + r_sex + ", r_graduation=" + r_graduation + ", r_workedyear="
				+ r_workedyear + ", r_city=" + r_city + ", r_school=" + r_school + ", p_name=" + p_name + ", r_tel="
				+ r_tel + ", r_email=" + r_email + ", rs_status=" + rs_status + "]";
	}
	
	
	
	
}
