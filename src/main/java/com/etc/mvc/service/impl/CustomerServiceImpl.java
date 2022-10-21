package com.etc.mvc.service.impl;

import com.etc.mvc.dao.CustomerDao;
import com.etc.mvc.entity.Customer;
import com.etc.mvc.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao dao;

	public CustomerDao getDao() {
		return dao;
	}

	public void setDao(CustomerDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean RegisterCustomer(Customer customer) {
		if(customer == null | customer.getU_email() == null | customer.getU_username() == null | customer.getU_userpwd() == null | customer.getU_tel() == null) {
			return false;
		}
		return dao.insertCustomer(customer);
	}



	@Override
	public Customer login(String email, String pwd) {

		if(email==null || pwd==null ) {
			return null;
		}

		return dao.queryCustomerByEmailAndPwd(email, pwd);
	}



	@Override
	public boolean updateCustomer(Integer customerid, Customer c) {
		if(c == null | c.getU_email() == null | c.getU_username() == null | c.getU_tel() == null) {
			return false;
		}
		return dao.updateCustomer(c);
	}

}
