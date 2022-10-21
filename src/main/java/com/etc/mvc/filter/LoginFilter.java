package com.etc.mvc.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;

import com.etc.mvc.entity.Customer;

/**
 * Servlet Filter implementation class LoginFilter
 */
// �����Ҫ�˺ŵ������ܷ��ʵ�ҳ��
//@WebFilter(urlPatterns = {"/DoSubmitRecord","/myjob.jsp"})
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		// ��ServletRequestǿת��HttpServletRequest
		HttpServletRequest request1 = (HttpServletRequest)request;
		// ��ȡSession�е�loginCustomer
		Customer c = (Customer)request1.getSession().getAttribute("logincustomer");
		// �ж�Customer�����Ƿ����
		if(c!=null) {
			chain.doFilter(request,response);
		}else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('�ỰʧЧ�������µ�¼');location.href='login.jsp'</script>");
			out.flush();
			out.close();
		}
		
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
