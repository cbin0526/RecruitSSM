package com.etc.mvc.entity;

public class Position {
	//岗位表

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
	//工作经验上限
	private Integer p_minworkexperience;
	//工作经验下限
	private Integer p_maxworkexperience;
	//招聘状态（1 正在招聘 /0 结束成功）
	private Integer p_jobstatus;
	//审核状态（0失败/1成功 默认成功）
	private Integer p_status;
	//公司id（外键）
	private Integer p_firmid;
	public Integer getP_firmid() {
		return p_firmid;
	}
	public void setP_firmid(Integer p_firmid) {
		this.p_firmid = p_firmid;
	}
	public Integer getP_id() {
		return p_id;
	}
	public void setP_id(Integer p_id) {
		this.p_id = p_id;
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
	public Integer getP_minworkexperience() {
		return p_minworkexperience;
	}
	public void setP_minworkexperience(Integer p_minworkexperience) {
		this.p_minworkexperience = p_minworkexperience;
	}
	public Integer getP_maxworkexperience() {
		return p_maxworkexperience;
	}
	public void setP_maxworkexperience(Integer p_maxworkexperience) {
		this.p_maxworkexperience = p_maxworkexperience;
	}
	public void setP_status(Integer p_status) {
		this.p_status = p_status;
	}
	@Override
	public String toString() {
		return "Position [p_id=" + p_id + ", p_name=" + p_name + ", p_type=" + p_type + ", p_require=" + p_require
				+ ", p_salary=" + p_salary + ", p_welfare=" + p_welfare + ", p_address=" + p_address + ", p_info="
				+ p_info + ", p_graduation=" + p_graduation + ", p_minworkexperience=" + p_minworkexperience
				+ ", p_maxworkexperience=" + p_maxworkexperience + ", p_jobstatus=" + p_jobstatus + ", p_status="
				+ p_status + ", p_firmid=" + p_firmid + ", getP_firmid()=" + getP_firmid() + ", getP_id()=" + getP_id()
				+ ", getP_name()=" + getP_name() + ", getP_type()=" + getP_type() + ", getP_require()=" + getP_require()
				+ ", getP_salary()=" + getP_salary() + ", getP_welfare()=" + getP_welfare() + ", getP_address()="
				+ getP_address() + ", getP_jobstatus()=" + getP_jobstatus() + ", getP_status()=" + getP_status()
				+ ", getP_info()=" + getP_info() + ", getP_graduation()=" + getP_graduation()
				+ ", getP_minworkexperience()=" + getP_minworkexperience() + ", getP_maxworkexperience()="
				+ getP_maxworkexperience() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}

}
