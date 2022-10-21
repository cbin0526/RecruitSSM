package com.etc.mvc.service.impl;

import java.util.List;

import com.etc.mvc.dao.RecordstatusDao;
import com.etc.mvc.dto.MySubmitCountDto;
import com.etc.mvc.dto.RecordPositionDto;
import com.etc.mvc.service.RecordstatusService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecordstatusServiceImpl implements RecordstatusService {
	@Autowired
	RecordstatusDao dao;

	public RecordstatusDao getDao() {
		return dao;
	}

	public void setDao(RecordstatusDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean SubmitRecord(Integer rs_positionid, Integer rs_recordid) {
		if(rs_positionid <= 0 | rs_recordid <= 0 | rs_positionid == null | rs_recordid == null) {
			return false;
		}
		return dao.SubmitRecord(rs_positionid, rs_recordid);
	}

	/**
	 * 判断一个用户是否重复投递
	 */
	@Override
	public boolean checkRecordIsSubmit(Integer rs_positionid, Integer u_userid) {
		if(rs_positionid <= 0 | u_userid <= 0 | rs_positionid == null | u_userid == null) {
			return false;
		}else{
			List<MySubmitCountDto> list = dao.checkRecordIsSubmit(rs_positionid, u_userid);
			if(list == null | list.size() <= 0) {
				//没有重复投递返回true
				return true;
			}else {
				MySubmitCountDto mySubmitCountDto = list.get(0);
				Integer submitcount = mySubmitCountDto.getSubmitcount();
				if(submitcount <= 0 | submitcount == null) {
					//没有重复提交
					return true;
				}else if(submitcount > 0){
					//已经有数据
					return false;
				}
			}
		}
		return false;
	}

	@Override
	public boolean deleteRecordStatusByUserId(Integer rs_positionid, Integer u_userid) {
		if(rs_positionid == null | u_userid == null) {
			return false;
		}
		return dao.deleteRecordStatusByUserId(rs_positionid, u_userid);
	}

	@Override
	public RecordPositionDto queryRecordOnSubmit(Integer rs_positionid, Integer u_userid) {
		if(rs_positionid == null | u_userid == null) {
			return null;
		}
		List<RecordPositionDto> list = dao.queryRecordOnSubmit(rs_positionid, u_userid);
		if(list == null | list.size() <= 0) {
			return null;
		}
		return list.get(0);
	}

}
