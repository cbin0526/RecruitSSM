package com.etc.mvc.service;

import com.etc.mvc.entity.Customer;

public interface CustomerService {

	/**
	 * 注册用户
	 * @param customer
	 * @return ture 注册成功
	 */
	boolean RegisterCustomer(Customer customer);

	/**
	 * 用户登入
	 * @param email	邮箱
	 * @param pwd	密码
	 * @return	返回customer对象
	 */
	Customer login(String email, String pwd);
	/**
	 * 更新求职者信息
	 * @param customerid 求职者账户ID
	 * @param c 更新后的求职者信息
	 * @return TRUE / FALSE
	 */
	boolean updateCustomer(Integer customerid,Customer c);

}
