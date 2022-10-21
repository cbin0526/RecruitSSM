package com.etc.mvc.dto;

import java.util.ArrayList;
import java.util.List;

public class RecordPositionPageDto {
	private Integer flag;     //flag=0��ʾû������  1��ʾ������
	private Integer page=1;
	private Integer size=5;
	private Integer maxPage=1;
	private List<RecordPositionDto> RecordPositionlist;

	
	public List<RecordPositionDto> getRecordPositionlist() {
		return RecordPositionlist;
	}
	public void setRecordPositionlist(List<RecordPositionDto> recordPositionlist) {
		RecordPositionlist = recordPositionlist;
	}
	public Integer getFlag() {
		return flag;
	}
	public void setFlag(Integer flag) {
		this.flag = flag;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getSize() {
		return size;
	}
	public void setSize(Integer size) {
		this.size = size;
	}
	public Integer getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(Integer maxPage) {
		this.maxPage = maxPage;
	}
	
	
	
}
