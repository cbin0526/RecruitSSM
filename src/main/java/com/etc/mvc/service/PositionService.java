package com.etc.mvc.service;

import java.util.List;

import com.etc.mvc.dto.AllCountDto;
import com.etc.mvc.dto.FilmPositionDto;
import com.etc.mvc.dto.RecordPositionDto;
import com.etc.mvc.entity.Customer;
import com.etc.mvc.entity.Position;
import com.etc.mvc.entity.Record;

public interface PositionService {
	/**
	 * 分页查询工作岗位
	 * @param page 当前页数
	 * @param size 每页显示条数
	 * @return 	分页查询的结果
	 *  */
	List<Position> queryPosition(Integer page,Integer size);

	/**
	 * 分页查询工作岗位和公司信息
	 * @param page当前页数
	 * @param size每页显示条数
	 * @return 	分页查询的结果
	 */
	List<FilmPositionDto> queryFilmPosition(Integer page, Integer size);

	/**
	 * 	根据关键字模糊查询
	 * @param page 当前页数
	 * @param size 每页显示条数
	 * @param key	关键字
	 * @return 分页查询的结果
	 */
	List<FilmPositionDto> queryFilmPositionByKey(Integer page,Integer size,String key);

	/**
	 * 查询总条数
	 * @return 总条数
	 */
	Long getAllCountPosition();
	/**
	 * 查询模糊查询工作岗位的总条数
	 * @param key
	 * @return
	 */
	Long getPositionCountByKey(String key);
	/**
	 * 添加一个岗位
	 * @param position
	 * @return true 添加成功/false 添加失败
	 */
	boolean addPosition(FilmPositionDto position);

	/**
	 * 	分页查询单个公司的工作岗位
	 * @param page 当前页数
	 * @param size	每页显示条数
	 * @param firmid	公司id
	 * @return
	 */
	List<Position> quaryposition(Integer page,Integer size,Integer firmid);

	/**
	 * 查询该公司的工作岗位的总条数
	 * @param key
	 * @return
	 */
	Long getPositionCountByFirmId(Integer firmid);

	public FilmPositionDto queryPositionById(Integer p_id);

	public boolean updatePosition(FilmPositionDto position) ;

	/**
	 * 查询当前公司的某个岗位收到的简历
	 * @param positionid 岗位信息
	 * @param page 页数
	 * @param size 显示条数
	 * @param status 简历状态
	 * @return 符合条件的 集合
	 */
	List<RecordPositionDto> queryRecordByPositionid(Integer positionid,Integer page,Integer size,Integer status);

	/**
	 * 当前岗位收到的简历数
	 * @param positionid 岗位id
	 * @return 收到的简历数
	 */
	Long getRecordCountRecordByPosition(Integer positionid);


	/**
	 * 查询用户投递的工作岗位
	 * @param userid 用户id
	 * @return 用户投递的工作岗位
	 */
	List<FilmPositionDto> getUserPositionByUserid(Integer page ,Integer size,Integer userid);

	/**
	 * 查询用户投递的岗位的总条数
	 * @param userid 用户id
	 * @return	用户投递的岗位的总条数
	 */
	long getAllcountByUserid(Integer userid);

	/**
	 * 删除一个工作岗位
	 * @return
	 */
	boolean deletePosition(Integer p_id);


	/**
	 * 更新简历状态表的状态
	 * @param rs_id 简历状态表的id
	 * @param status 简历状态 -->0代表已查看，1代表通过，2代表驳回
	 * @return
	 */
	boolean updateRecordPositionStatus(Integer rs_id,Integer status);

	/**
	 * 查询某个岗位收到的所有简历
	 * @param positionid 岗位ID
	 * @param page
	 * @param size
	 * @return
	 */
	List<RecordPositionDto> queryRecordBypid(Integer positionid,Integer page,Integer size);
}
