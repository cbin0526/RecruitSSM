package com.etc.mvc.dao;

import java.util.List;

import com.etc.mvc.entity.Customer;

public interface CustomerDao {
	//用户(求职者)Dao

	/**
	 * 添加求职者账户
	 * @param c 求职者
	 * @return TRUE 添加成功  /  FALSE 添加失败
	 */
	boolean insertCustomer(Customer c);

	/**
	 * 更新求职者信息
	 * @param customerid 求职者账户ID
	 * @param c 更新后的求职者信息
	 * @return TRUE / FALSE
	 */
	boolean updateCustomer(Customer c);

	/**
	 * 删除求职者账户
	 * @param id 求职者id
	 * @return TRUE / FALSE
	 */
	boolean deleteCustomerById(Integer id);

	/**
	 * 模糊查询求职者信息
	 * @param Key 关键字
	 * @return 符合条件的求职者集合
	 */
	List<Customer> queryCustomerByKey(String Key);

	/**
	 * 根据求职者ID查询
	 * @param customerid
	 * @return 符合条件的求职者集合集合
	 */
	List<Customer> queryCustomerById(Integer customerid);

	/**
	 * 查询所有求职者
	 * @return 求职者集合
	 */
	List<Customer> queryAllCustomer();

	/**
	 * 根据用户邮箱和密码查询用户
	 * @param email
	 * @param pwd
	 * @return
	 */
	Customer queryCustomerByEmailAndPwd(String email,String pwd);


}
