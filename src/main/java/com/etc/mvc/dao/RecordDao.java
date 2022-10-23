package com.etc.mvc.dao;

import java.util.List;

import com.etc.mvc.dto.AllCountDto;
import com.etc.mvc.entity.Record;

public interface RecordDao {
//简历的Dao

	/**
	 * 添加简历
	 * @param r 简历
	 * @return TRUE / FALSE
	 */
	boolean InsertRecord(Record r);

	/**
	 * 根据简历ID删除简历
	 * @param recordid 简历ID
	 * @return TRUE / FALSE
	 */
	boolean deleteRecord(Integer recordid);

	/**
	 * 根据简历ID更新简历
	 * @param r 更新后的简历
	 * @return TRUE / FALSE
	 */
	boolean updateRecord(Record r);

	/**
	 * 根据用户ID查询其所有简历信息
	 * @param userid 用户ID
	 * @return 所有简历的集合
	 */
	List<Record> queryRecordAll(Integer userid);

	/**
	 * 根据简历id查询简历
	 * @param r_recordid
	 * @return
	 */
	List<Record> queryOneRecordById(Integer r_recordid);

	List<Record> queryRecotdByPageAndSizeAndUserId(Integer page, Integer size, Integer r_recordid);

	AllCountDto getAllCountByUid(Integer r_userid);

}
