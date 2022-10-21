package com.etc.mvc.service;

import java.util.List;

import com.etc.mvc.dto.MySubmitCountDto;
import com.etc.mvc.dto.RecordPositionDto;

public interface RecordstatusService {

	/**
	 * 投递简历
	 * @param positionid 岗位id
	 * @param recordid 简历id
	 * @return true添加成功
	 */
	boolean SubmitRecord(Integer rs_positionid, Integer rs_recordid);

	/**
	 * 一个岗位对应一个人,检查一个人是否重复投递
	 * @param rs_positionid 岗位id
	 * @param u_userid 用户id
	 * @return 返回boolean true 可以插入没有重复投递 //false 已经投递简历,不能插入
	 */
	boolean checkRecordIsSubmit(Integer rs_positionid, Integer u_userid);

	/**
	 * @param rs_positionid 岗位id
	 * @param u_userid 用户id
	 * @return	true删除成功
	 */
	boolean deleteRecordStatusByUserId(Integer rs_positionid,Integer u_userid);

	/**
	 * 查询当前用户对于当前岗位的简历
	 * @param rs_positionid
	 * @param u_userid
	 * @return 返回一个简历对象
	 */
	RecordPositionDto queryRecordOnSubmit(Integer rs_positionid, Integer u_userid);
}
