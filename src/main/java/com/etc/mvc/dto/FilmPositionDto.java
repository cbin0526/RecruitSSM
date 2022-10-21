package com.etc.mvc.dto;

public class FilmPositionDto {

	//岗位id
	private Integer p_id;
	//岗位名
	private String p_name;
	//类型（兼职，全职，实习）
	private String p_type;
	//岗位要求（text）
	private String p_require;
	//岗位薪资
	private String p_salary;
	//公司福利
	private String p_welfare;
	//办公地址
	private String p_address;
	//岗位介绍
	private String p_info;
	//学历要求
	private String p_graduation;
	//工作经验
	private String p_wexperience;
	//联系邮箱
	private String p_email;
	//联系电话
	private String p_tel;
	//招聘状态（1 正在招聘 /0 结束成功）
	private Integer p_jobstatus;
	//审核工作状态（0招聘结束/1正在招聘 默认1）
	private Integer p_status;
	//公司名称
	private String firm_realname;
	//公司法人
	private String firm_legalperson;
	//公司id
	private Integer p_firmid;


	public Integer getP_id() {
		return p_id;
	}
	public void setP_id(Integer p_id) {
		this.p_id = p_id;
	}
	public Integer getP_firmid() {
		return p_firmid;
	}
	public void setP_firmid(Integer p_firmid) {
		this.p_firmid = p_firmid;
	}
	public String getP_email() {
		return p_email;
	}
	public void setP_email(String p_email) {
		this.p_email = p_email;
	}
	public String getP_tel() {
		return p_tel;
	}
	public void setP_tel(String p_tel) {
		this.p_tel = p_tel;
	}
	public String getP_info() {
		return p_info;
	}
	public void setP_info(String p_info) {
		this.p_info = p_info;
	}
	public String getP_graduation() {
		return p_graduation;
	}
	public void setP_graduation(String p_graduation) {
		this.p_graduation = p_graduation;
	}

	public String getP_wexperience() {
		return p_wexperience;
	}
	public void setP_wexperience(String p_wexperience) {
		this.p_wexperience = p_wexperience;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_type() {
		return p_type;
	}
	public void setP_type(String p_type) {
		this.p_type = p_type;
	}
	public String getP_require() {
		return p_require;
	}
	public void setP_require(String p_require) {
		this.p_require = p_require;
	}

	public String getP_salary() {
		return p_salary;
	}
	public void setP_salary(String p_salary) {
		this.p_salary = p_salary;
	}
	public String getP_welfare() {
		return p_welfare;
	}
	public void setP_welfare(String p_welfare) {
		this.p_welfare = p_welfare;
	}
	public String getP_address() {
		return p_address;
	}
	public void setP_address(String p_address) {
		this.p_address = p_address;
	}
	public Integer getP_jobstatus() {
		return p_jobstatus;
	}
	public void setP_jobstatus(Integer p_jobstatus) {
		this.p_jobstatus = p_jobstatus;
	}
	public Integer getP_status() {
		return p_status;
	}
	public void setP_status(Integer p_status) {
		this.p_status = p_status;
	}
	public String getFirm_realname() {
		return firm_realname;
	}
	public void setFirm_realname(String firm_realname) {
		this.firm_realname = firm_realname;
	}
	public String getFirm_legalperson() {
		return firm_legalperson;
	}
	public void setFirm_legalperson(String firm_legalperson) {
		this.firm_legalperson = firm_legalperson;
	}
	@Override
	public String toString() {
		return "FilmPositionDto [p_id=" + p_id + ", p_name=" + p_name + ", p_type=" + p_type + ", p_require="
				+ p_require + ", p_salary=" + p_salary + ", p_welfare=" + p_welfare + ", p_address=" + p_address
				+ ", p_info=" + p_info + ", p_graduation=" + p_graduation + ", p_wexperience=" + p_wexperience
				+ ", p_email=" + p_email + ", p_tel=" + p_tel + ", p_jobstatus=" + p_jobstatus + ", p_status="
				+ p_status + ", firm_realname=" + firm_realname + ", firm_legalperson=" + firm_legalperson
				+ ", p_firmid=" + p_firmid + ", getP_id()=" + getP_id() + ", getP_firmid()=" + getP_firmid()
				+ ", getP_email()=" + getP_email() + ", getP_tel()=" + getP_tel() + ", getP_info()=" + getP_info()
				+ ", getP_graduation()=" + getP_graduation() + ", getP_wexperience()=" + getP_wexperience()
				+ ", getP_name()=" + getP_name() + ", getP_type()=" + getP_type() + ", getP_require()="
				+ getP_require() + ", getP_salary()=" + getP_salary() + ", getP_welfare()=" + getP_welfare()
				+ ", getP_address()=" + getP_address() + ", getP_jobstatus()=" + getP_jobstatus()
				+ ", getP_status()=" + getP_status() + ", getFirm_realname()=" + getFirm_realname()
				+ ", getFirm_legalperson()=" + getFirm_legalperson() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

}
