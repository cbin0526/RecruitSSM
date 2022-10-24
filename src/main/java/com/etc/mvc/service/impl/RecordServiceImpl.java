package com.etc.mvc.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.etc.mvc.dao.RecordDao;
import com.etc.mvc.dto.AllCountDto;
import com.etc.mvc.entity.Record;
import com.etc.mvc.service.RecordService;
import org.springframework.stereotype.Service;

@Service
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
		r.setR_age(userid);
		return dao.InsertRecord(r);
	}

	@Override
	public boolean modifyRecord(Record r) {
		if(r == null | r.getR_recordid() == null) {
			return false;
		}
		//获取系统当前时间
		Date date=new Date();
		//将该时间转换指定格式的字符串
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//更新时间
		String time=df.format(date);
		r.setR_updatetime(time);
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

	/**
	 * 查询对应页数和条数的数据
	 *
	 * @param page
	 * @param size
	 * @param userid
	 * @return
	 */
	@Override
	public List<Record> queryRecotdByPageAndSizeAndUserId(Integer page, Integer size, Integer userid) {
		if(page == null | size == null | userid == null){
			return null;
		}
		return  dao.queryRecotdByPageAndSizeAndUserId(size*(page-1),size,userid);
	}

	/**
	 * 删除一个简历
	 *
	 * @param r_recordid
	 * @return
	 */
	@Override
	public boolean deleteRecord(Integer r_recordid) {
		if(r_recordid == null | r_recordid <= 0){
			return false;
		}
		return dao.deleteRecord(r_recordid);
	}
}
