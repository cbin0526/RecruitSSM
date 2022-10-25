package com.etc.mvc.controller;

import com.etc.mvc.dto.MyMassageDto;
import com.etc.mvc.dto.MyRecordPageDto;
import com.etc.mvc.entity.Customer;
import com.etc.mvc.entity.Record;
import com.etc.mvc.service.RecordService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * @author: Admin
 * @time: 2022/10/24 11:03
 */

@Controller
public class RecordController {

    @Autowired
    RecordService service;


    @RequestMapping("/addRecord.do")
    public void addRecord(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //获取表单提交过来的数据
        String recordname=request.getParameter("recordname");
        String name=request.getParameter("name");
        String sex=request.getParameter("gender");
        Integer age=Integer.valueOf(request.getParameter("age"));
        String workedyear=request.getParameter("workedyear");
        String photo = request.getParameter("r_photo");
        String tel=request.getParameter("tel");
        String email=request.getParameter("email");
        String expectCity=request.getParameter("expectCity");
        String expectPosition=request.getParameter("expectPosition");
        String salary=request.getParameter("expectSalary");
        String school=request.getParameter("schoolName");
        String degree=request.getParameter("degree");
        String professional=request.getParameter("professionalName");
        //毕业年龄
        String graduateyear=request.getParameter("companyYearEnd");
        String skill=request.getParameter("workExperience");
        String selfDescription=request.getParameter("selfDescription");

        //获取登录用户
        //获取session中保存的用户
        HttpSession session=request.getSession();
        Customer user=(Customer) session.getAttribute("logincustomer");
        Record record = new Record();
        //封装添加的简历信息
        record.setR_recordname(recordname);
        record.setR_name(name);
        record.setR_age(age);
        record.setR_sex(sex);
        record.setR_tel(tel);
        record.setR_email(email);
        record.setR_age(age);
        record.setR_workedyear(workedyear);
        record.setR_photo(photo);
        record.setR_graduation(degree);
        record.setR_school(school);
        record.setR_graduateyear(graduateyear);
        record.setR_professional(professional);
        record.setR_salary(salary);
        record.setR_position(expectPosition);
        record.setR_city(expectCity);
        record.setR_skill(skill);
        record.setR_info(selfDescription);
        record.setR_userid(user.getU_userid());
        //获取系统当前时间
        Date date=new Date();
        //将该时间转换指定格式的字符串
        DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=df.format(date);
        record.setR_updatetime(time);
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();

        //调用业务逻辑层的添加博客方法
        //暂时设置为添加1号用户的简历
        if(service.addRecord(record,user.getU_userid())) {
            //添加成功
            pw.print("<script>alert('简历添加成功');location.href='jianli.jsp';</script>");
        }else {
            //添加失败
            pw.print("<script>alert('简历添加失败');history.go(-1);</script>");
        }
        pw.flush();
        pw.close();
    }

    @RequestMapping("/getRecordByRId.do")
    public void getRecordByRId(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //获取简历的id

        Integer r_recordid = Integer.valueOf((request.getParameter("r_recordid")));
        //设置输出对象和编码
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if(r_recordid == null) {
            out.print("<script>alert('简历打开失误，请检查网络后重试');history.go(-1);</script>");
            out.flush();
            out.close();
        }else {
            //执行service业务逻辑
            Record record = service.showRecordById(r_recordid);
            System.out.println(record);
            if(record == null | record.getR_recordid() == null) {
                out.print("<script>alert('简历打开失误，请检查网络后重试');history.go(-1);</script>");
                out.flush();
                out.close();
            }else {
                //获取简历成功
                request.setAttribute("MyRecord", record);
                System.out.println(record);
                request.getRequestDispatcher("MyRecordInfo.jsp").forward(request, response);
                //out.print("<script>location.href='MyRecordInfo.jsp';</script>");
                out.flush();
                out.close();
            }
        }
        out.flush();
        out.close();
    }

    @RequestMapping("/updateRecordById.do")
    public void updateRecordById(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //获取表单提交过来的数据
        //隐藏域简历id
        Integer r_recordid = Integer.valueOf((request.getParameter("recordid")));
        String recordname=request.getParameter("recordname");
        String name=request.getParameter("name");
        String sex=request.getParameter("gender");
        Integer age=Integer.valueOf(request.getParameter("age"));
        String r_photo = request.getParameter("r_photo");
        String workedyear=request.getParameter("workedyear");
        String tel=request.getParameter("tel");
        String email=request.getParameter("email");
        String expectCity=request.getParameter("expectCity");
        String expectPosition=request.getParameter("expectPosition");
        String salary=request.getParameter("expectSalary");
        String school=request.getParameter("schoolName");
        String degree=request.getParameter("degree");
        String professional=request.getParameter("professionalName");
        //毕业年龄
        String graduateyear=request.getParameter("companyYearEnd");
        String skill=request.getParameter("workExperience");
        String selfDescription=request.getParameter("selfDescription");
        //阅读次数
        Integer r_count = Integer.valueOf((request.getParameter("r_count")));

        //获取登录用户
        //获取session中保存的用户
        HttpSession session=request.getSession();
        Customer user=(Customer) session.getAttribute("logincustomer");
        Record record = new Record();
        //封装添加的简历信息
        record.setR_recordid(r_recordid);
        record.setR_recordname(recordname);
        record.setR_name(name);
        record.setR_age(age);
        record.setR_sex(sex);
        record.setR_tel(tel);
        record.setR_email(email);
        record.setR_age(age);
        record.setR_workedyear(workedyear);
        record.setR_photo(r_photo);
        record.setR_graduation(degree);
        record.setR_school(school);
        record.setR_graduateyear(graduateyear);
        record.setR_professional(professional);
        record.setR_salary(salary);
        record.setR_position(expectPosition);
        record.setR_city(expectCity);
        record.setR_skill(skill);
        record.setR_info(selfDescription);
        record.setR_count(r_count);
        record.setR_userid(user.getU_userid());
        //获取系统当前时间
        Date date=new Date();
        //将该时间转换指定格式的字符串
        DateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=df.format(date);
        record.setR_updatetime(time);
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();

        //调用业务逻辑层的添加博客方法
        //暂时设置为添加1号用户的简历
        if(service.modifyRecord(record)) {
            //添加成功
            pw.print("<script>alert('简历修改成功');location.href='getRecordByRId.do&r_recordid="+r_recordid+"';</script>");
        }else {
            //添加失败
            pw.print("<script>alert('简历修改失败');history.go(-1);</script>");
        }
        pw.flush();
        pw.close();
    }

    @RequestMapping("/getRecordByUidForAjax.do")
    public void getRecordByUidForAjax(HttpServletRequest request, HttpServletResponse response)throws Exception{
        MyMassageDto my=new MyMassageDto();
        //利用ajax获取个人的日记的数据
        //获取当前用户id
        //获取session中保存的用户
        HttpSession session=request.getSession();
        Customer user=(Customer) session.getAttribute("logincustomer");
        if(user==null) {
            my.setFlag(3);
            my.setMsgcontent("尚未登录，请先登录！");
        }else {
            //初始化page和size的值
            int page=1;
            int size=3;

            //获取请求参数中的page和size的值，如果不能获取或者转换出错则还是默认值
            try {
                page=Integer.valueOf(request.getParameter("page"));
            } catch (Exception e) {
                System.out.println("page参数无法转换");
            }
            try {
                size=Integer.valueOf(request.getParameter("size"));
            } catch (Exception e) {
                System.out.println("page参数无法转换");
            }


            Long allcount=  service.getAllCountByUid(user.getU_userid()) ;
            System.out.println(allcount);
            if(allcount==null||allcount<0)  {
                allcount=0L;
            }

            // 获取总页数
            int maxPage=(int) ((allcount%size==0)?(allcount/size):(allcount/size+1));

            //对当前页数进行上下限容错
            page=page<=0?1:page;
            page=page>maxPage?maxPage:page;

            //查询对应页数和条数的数据
            List<Record> list=service.queryRecotdByPageAndSizeAndUserId(page, size, user.getU_userid());
            list.forEach(item->System.out.println(item));
            //设置要发送的消息
            my.setFlag(1);
            my.setMsgcontent("数据获取成功");
            MyRecordPageDto dto=new MyRecordPageDto();
            dto.setRecordlist(list);
            dto.setMaxPage(maxPage);
            dto.setPage(page);
            dto.setSize(size);
            my.setMsgobject(dto);
        }
        Gson gson=new Gson();
        String myjson= gson.toJson(my);
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();
        System.out.println(request.getQueryString());
        //输出
        pw.print(myjson);
        pw.flush();
        pw.close();
    }

    @RequestMapping("/deleteRecordByRid.do")
    public void deleteRecordByRid(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //隐藏域简历id
        Integer r_recordid = Integer.valueOf((request.getParameter("r_recordid")));
        System.out.println(r_recordid);
        try {

            //4 调用删除日记的业务逻辑
            boolean result=service.deleteRecord(r_recordid);
            //5 根据调用结果判断并执行效果
            //设置响应类型和编码
            response.setContentType("text/html;charset=utf-8");
            //获取指定的输出对象
            PrintWriter pw=response.getWriter();
            if(result) {
                //删除成功
                pw.print("<script>alert('删除简历成功');location.href='jianli.jsp';</script>");
            }else {
                //删除失败
                pw.print("<script>alert('删除简历失败');history.go(-1);</script>");
            }
            pw.flush();
            pw.close();
        } catch (Exception e) {
            //3 try catch将第2步结果进行异常处理
            //设置响应类型和编码
            response.setContentType("text/html;char set=utf-8");
            //获取指定的输出对象
            PrintWriter pw=response.getWriter();
            pw.print("<script>alert('删除的简历id参数非法');history.go(-1);</script>");
            pw.flush();
            pw.close();

        }
    }

    @RequestMapping("/getRecordByRIdInFirm.do")
    public void getRecordByRIdInFirm(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //在公司页面点击简历，根据简历id获取到完整的简历信息
        Integer r_recordid = Integer.valueOf((request.getParameter("r_recordid")));
        //设置输出对象和编码
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if(r_recordid == null) {
            out.print("<script>alert('简历打开失误，请检查网络后重试');history.go(-1);</script>");
            out.flush();
            out.close();
        }else {
            //执行service业务逻辑
            Record record = service.showRecordById(r_recordid);
            System.out.println(record);
            if(record == null | record.getR_recordid() == null) {
                out.print("<script>alert('简历打开失误，请检查网络后重试');history.go(-1);</script>");
                out.flush();
                out.close();
            }else {
                //获取简历成功
                request.setAttribute("MyRecord", record);
                System.out.println(record);
                request.getRequestDispatcher("showrecordbyrecord_id.jsp").forward(request, response);
                //out.print("<script>location.href='MyRecordInfo.jsp';</script>");
                out.flush();
                out.close();
            }
        }
        out.flush();
        out.close();

    }


}
