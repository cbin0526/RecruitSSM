package com.etc.mvc.dao;

import java.util.List;

import com.etc.mvc.dto.AllCountDto;
import com.etc.mvc.dto.FilmPositionDto;
import com.etc.mvc.dto.RecordPositionDto;
import com.etc.mvc.entity.Position;

public interface PositionDao {
	/**
	 * 分页查询所以工作岗位
	 * @param page 当前页数
	 * @param size 每页显示条数
	 * @return 	分页查询的结果
	 *  */
	List<Position> queryPosition(Integer page,Integer size);

	/**
	 *
	 * @param page当前页数
	 * @param size
	 * @return	封装好公司和公司岗位的信息
	 */
	List<FilmPositionDto> queryFilmPosition(Integer page,Integer size);

	/**
	 * 	根据关键字模糊查询
	 * @param page 当前页数
	 * @param size 每页显示条数
	 * @param key	关键字
	 * @return 分页查询的结果
	 */
	List<FilmPositionDto> queryFilmPositionByKey(Integer page,Integer size,String key);

	/**
	 * 查询所有工作岗位的总条数
	 * @return
	 */
	AllCountDto getPositionCount();

	/**
	 * 查询模糊查询工作岗位的总条数
	 * @param key
	 * @return
	 */
	AllCountDto getPositionCountByKey(String key);

	/**
	 * 删除一个工作岗位
	 * @return
	 */
	boolean deletePosition(Integer p_id);

	/**
	 * 添加一个工作岗位
	 * @return
	 */
	boolean addPosition(FilmPositionDto position);



	FilmPositionDto getPositionDetailByPid(Integer p_id);


	/**
	 * 	分页查询单个公司的工作岗位
	 * @param page 当前页数
	 * @param size	每页显示条数
	 * @param firmid	公司id
	 * @return
	 */
	List<Position> quaryposition(Integer page,Integer size,Integer firmid);

	/**
	 * 根据id查询一个工作岗位
	 * @param p_id
	 * @return List<FilmPositionDto>
	 */
	List<FilmPositionDto> queryPositionById(Integer p_id);

	/**
	 * 查询该公司的工作岗位的总条数
	 * @param key
	 * @return
	 */
	AllCountDto getPositionCountByFirmId(Integer firmid);

	/**
	 * 更新一个岗位
	 * @param position
	 * @return
	 */
	boolean updatePosition (FilmPositionDto position);

	/**
	 * 查询当前岗位收到的简历数量
	 * @param positionid 岗位id
	 * @return
	 */
	AllCountDto CountRecordByPosition(Integer positionid);


	/**
	 * 查询某个岗位收到的所有简历
	 * @param positionid 岗位ID
	 * @param page
	 * @param size
	 * @param status 简历状态
	 * @return
	 */
	List<RecordPositionDto> queryRecordByPositionid(Integer positionid,Integer page,Integer size,Integer status);

	/**
	 * 查询某个岗位收到的所有简历
	 * @param positionid 岗位ID
	 * @param page
	 * @param size
	 * @return
	 */
	List<RecordPositionDto> queryRecordBypid(Integer positionid,Integer page,Integer size);
	/**
	 * 查询投递的工作岗位
	 * @param page
	 * @param size
	 * @param userid
	 * @return
	 */
	List<FilmPositionDto> getUserPositionByUserid(Integer page ,Integer size,Integer userid);

	/**
	 * 查询投递工作岗位的条数
	 * @param userid
	 * @return
	 */
	AllCountDto getAllcountByUserid(Integer userid);
}
