package com.etc.mvc.controller;

import com.etc.mvc.entity.Firm;
import com.etc.mvc.service.FirmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

/**
 * @author: Admin
 * @time: 2022/10/24 9:33
 */

@Controller
public class FirmController {

    @Autowired
    FirmService firmService;

    @RequestMapping("/addFirm.do")
    public void addFirm(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //注册公司
        //获取ajax传递过来的参数
        String firm_name = request.getParameter("firm_name");
        String firm_pwd = request.getParameter("firm_pwd");
        String firm_tel = request.getParameter("firm_tel");
        String firm_email = request.getParameter("firm_email");
        //封装成Firm对象
        Firm firm = new Firm();
        firm.setFirm_name(firm_name);
        firm.setFirm_pwd(firm_pwd);
        firm.setFirm_tel(firm_tel);
        firm.setFirm_email(firm_email);
        //调用serverImpl实现业务逻辑
        boolean regiestflag = firmService.regiestFirm(firm);
        //创建输出对象
        PrintWriter out = response.getWriter();
        if(regiestflag) {
            //注册成功
            out.print(1);
            out.flush();
            out.close();
        }else {
            //注册失败
            out.print(0);
            out.flush();
            out.close();
        }
    }

    @RequestMapping("/loginfirm.do")
    public void loginfirm(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String firm_email = request.getParameter("firm_email");
        String firm_pwd = request.getParameter("firm_pwd");

        //调用serverImpl实现业务逻辑
        Firm firm = firmService.firmlogin(firm_email, firm_pwd);
        if(firm==null) {
            PrintWriter out = response.getWriter();
            //登入失败
            out.print(0);
            out.flush();
            out.close();

        }else {
            //将firm设置到session域
            HttpSession session = request.getSession();
            session.setAttribute("loginfirm", firm);
            //创建输出对象
            PrintWriter out = response.getWriter();
            System.out.println(firm.getFirm_id());

            //登入成功
            out.print(1);
            out.flush();
            out.close();

        }
    }

    @RequestMapping("/editFirm.do")
    private void editFirm(HttpServletRequest request,HttpServletResponse response) throws Exception {
        //编辑修改公司信息
        System.out.println("进入DoFirm的editfirm标杆中");
        //获取当前登录的公司对象
        Firm firm = (Firm) request.getSession().getAttribute("loginfirm");
        //获取传递过来的参数
        String firm_realname = request.getParameter("firm_realname");
        String firm_logo = request.getParameter("firm_logo");
        //String firm_logo =null;
        String firm_type = request.getParameter("firm_type");
        String firm_birthday = request.getParameter("firm_birthday");
        String firm_creditcode = request.getParameter("firm_creditcode");
        String firm_legalperson = request.getParameter("firm_legalperson");
        String firm_address = request.getParameter("firm_address");
        String firm_info = request.getParameter("firm_info");

        System.out.println("公司名称:" + firm_realname + ",公司类型:" + firm_type + ",公司的社会信用代码:" + firm_creditcode + ",公司法人:" + firm_legalperson + ",公司地址:" + firm_address + ",公司介绍:" + firm_info);
        if (firm != null) {
            //封装成Firm对象
            Firm f = new Firm();
            f.setFirm_id(firm.getFirm_id());
            f.setFirm_realname(firm_realname);
            f.setFirm_logo(firm_logo);
            f.setFirm_type(firm_type);
            f.setFirm_birthday(firm_birthday);
            f.setFirm_creditcode(firm_creditcode);
            f.setFirm_legalperson(firm_legalperson);
            f.setFirm_address(firm_address);
            f.setFirm_info(firm_info);
            //调用serverImpl实现业务逻辑
            boolean updateflag = firmService.updateFirmInformation(f, firm.getFirm_id());
            //创建输出对象
            PrintWriter out = response.getWriter();
            response.setContentType("text/html;charset=utf-8");
            if (updateflag) {
                //
                out.print("<script>alert('公司信息完善成功');location.href='DoFirm?flag=getFirmByLoginfirm'</script>");

            } else {
                //
                out.print("<script>alert('公司信息完善失败');history.go(-1);</script>");

            }
            out.flush();
            out.close();
        }
    }

    @RequestMapping("/getFirmByLoginfirm.do")
    public void getFirmByLoginfirm(HttpServletRequest request, HttpServletResponse response) throws Exception{
        /**得到当前登录的公司信息,和完善完公司信息后的页面展示**/

        //首先从会话域中获取当前登录的Firm对象
        Firm firm = (Firm) request.getSession().getAttribute("loginfirm");
        if(firm!=null) {
            //查询当前firm对象的所有信息
            Integer firmid=firm.getFirm_id();
            //调用业务逻辑 查询公司信息
            Firm f=firmService.getfirmInfomationById(firmid);
            if(f!=null & f.getFirm_email()!=null) {
                //将session域中的firm重新更新
                HttpSession session = request.getSession();
                session.setAttribute("loginfirm", f);
                //转发
                request.getRequestDispatcher("firmindex.jsp").forward(request, response);
            }

        }else {
            //如果当期firm对象不存在则跳转到登录页面
            //设置响应类型和编码
            response.setContentType("text/html;charset=utf-8");
            //获取指定的输出对象
            PrintWriter out=response.getWriter();
            out.print("<script>alert('会话失效，请先登录');location.href='login.jsp';</script>");
            out.flush();
            out.close();
        }
    }
    @RequestMapping("/firmout.do")
    public void firmout(HttpServletRequest request, HttpServletResponse response) throws Exception{
        // 注销-将session设置失效
        //注销当前登录用户
        //获取session对象
        HttpSession session =request.getSession();
        session.invalidate();//设置session失效
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();
        pw.print("<script>alert('你已退出登录。');location.href='login.html';</script>");
        pw.flush();
        pw.close();
    }

}
