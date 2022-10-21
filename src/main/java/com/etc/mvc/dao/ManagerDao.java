package com.etc.mvc.dao;


import com.etc.mvc.entity.Manager;

import java.util.List;

public interface ManagerDao {
	//后台管理员

	/**
	 * 添加管理员
	 * @param m 管理员
	 * @return TRUE 添加成功  /  FALSE 添加失败
	 */
	boolean insertManager(Manager m);

	/**
	 * 更新管理员信息
	 * @param m 更新后的管理员信息
	 * @return TRUE 更新成功  /  FALSE 更新失败
	 */
	boolean updateManager(Manager m);

	/**
	 * 根据ID删除管理员
	 * @param managerid
	 * @return
	 */
	boolean deleteManagerById(Integer managerid);

	/**
	 * 根据ID查询管理员
	 * @param managerid 管理员ID
	 * @return 指定的管理员
	 */
	Manager queryManagerById(Integer managerid);

	/**
	 * 对管理员进行模糊查询
	 * @param key 关键字
	 * @return 符合要求的管理员集合
	 */
	List<Manager> queryManagerBykey(String key);

}
