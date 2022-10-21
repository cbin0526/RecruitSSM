package com.etc.mvc.service;

import java.util.List;

import com.etc.mvc.dto.FilmPositionDto;
import com.etc.mvc.entity.Customer;
import com.etc.mvc.entity.Firm;
import com.etc.mvc.entity.Position;
import com.etc.mvc.entity.Record;

public interface FirmService {

	/**
	 * 注册公司账号
	 * @param firm
	 * @return TRUE / FALSE
	 */
	boolean regiestFirm(Firm firm);

	/**
	 *
	 * @param email 电子邮箱
	 * @param pwd 密码
	 * @return
	 */
	Firm firmlogin(String email,String pwd);

	/**
	 * 完善公司信息
	 * @param firm 完善后的公司信息
	 * @param firmid 需要完善的公司id
	 * @return TRUE / FALSE
	 */
	boolean updateFirmInformation(Firm firm,Integer firmid);

	/**
	 * 根据公司ID查询公司信息
	 * @param firmid 公司ID
	 * @return 符合条件的公司信息 /null
	 */
	Firm getfirmInfomationById(Integer firmid);

}
