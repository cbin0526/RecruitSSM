package com.etc.mvc.controller;

import com.etc.mvc.dto.RecordPositionDto;
import com.etc.mvc.service.RecordstatusService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * @author: Admin
 * @time: 2022/10/25 10:16
 */

@Controller
public class SubmitRecordController {
    //创建service实现类
    @Autowired
    RecordstatusService service;

    @RequestMapping("/SubmitRecord.do")
    public void SubmitRecord(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //投递简历
        //获取岗位id和用户id和简历id
        Integer u_userid = Integer.valueOf(request.getParameter("u_userid"));
        Integer rs_positionid = Integer.valueOf(request.getParameter("p_id"));
        Integer rs_recordid = Integer.valueOf(request.getParameter("r_recordid"));
        System.out.println("u_userid"+u_userid);
        System.out.println("rs_positionid"+rs_positionid);
        System.out.println("rs_recordid"+rs_recordid);
        //设置相应编码
        response.setContentType("text/html;charset=utf-8");
        //设置输出对象
        PrintWriter out = response.getWriter();
        //调用业务逻辑判断是否重复投递
        boolean checkRecordIsSubmit = service.checkRecordIsSubmit(rs_positionid, u_userid);

        if(checkRecordIsSubmit) {
            System.out.println("没有重复投递");
            //没有重复投递
            //执行业务逻辑投递简历
            boolean submitRecord = service.SubmitRecord(rs_positionid, rs_recordid);
            if(submitRecord) {
                System.out.println("添加成功");
                //添加成功
                out.print("1");
                out.flush();
                out.close();
            }else {
                //添加失败
                out.print("0");
                out.flush();
                out.close();
            }
        }else {
            //重复投递
            out.print("2");
            out.flush();
            out.close();
        }
        out.flush();
        out.close();
    }

    @RequestMapping("/selectRecord.do")
    public void selectRecord(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //获取岗位id
        Integer p_id = Integer.valueOf(request.getParameter("p_id"));
        request.setAttribute("p_id", p_id);
        request.getRequestDispatcher("/submitRec.jsp").forward(request, response);
    }

    @RequestMapping("/checkRecord.do")
    public void checkRecord(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //获取岗位id
        Integer p_id = Integer.valueOf(request.getParameter("p_id"));
        //获取用户id
        Integer u_userid = Integer.valueOf(request.getParameter("u_userid"));
        //调用service层执行业务逻辑，判断是否已经投递简历
        boolean checkRecordIsSubmitflag = service.checkRecordIsSubmit(p_id, u_userid);
        //设置字符编码
        response.setContentType("text/html;charset=utf-8");
        //创建输出对象
        PrintWriter out = response.getWriter();
        if(checkRecordIsSubmitflag) {
            //没有投递
            out.print("没有投递");
            out.flush();
            out.close();
        }else if(!checkRecordIsSubmitflag){
            //投递过了
            out.print("投递过了");
            out.flush();
            out.close();
        }
        out.flush();
        out.close();
    }

    @RequestMapping("/showMySubmit.do")
    public void showMySubmit(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //获取岗位id
        Integer p_id = Integer.valueOf(request.getParameter("p_id"));
        //获取用户id
        Integer u_userid = Integer.valueOf(request.getParameter("u_userid"));
        //调用service层执行业务逻辑，查询已经提交的简历
        RecordPositionDto record = service.queryRecordOnSubmit(p_id, u_userid);
        //设置字符编码
        response.setContentType("text/html;charset=utf-8");
        //创建输出对象
        PrintWriter out = response.getWriter();
        String json = new Gson().toJson(record);
        out.print(json);
        out.flush();
        out.close();
    }

    @RequestMapping("/removeMySubmit.do")
    public void removeMySubmit(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //获取岗位id
        Integer p_id = Integer.valueOf(request.getParameter("p_id"));
        //获取用户id
        Integer u_userid = Integer.valueOf(request.getParameter("u_userid"));
        //调用service层执行业务逻辑，移除已经提交的简历
        boolean removeflag = service.deleteRecordStatusByUserId(p_id, u_userid);
        //设置字符编码
        response.setContentType("text/html;charset=utf-8");
        //创建输出对象
        PrintWriter out = response.getWriter();
        if(removeflag) {
            //移除成功
            out.print("1");
            out.flush();
            out.close();
        }else if(!removeflag){
            //移除失败
            out.print("0");
            out.flush();
            out.close();
        }
        out.flush();
        out.close();
    }
}