package com.etc.mvc.entity;

import java.time.LocalDate;

public class Firm {
	//公司ID
	private Integer firm_id;
	//公司账号名
	private String firm_name;
	//密码
	private String firm_pwd;
	//公司名称
	private String firm_realname;
	//类型
	private String firm_type;
	//成立日期
	private String firm_birthday;
	//公司logo
	private String firm_logo;
	//营业执照上的信用代码
	private String firm_creditcode;
	//公司法人
	private String firm_legalperson;
	//公司简介（text)
	private String firm_info;
	//地址
	private String firm_address;
	//状态（给管理员设置）
	private Integer firm_status;
	//邮箱
	private String firm_email;
	//电话
	private String firm_tel;

	public String getFirm_email() {
		return firm_email;
	}
	public void setFirm_email(String firm_email) {
		this.firm_email = firm_email;
	}
	public String getFirm_tel() {
		return firm_tel;
	}
	public void setFirm_tel(String firm_tel) {
		this.firm_tel = firm_tel;
	}
	public Integer getFirm_id() {
		return firm_id;
	}
	public void setFirm_id(Integer firm_id) {
		this.firm_id = firm_id;
	}
	public String getFirm_name() {
		return firm_name;
	}
	public void setFirm_name(String firm_name) {
		this.firm_name = firm_name;
	}
	public String getFirm_pwd() {
		return firm_pwd;
	}
	public void setFirm_pwd(String firm_pwd) {
		this.firm_pwd = firm_pwd;
	}
	public String getFirm_realname() {
		return firm_realname;
	}
	public void setFirm_realname(String firm_realname) {
		this.firm_realname = firm_realname;
	}
	public String getFirm_type() {
		return firm_type;
	}
	public void setFirm_type(String firm_type) {
		this.firm_type = firm_type;
	}
	public String getFirm_birthday() {
		return firm_birthday;
	}
	public void setFirm_birthday(String firm_birthday) {
		this.firm_birthday = firm_birthday;
	}
	public String getFirm_creditcode() {
		return firm_creditcode;
	}
	public void setFirm_creditcode(String firm_creditcode) {
		this.firm_creditcode = firm_creditcode;
	}
	public String getFirm_legalperson() {
		return firm_legalperson;
	}
	public void setFirm_legalperson(String firm_legalperson) {
		this.firm_legalperson = firm_legalperson;
	}
	public String getFirm_info() {
		return firm_info;
	}
	public void setFirm_info(String firm_info) {
		this.firm_info = firm_info;
	}
	public String getFirm_address() {
		return firm_address;
	}
	public void setFirm_address(String firm_address) {
		this.firm_address = firm_address;
	}
	public Integer getFirm_status() {
		return firm_status;
	}
	public void setFirm_status(Integer firm_status) {
		this.firm_status = firm_status;
	}
	public String getFirm_logo() {
		return firm_logo;
	}
	public void setFirm_logo(String firm_logo) {
		this.firm_logo = firm_logo;
	}


}
