package com.etc.mvc.dao;

import com.etc.mvc.dto.MyMassageDto;
import com.etc.mvc.entity.Firm;

import java.util.List;

public interface FirmDao {

	/**
	 * 添加一个公司账户
	 * @param firm
	 * @return true 成功 / false 失败
	 */
	boolean addFirm(Firm firm);

	/**
	 * 用名字模糊查询多个公司
	 * @return 返回MyMassageDto
	 */
	List<MyMassageDto> queryfirmByname(String firm_realname);

	/**
	 * 用公司类型模糊查询公司
	 * @param firm_type
	 * @return 返回MyMassageDto
	 */
	List<MyMassageDto> queryFirmByFirmtype(String firm_type);

	/**
	 * 修改公司的信息，只能更新自己
	 * @param firm
	 * @return true 成功 / false 失败
	 */
	boolean updateMyFirm(Firm firm);

	/**
	 * 通过邮箱和密码查询一个公司
	 * @param email
	 * @param pwd
	 * @return 返回一个firm列表
	 */
	List<Firm> queryfirmByEmailAndPwd(String email,String pwd);

	/**
	 * 根据公司id返回公司信息
	 * @param firmid 公司ID
	 * @return 公司信息
	 */
	Firm queryfirmByid(Integer firmid);
}
