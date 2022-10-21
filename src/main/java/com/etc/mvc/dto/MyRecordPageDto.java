package com.etc.mvc.dto;

import java.util.ArrayList;
import java.util.List;

import com.etc.mvc.entity.Record;



public class MyRecordPageDto {
	private Integer page=1;
	private Integer size=2;
	private Integer maxPage=1;
	private List<Record> recordlist=new ArrayList<Record>();
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
	public List<Record> getRecordlist() {
		return recordlist;
	}
	public void setRecordlist(List<Record> recordlist) {
		this.recordlist = recordlist;
	}

	
}
