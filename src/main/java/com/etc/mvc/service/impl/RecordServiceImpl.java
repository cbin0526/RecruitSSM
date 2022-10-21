package com.etc.mvc.service.impl;

import java.util.List;

import com.etc.mvc.dao.RecordDao;
import com.etc.mvc.dto.AllCountDto;
import com.etc.mvc.entity.Record;
import com.etc.mvc.service.RecordService;

public class RecordServiceImpl implements RecordService{
	RecordDao dao;

	public RecordDao getDao() {
		return dao;
	}

	public void setDao(RecordDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean addRecord(Record r, Integer userid) {
		// TODO Auto-generated method stub
		return dao.InsertRecord(r, userid);
	}

	@Override
	public boolean modifyRecord(Record r) {
		if(r == null | r.getR_recordid() == null) {
			return false;
		}
		return dao.updateRecord(r);
	}

	@Override
	public boolean removeRecord(Integer recordid) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Record> showRecordAll(Integer userid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Record showRecordById(Integer r_recordid) {
		if(r_recordid == null) {
			return null;
		}
		List<Record> recordlist = dao.queryOneRecordById(r_recordid);
		System.out.println(recordlist);
		if(recordlist == null | recordlist.size() <= 0) {
			return null;
		}
		return recordlist.get(0);
	}
	@Override
	public Long getAllCountByUid(Integer r_userid) {
		// TODO Auto-generated method stub
		AllCountDto dto=dao.getAllCountByUid(r_userid);
		if (dto!=null) {
			return dto.getAllcount();
		}else {
			return null;
		}
	}
	
}
