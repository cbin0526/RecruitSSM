package com.etc.mvc.entity;

public class Recordstatus {
	//简历状态表id
	private Integer rs_id;
	//状态（进度：未查看0/已查看1/接纳2/驳回3）
	private Integer rs_status;
	//简历id（外键）
	private Integer rs_recordid;
	//岗位id（外键）
	private Integer rs_positionid;

	public Integer getRs_id() {
		return rs_id;
	}

	public void setRs_id(Integer rs_id) {
		this.rs_id = rs_id;
	}

	public Integer getRs_status() {
		return rs_status;
	}

	public void setRs_status(Integer rs_status) {
		this.rs_status = rs_status;
	}

	public Integer getRs_recordid() {
		return rs_recordid;
	}

	public void setRs_recuritid(Integer rs_recordid) {
		this.rs_recordid = rs_recordid;
	}

	public Integer getRs_positionid() {
		return rs_positionid;
	}

	public void setRs_jobid(Integer rs_positionid) {
		this.rs_positionid = rs_positionid;
	}

	@Override
	public String toString() {
		return "Recordstatus [rs_id=" + rs_id + ", rs_status=" + rs_status + ", rs_recordid=" + rs_recordid
				+ ", rs_positionid=" + rs_positionid + "]";
	}


}
