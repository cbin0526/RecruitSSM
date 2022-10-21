package com.etc.mvc.dao;

import java.util.List;

import com.etc.mvc.dto.FilmPositionDto;
import com.etc.mvc.dto.MySubmitCountDto;
import com.etc.mvc.dto.RecordPositionDto;

public interface RecordstatusDao {
	/**
	 * 投递简历
	 * @param positionid
	 * @param recordid
	 * @return
	 */
	boolean SubmitRecord(Integer rs_positionid, Integer rs_recordid);

	/**
	 * 一个岗位对应一个人,检查一个人是否重复投递
	 * @param rs_positionid
	 * @param u_userid
	 * @return
	 */
	List<MySubmitCountDto> checkRecordIsSubmit(Integer rs_positionid, Integer u_userid);

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
	 * @return
	 */
	List<RecordPositionDto> queryRecordOnSubmit(Integer rs_positionid, Integer u_userid);

	/**
	 * 更改简历状态表中的状态
	 * @param rs_id 需要更改的简历在简历状态表中的id
	 * @return
	 */
	boolean updateRecordPositionStatus(Integer rs_id,Integer status);
}
