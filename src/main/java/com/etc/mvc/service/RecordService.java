package com.etc.mvc.service;

import java.util.List;

import com.etc.mvc.entity.Record;

public interface RecordService {
	//简历

	/**
	 * 添加简历
	 * @param r 简历
	 * @return TRUE / FALSE
	 */
	boolean addRecord(Record r,Integer userid);

	/**
	 * 更新简历信息
	 * @param r 更新后的简历信息
	 * @return TRUE / FALSE
	 */
	boolean modifyRecord(Record r);

	/**
	 * 根据简历ID删除简历
	 * @param recordid 简历ID
	 * @return TRUE / FALSE
	 */
	boolean removeRecord(Integer recordid);

	/**
	 * 展示当前用户的所有简历
	 * @param userid 用户ID
	 * @return 符合条件的简历集合
	 */
	List<Record>showRecordAll(Integer userid);

	/**
	 * 根据简历id查询简历
	 * @param r_recordid 简历id
	 * @return Record 实体类
	 */
	Record showRecordById(Integer r_recordid);

	Long getAllCountByUid(Integer r_userid);

	/**
	 * 查询对应页数和条数的数据
	 * @param page
	 * @param size
	 * @param userid
	 * @return
	 */
	List<Record> queryRecotdByPageAndSizeAndUserId(Integer page,Integer size, Integer userid);

	/**
	 * 删除一个简历
	 * @param r_recordid
	 * @return
	 */
	boolean deleteRecord (Integer r_recordid);

	Record queryOneRecordById(Integer user_id);
}
