package com.etc.mvc.entity;


public class Record {
	//	简历id
	private Integer r_recordid;
	//简历名称
	private String r_recordname;
	//	姓名
	private String r_name;
	//性别
	private String r_sex;
	//	电话
	private String r_tel;
	//邮箱
	private String r_email;
	//年龄
	private Integer r_age;
	//工作年限
	private String r_workedyear;
	//简历头像
	private String r_photo;
	//最高学历
	private String r_graduation;
	//毕业院校
	private String r_school;
	//专业
	private String r_professional;
	//毕业年份
	private String r_graduateyear;
	//期望薪资
	private String r_salary;
	//期望工作岗位
	private String r_position;
	//期望工作地方
	private String r_city;
	//技能（text）
	private String r_skill;
	//自我评价（text）
	private String r_info;
	//被查看着次数
	private Integer r_count;
	//应聘者ID（外键）
	private Integer r_userid;
	//更新时间
	private String r_updatetime;

	public Integer getR_recordid() {
		return r_recordid;
	}
	public void setR_recordid(Integer r_recordid) {
		this.r_recordid = r_recordid;
	}

	public String getR_recordname() {
		return r_recordname;
	}
	public void setR_recordname(String r_recordname) {
		this.r_recordname = r_recordname;
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
	public Integer getR_age() {
		return r_age;
	}
	public void setR_age(Integer r_age) {
		this.r_age = r_age;
	}
	public String getR_workedyear() {
		return r_workedyear;
	}
	public void setR_workedyear(String r_workedyear) {
		this.r_workedyear = r_workedyear;
	}
	public String getR_photo() {
		return r_photo;
	}
	public void setR_photo(String r_photo) {
		this.r_photo = r_photo;
	}
	public String getR_graduation() {
		return r_graduation;
	}
	public void setR_graduation(String r_graduation) {
		this.r_graduation = r_graduation;
	}
	public String getR_school() {
		return r_school;
	}
	public void setR_school(String r_school) {
		this.r_school = r_school;
	}
	public String getR_professional() {
		return r_professional;
	}
	public void setR_professional(String r_professional) {
		this.r_professional = r_professional;
	}
	public String getR_graduateyear() {
		return r_graduateyear;
	}
	public void setR_graduateyear(String r_graduateyear) {
		this.r_graduateyear = r_graduateyear;
	}
	public String getR_salary() {
		return r_salary;
	}
	public void setR_salary(String r_salary) {
		this.r_salary = r_salary;
	}
	public String getR_position() {
		return r_position;
	}
	public void setR_position(String r_position) {
		this.r_position = r_position;
	}
	public String getR_city() {
		return r_city;
	}
	public void setR_city(String r_city) {
		this.r_city = r_city;
	}
	public String getR_skill() {
		return r_skill;
	}
	public void setR_skill(String r_skill) {
		this.r_skill = r_skill;
	}
	public String getR_info() {
		return r_info;
	}
	public void setR_info(String r_info) {
		this.r_info = r_info;
	}
	public Integer getR_count() {
		return r_count;
	}
	public void setR_count(Integer r_count) {
		this.r_count = r_count;
	}
	public Integer getR_userid() {
		return r_userid;
	}
	public void setR_userid(Integer r_userid) {
		this.r_userid = r_userid;
	}

	public String getR_updatetime() {
		return r_updatetime;
	}
	public void setR_updatetime(String r_updatetime) {
		this.r_updatetime = r_updatetime;
	}
	@Override
	public String toString() {
		return "Record [r_recordid=" + r_recordid + ", r_recordname=" + r_recordname + ", r_name=" + r_name + ", r_sex="
				+ r_sex + ", r_tel=" + r_tel + ", r_email=" + r_email + ", r_age=" + r_age + ", r_workedyear="
				+ r_workedyear + ", r_photo=" + r_photo + ", r_graduation=" + r_graduation + ", r_school=" + r_school
				+ ", r_professional=" + r_professional + ", r_graduateyear=" + r_graduateyear + ", r_salary=" + r_salary
				+ ", r_position=" + r_position + ", r_city=" + r_city + ", r_skill=" + r_skill + ", r_info=" + r_info
				+ ", r_count=" + r_count + ", r_userid=" + r_userid + ", r_updatetime=" + r_updatetime + "]";
	}


}
	
	

