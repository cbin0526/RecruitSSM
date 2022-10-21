package com.etc.mvc.controller;

import com.etc.mvc.dto.MyMassageDto;
import com.etc.mvc.entity.Customer;
import com.etc.mvc.service.CustomerService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

/**
 * @author: Admin
 * @time: 2022/10/20 12:22
 */

@Controller
public class CustomerController {

    @Autowired
    CustomerService serviceImpl;

    public CustomerService getServiceImpl() {
        return serviceImpl;
    }

    public void setServiceImpl(CustomerService serviceImpl) {
        this.serviceImpl = serviceImpl;
    }


    @RequestMapping(value = "/checklogin.action")
    public void checklogin(HttpServletRequest request, HttpServletResponse response) throws Exception{
        // 验证登录的方法

        // 获取用户输入的邮箱
        String email = request.getParameter("email");
        // 获取用户输入的密码
        String pwd = request.getParameter("pwd");

        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        // 调用业务逻辑层，实现查找对应的用户邮箱和密码

        Customer c = serviceImpl.login(email, pwd);
        // 判断该用户是否存在,如果存在，则保存在session中，并往前端输出1
        if(c!=null) {

            // 可以找到数据
            if(c.getU_status()==1) {

                // 将当前用户的信息保存在session
                request.getSession().setAttribute("logincustomer", c);
                // 激活状态 1
                out.print(1);
            }else {
                // 禁用状态 2
                out.print(2);
            }
        }else {
            // 未找到数据，输出0
            out.print(0);
        }
        out.flush();
        out.close();
    }

    @RequestMapping("/loginout.action")
    public void loginout(HttpServletRequest request,HttpServletResponse response) throws Exception{
        // 注销-将session设置失效
        //注销当前登录用户
        //获取session对象
        HttpSession session =request.getSession();
        //取出application域中的count的值，减一
        ServletContext application=request.getServletContext();
        session.invalidate();//设置session失效
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();
        pw.print("<script>alert('登录已经失效，请重新登录');location.href='index.jsp';</script>");
        pw.flush();
        pw.close();
    }

    @RequestMapping("/getSession1")
    public void getSession1(HttpServletRequest request,HttpServletResponse response) throws Exception{
        MyMassageDto my=new MyMassageDto();
        HttpSession session=request.getSession();
        Customer user=(Customer) session.getAttribute("logincustomer");
        System.out.println(user);
        PrintWriter pw=response.getWriter();
        my.setFlag(1);
        my.setMsgcontent("数据获取成功");
        my.setMsgobject(user);
        Gson gson = new Gson();
        String myjson= gson.toJson(my);
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        //输出
        pw.print(myjson);
        pw.flush();
        pw.close();
    }

    @RequestMapping("/getSession2")
    public void getSession2(HttpServletRequest request,HttpServletResponse response) throws Exception {
        MyMassageDto my = new MyMassageDto();
        HttpSession session = request.getSession();
        Customer user = (Customer) session.getAttribute("logincustomer");
        PrintWriter pw = response.getWriter();
        response.setContentType("text/html;charset=utf-8");
        if (user == null) {


        } else {
            Gson gson = new Gson();
            String myjson = gson.toJson("1");
            pw.print(myjson);
            pw.flush();
            pw.close();
        }
    }

    @RequestMapping("/addCustomer")
    public void addCustomer(HttpServletRequest request,HttpServletResponse response)throws Exception{
        // 添加用户
        //获取用户注册的信息
        String u_username = request.getParameter("u_username");
        String u_userpwd = request.getParameter("u_userpwd");
        String u_email = request.getParameter("u_email");
        String u_tel = request.getParameter("u_tel");
        //封装成Customer类
        Customer customer = new Customer();
        customer.setU_username(u_username);
        customer.setU_userpwd(u_userpwd);
        customer.setU_email(u_email);
        customer.setU_tel(u_tel);
        //创建输出对象设置字符编码
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        //执行service
        boolean registerflag = serviceImpl.RegisterCustomer(customer);
        if(registerflag == true) {
            //成功注册
            out.print(1);

        }
        else {
            //注册失败
            out.print(0);
        }
    }

    @RequestMapping("/updateCustomer")
    public void updateCustomer(HttpServletRequest request,HttpServletResponse response) throws Exception{
        //获取用户修改的信息
        String u_username=request.getParameter("name");
        String u_tel=request.getParameter("tel");
        String u_email=request.getParameter("email");
        //获取用户id
        HttpSession session=request.getSession();
        Customer user=(Customer) session.getAttribute("logincustomer");
        user.getU_userid();
        //将获取的用户信息封装到user中
        user.setU_username(u_username);
        user.setU_tel(u_tel);
        user.setU_email(u_email);
        //掉用业务逻辑根据id修改用户信息。
        boolean result=serviceImpl.updateCustomer(user.getU_userid(), user);
        response.setContentType("text/html;charset=utf-8");
        //创建输出对象
        PrintWriter out = response.getWriter();
        if(result) {
            out.print("<script>alert('个人信息完善成功')</script>");
            //将在session域中的"logincustomer"更新
            session.setAttribute("logincustomer", user);
            //转发回jianli.jsp页面
            request.getRequestDispatcher("jianli.jsp").forward(request, response);
        }else {
            out.print("<script>alert('个人信息完善失败')</script>");

        }
        out.flush();
        out.close();

    }
}