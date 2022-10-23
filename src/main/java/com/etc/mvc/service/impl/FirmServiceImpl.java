package com.etc.mvc.service.impl;

import com.etc.mvc.dao.FirmDao;
import com.etc.mvc.dto.FilmPositionDto;
import com.etc.mvc.entity.Firm;
import com.etc.mvc.service.FirmService;

public class FirmServiceImpl implements FirmService {

	private FirmDao firmdao;

	public FirmDao getFirmdao() {
		return firmdao;
	}

	public void setFirmdao(FirmDao firmdao) {
		this.firmdao = firmdao;
	}

	@Override
	public boolean regiestFirm(Firm firm) {
		// TODO Auto-generated method stub
		if(firm == null | firm.getFirm_name() == null | firm.getFirm_email() == null | firm.getFirm_tel() == null | firm.getFirm_pwd() == null) {
			return false;
		}
		return firmdao.addFirm(firm);
	}

	@Override
	public Firm firmlogin(String email, String pwd) {
		// TODO Auto-generated method stub
		if(email == null | pwd == null ) {
			return null;
		}
		Firm firm = firmdao.queryfirmByEmailAndPwd(email, pwd).get(0);
		if(firm == null | firm.getFirm_id() == null | firm.getFirm_name() == null ) {
			return null;
		}
		return firm;
	}

	@Override
	public boolean updateFirmInformation(Firm firm, Integer firmid) {
		if(firmid == null | firmid < 0){
			System.out.println("frimid为空或者小于0");
			return  false;
		}else if( firm.getFirm_id()!=firmid) {
			System.out.println("当前编辑的公司id与登录的公司id不匹配");
			return false;
		}else if( firm.getFirm_realname()==null) {
			System.out.println("信息有问题");
			return false;
		}

		if("false".equals(firmdao.updateMyFirm(firm,firmid))){
			System.out.println("sql语句错误");
		}
		return firmdao.updateMyFirm(firm,firmid);

	}

	@Override
	public Firm getfirmInfomationById(Integer firmid) {
		if(firmid!=null & firmid>0) {
			return firmdao.queryfirmByid(firmid);
		}
		return null;
	}

}
