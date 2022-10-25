package com.etc.mvc.service.impl;

import java.util.List;

import com.etc.mvc.dao.PositionDao;
import com.etc.mvc.dao.RecordstatusDao;
import com.etc.mvc.dto.AllCountDto;
import com.etc.mvc.dto.FilmPositionDto;
import com.etc.mvc.dto.RecordPositionDto;
import com.etc.mvc.entity.Position;
import com.etc.mvc.service.PositionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PositionServiceImpi implements PositionService{

	@Autowired
	PositionDao dao;
	public PositionDao getDao() {
		return dao;
	}

	public void setDao(PositionDao dao) {
		this.dao = dao;
	}

	RecordstatusDao rsdao;

	public RecordstatusDao getRsdao() {
		return rsdao;
	}

	public void setRsdao(RecordstatusDao rsdao) {
		this.rsdao = rsdao;
	}

	@Override
	public List<Position> queryPosition(Integer page, Integer size) {
		if (page==null||page<1||size==null||size<1) {
			return null;
		}
		return dao.queryPosition((page-1)*size,size);
	}
	@Override
	public Long getAllCountPosition() {
		AllCountDto dto=dao.getPositionCount();
		if (dto!=null) {
			return dto.getAllcount();
		}else {
			return null;
		}
	}
	@Override
	public List<FilmPositionDto> queryFilmPosition(Integer page, Integer size) {
		if (page==null||page<1||size==null||size<1) {
			return null;
		}
		return dao.queryFilmPosition((page-1)*size,size);
	}
	@Override
	public List<FilmPositionDto> queryFilmPositionByKey(Integer page, Integer size, String key) {
		if (page==null||page<1||size==null||size<1) {
			return null;
		}
		key = "%"+key+"%";
		return dao.queryFilmPositionByKey((page-1)*size,size, key);
	}
	@Override
	public Long getPositionCountByKey(String key) {
		key = "%"+key+"%";
		AllCountDto dto=dao.getPositionCountByKey(key);
		if (dto!=null) {
			return dto.getAllcount();
		}else {
			return null;
		}
	}

	@Override
	public List<Position> quaryposition(Integer page, Integer size, Integer firmid) {
		if (page==null||page<1||size==null||size<1) {
			return null;
		}
		return dao.quaryposition((page-1)*size,size, firmid);
	}
	@Override
	public Long getPositionCountByFirmId(Integer firmid) {
		AllCountDto dto=dao.getPositionCountByFirmId(firmid);
		if (dto!=null) {
			return dto.getAllcount();
		}else {
			return null;
		}
	}




	@Override
	public boolean updatePosition(FilmPositionDto position) {
		// TODO Auto-generated method stub
		if(position == null | position.getP_id() == null | position.getP_firmid() == null) {
			return false;
		}
		return dao.updatePosition(position);
	}


	@Override
	public boolean addPosition(FilmPositionDto position) {
		if(position == null | position.getP_firmid() == null |position.getP_name() == null) {
			return false;
		}
		return dao.addPosition(position);
	}

	@Override
	public FilmPositionDto queryPositionById(Integer p_id) {
		// TODO Auto-generated method stub
		if(p_id == null) {
			return null;
		}
		List<FilmPositionDto> list = dao.queryPositionById(p_id);
		if(list == null | list.size() <= 0) {
			return null;
		}else {
			return list.get(0);
		}
	}


	@Override
	public List<RecordPositionDto> queryRecordByPositionid(Integer positionid,Integer page,Integer size,Integer status) {
		if( positionid==null) {
			System.out.println("Error:firmid/recordid/positionid==null");
			return null;
		}else{
			return dao.queryRecordByPositionid(positionid, page, size,status);
		}
	}

	@Override
	public Long getRecordCountRecordByPosition(Integer positionid) {
		AllCountDto dto=dao.CountRecordByPosition(positionid);
		if (dto!=null) {
			return dto.getAllcount();
		}else {
			return null;
		}
	}

	@Override
	public List<FilmPositionDto> getUserPositionByUserid(Integer page ,Integer size,Integer userid) {
		if (userid==null|userid<0) {
			return null;
		}
		return dao.getUserPositionByUserid(page ,size,userid);
	}
	@Override
	public long getAllcountByUserid(Integer userid) {
		AllCountDto dto= dao.getAllcountByUserid(userid);
		return dto.getAllcount();
	}

	@Override
	public boolean deletePosition(Integer p_id) {

		return dao.deletePosition(p_id);
	}


	@Override
	public boolean updateRecordPositionStatus(Integer rs_id,Integer status) {
		if(rs_id==null || rs_id<=0) {
			System.out.println("Error:rs_id==null | rs_id<=0");
			return false;
		}

		return rsdao.updateRecordPositionStatus(rs_id, status);
	}
	@Override
	public List<RecordPositionDto> queryRecordBypid(Integer positionid, Integer page, Integer size) {
		List<RecordPositionDto> list =dao.queryRecordBypid(positionid, page, size);
		if(list.size()==0 | list==null) {
			System.out.println("当前岗位没有人投递简历");
		}
		return list;
	}




}
