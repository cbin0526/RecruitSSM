package com.etc.mvc.entity;

public class Manager {
	//管理员id
	private Integer manager_id;
	//账户名称
	private String manager_name;
	//密码
	private String manager_pwd;
	//角色（1超管/0普管）
	private Integer manager_role;
	public Integer getManager_id() {
		return manager_id;
	}
	public void setManager_id(Integer manager_id) {
		this.manager_id = manager_id;
	}
	public String getManager_name() {
		return manager_name;
	}
	public void setManager_name(String manager_name) {
		this.manager_name = manager_name;
	}
	public String getManager_pwd() {
		return manager_pwd;
	}
	public void setManager_pwd(String manager_pwd) {
		this.manager_pwd = manager_pwd;
	}
	public Integer getManager_role() {
		return manager_role;
	}
	public void setManager_role(Integer manager_role) {
		this.manager_role = manager_role;
	}
	@Override
	public String toString() {
		return "Manager [manager_id=" + manager_id + ", manager_name=" + manager_name + ", manager_pwd=" + manager_pwd
				+ ", manager_role=" + manager_role + "]";
	}

}
