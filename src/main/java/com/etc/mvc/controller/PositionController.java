package com.etc.mvc.controller;

import com.etc.mvc.dto.*;
import com.etc.mvc.entity.Firm;
import com.etc.mvc.entity.Position;
import com.etc.mvc.service.PositionService;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * @author: Admin
 * @time: 2022/10/24 9:57
 */

@Controller
public class PositionController {

    @Autowired
    PositionService service;

    @RequestMapping("/ForGetFirmPosition.do")
    public void ForGetFirmPosition(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Integer page = 1; //page默认显示页数
        Integer size = 7; //size默认显示条数
        Integer maxpage = 1; //最大页数
        //从请求中获取 page和size
        if (request.getParameter("page") != null) {
            try {
                //将获取的字符串类型转换为int类型
                page = Integer.valueOf(request.getParameter("page"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的page参数有问题，设置默认值");
            }
        }
        if (request.getParameter("size") != null) {
            try {
                //将获取的字符串类型转换为int类型
                size = Integer.valueOf(request.getParameter("size"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的size参数有问题，设置默认值");
            }
        }
        //获取工作岗位的总条数
        long allcount = service.getAllCountPosition();
        //获取总页数
        maxpage = (int) ((allcount % size == 0) ? (allcount / size) : (allcount / size + 1));
        //对page上下限进行容错
        page = page <= 0 ? 1 : page;
        page = page > maxpage ? maxpage : page;
        //获取当前对应的page和size数据
        List<FilmPositionDto> list = service.queryFilmPosition(page, size);
        list.forEach(item -> System.out.println(item.getP_id()));
        //将list保存在请求域中
        request.setAttribute("list", list);
        //将page保存在请求域中
        request.setAttribute("page", page);
        //将size保存在请求域中
        request.setAttribute("size", size);
        //将maxpage保存在请求域中
        request.setAttribute("maxpage", maxpage);
        //转发
        request.getRequestDispatcher("positionlist.jsp").forward(request, response);
    }

    @RequestMapping("/ForGetFirmPositionByKey.do")
    public void ForGetFirmPositionByKey(HttpServletRequest request, HttpServletResponse response) throws Exception {
        Integer page = 1; //page默认显示页数
        Integer size = 7; //size默认显示条数
        Integer maxpage = 1; //最大页数
        String key = "";
        if (!("".equals(request.getParameter("key")))) {
            key = request.getParameter("key");
        }
        System.out.println(key);
        //从请求中获取 page和size
        if (request.getParameter("page") != null) {
            try {
                //将获取的字符串类型转换为int类型
                page = Integer.valueOf(request.getParameter("page"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的page参数有问题，设置默认值");
            }
        }
        if (request.getParameter("size") != null) {
            try {
                //将获取的字符串类型转换为int类型
                size = Integer.valueOf(request.getParameter("size"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的size参数有问题，设置默认值");
            }
        }
        //获取模糊查询工作岗位的总条数
        long allcount = service.getPositionCountByKey(key);
        //获取总页数
        maxpage = (int) ((allcount % size == 0) ? (allcount / size) : (allcount / size + 1));
        //对page上下限进行容错
        page = page <= 0 ? 1 : page;
        page = page > maxpage ? maxpage : page;
        //获取当前对应的page和size数据
        List<FilmPositionDto> list = service.queryFilmPositionByKey(page, size, key);
        //判断list是否为空
        if (list == null) {
            //设置响应类型和编码
            response.setContentType("text/html;char set=utf-8");
            //获取指定的输出对象
            PrintWriter pw = response.getWriter();
            pw.print("<script>alert('没有该工作岗位的相关信息');history.go(-1);</script>");
            pw.flush();
            pw.close();
        } else {
            //将list保存在请求域中
            request.setAttribute("list", list);
            //将page保存在请求域中
            request.setAttribute("page", page);
            //将size保存在请求域中
            request.setAttribute("size", size);
            //将maxpage保存在请求域中
            request.setAttribute("maxpage", maxpage);
            //将key保存在请求域中
            request.setAttribute("key", key);
            //转发
            System.out.println(request.getQueryString());
            request.getRequestDispatcher("positionlist.jsp").forward(request, response);
        }

    }

    @RequestMapping("/addPosition.do")
    public void addPosition(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String p_name = request.getParameter("positionName");
        String p_type = request.getParameter("positionType");
        String p_require = request.getParameter("p_require");
        String p_salary = request.getParameter("p_salary");
        String p_welfare = request.getParameter("p_welfare");
        String p_address = request.getParameter("p_address");
        String p_info = request.getParameter("p_info");
        String p_graduation = request.getParameter("education");
        String p_tel = request.getParameter("p_tel");
        String p_email = request.getParameter("p_email");
        String p_wexperience = request.getParameter("workYear");
        Integer p_firmid = Integer.valueOf(request.getParameter("p_firmid"));

        //封装成FilmPossitionDto
        FilmPositionDto position = new FilmPositionDto();
        position.setP_firmid(p_firmid);
        position.setP_type(p_type);
        position.setP_name(p_name);
        position.setP_require(p_require);
        position.setP_salary(p_salary);
        position.setP_welfare(p_welfare);
        position.setP_address(p_address);
        position.setP_info(p_info);
        position.setP_graduation(p_graduation);
        position.setP_tel(p_tel);
        position.setP_email(p_email);
        position.setP_wexperience(p_wexperience);
        position.setP_firmid(p_firmid);
        //设置相应编码和输出对象
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        //调用业务逻辑
        boolean addPositionflag = service.addPosition(position);
        if (addPositionflag) {
            out.print("<script>alert('发布岗位成功');location.href='index.html';</script>");
            out.flush();
            out.close();
        } else {
            out.print("<script>alert('发布岗位失败');history.go(-1);</script>");
            out.flush();
            out.close();
        }
    }

    @RequestMapping("/GetFirmPositionDetailByPid.do")
    public void GetFirmPositionDetailByPid(HttpServletRequest request, HttpServletResponse response) throws Exception {
        FilmPositionDto fpd = new FilmPositionDto();
        Integer p_id = Integer.valueOf((request.getParameter("p_id")));

        fpd = service.queryPositionById(p_id);
        MyMassageDto my = new MyMassageDto();
        System.out.println(fpd);
        my.setFlag(1);
        my.setMsgcontent("数据获取成功");
        my.setMsgobject(fpd);
        Gson gson = new Gson();
        String myjson = gson.toJson(my);
        //设置响应类型和编码
    }

    @RequestMapping("/queryfirmposition.do")
    public void queryfirmposition(HttpServletRequest request, HttpServletResponse response) throws Exception {

        //Ajax分页查询公司的工作岗位
        Integer maxpage=1; //最大页数
        //获取从前端传来的值
        Integer page=1;
        Integer size=2;
        Integer firmid= null;
        try {
            page = Integer.valueOf(request.getParameter("page"));
            size= Integer.valueOf(request.getParameter("size"));
            firmid=Integer.valueOf(request.getParameter("firm_id"));

        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("传入的数据异常");
        }
        //获取该公司工作岗位的总条数
        long allcount =service.getPositionCountByFirmId(firmid);
        //获得总页数
        maxpage=(int)((allcount%size==0)?(allcount/size):(allcount/size+1));
        //对page上下限做容错
        page=page<=0?1:page;
        page=page>maxpage?maxpage:page;
        //获取当前page和size工作岗位的值
        List<Position> list =service.quaryposition(page, size, firmid);
        //创建一个封装发送的dto对象
        PositionMassageDto msg = new PositionMassageDto();
        //设置发送的消息
        if (list==null) {
            msg.setFlag(0);
            msg.setMsgcontent("没有查询到工作岗位");
        }else {
            msg.setFlag(1);
            msg.setMsgcontent("公司的工作岗位");
            msg.setMsgobject(list);
            msg.setPage(page);
            msg.setMaxPage(maxpage);
            msg.setSize(size);
        }

        Gson gson = new Gson();
        String myjson= gson.toJson(msg);
        System.out.println(myjson);
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();
        pw.print(myjson);
        pw.flush();
        pw.close();
    }

    @RequestMapping("/updatePosition.do")
    public void updatePosition(HttpServletRequest request, HttpServletResponse response) throws Exception{
        //获取岗位id
        //Integer p_id = 17;
        //设置相应编码和输出对象
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        Integer p_id = null;
        try {
            p_id = Integer.valueOf( request.getParameter("p_id"));
        }catch (Exception e) {
            out.print("<script>alert('岗位详情获取失败');history.go(-1);</script>");
            out.flush();
            out.close();
        }
        String p_name = request.getParameter("positionName");
        String p_type = request.getParameter("positionType");
        String p_require = request.getParameter("p_require");
        String p_salary = request.getParameter("p_salary");
        String p_welfare = request.getParameter("p_welfare");
        String p_address = request.getParameter("p_address");
        String p_info = request.getParameter("p_info");
        String p_graduation = request.getParameter("education");
        String p_tel = request.getParameter("p_tel");
        String p_email = request.getParameter("p_email");
        String p_wexperience = request.getParameter("workYear");
        Integer p_firmid = Integer.valueOf(request.getParameter("p_firmid"));
        //封装成FilmPossitionDto
        FilmPositionDto position = new FilmPositionDto();
        position.setP_id(p_id);
        position.setP_type(p_type);
        position.setP_name(p_name);
        position.setP_require(p_require);
        position.setP_salary(p_salary);
        position.setP_welfare(p_welfare);
        position.setP_address(p_address);
        position.setP_info(p_info);
        position.setP_graduation(p_graduation);
        position.setP_tel(p_tel);
        position.setP_email(p_email);
        position.setP_wexperience(p_wexperience);
        position.setP_firmid(p_firmid);
        //调用业务逻辑
        boolean updatePositionflag = service.updatePosition(position);
        if(updatePositionflag) {
            out.print("<script>alert('发布修改成功');location.href='getPositionById.do&p_id="+p_id+"';</script>");
            out.flush();
            out.close();
        }else {
            out.print("<script>alert('发布修改失败');history.go(-1);</script>");
            out.flush();
            out.close();
        }
    }
    @RequestMapping("/getPositionById.do")
    public void getPositionById(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //获取岗位id
        //Integer p_id = 17;
        //设置相应编码和输出对象
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        Integer p_id = null;
        try {
            p_id = Integer.valueOf( request.getParameter("p_id"));
        }catch (Exception e) {
            out.print("<script>alert('岗位详情获取失败');history.go(-1);</script>");
            out.flush();
            out.close();
        }
        if(p_id == null) {
            out.print("<script>alert('岗位详情获取失败，请检查网络');history.go(-1);</script>");
            out.flush();
            out.close();
        }else {
            //调用业务逻辑获取p_id
            FilmPositionDto position = service.queryPositionById(p_id);
            System.out.println(position);
            request.setAttribute("position", position);
            request.getRequestDispatcher("updatejob.jsp").forward(request, response);
        }
    }

    @RequestMapping("/getpositionByuseridandajax.do")
    public void getpositionByuseridandajax(HttpServletRequest request, HttpServletResponse response)throws Exception{

        Integer maxpage=1; //最大页数
        //获取从前端传来的值
        Integer page=1;
        Integer size=2;
        //获取登录的用户id
        //HttpSession session = request.getSession();
        //Customer user  =(Customer) session.getAttribute("logincustomer");
        //Integer userid=user.getU_userid();
        Integer userid =null;
        try {
            page = Integer.valueOf(request.getParameter("page"));
            size= Integer.valueOf(request.getParameter("size"));
            userid= Integer.valueOf(request.getParameter("userid"));
        } catch (Exception e) {
            // TODO: handle exception
            System.out.println("传入的数据异常");
        }
        //获取投递过的工作岗位的总条数
        long allcount =service.getAllcountByUserid(userid);
        //获得总页数
        maxpage=(int)((allcount%size==0)?(allcount/size):(allcount/size+1));
        //对page上下限做容错
        page=page<=0?1:page;
        page=page>maxpage?maxpage:page;
        //调用业务层查询已投递的简历
        List<FilmPositionDto> list=service.getUserPositionByUserid(page,size,userid);
        PositionMassageDto msg = new PositionMassageDto();
        //将数据封装到msg中
        if (list==null) {
            msg.setFlag(0);
            msg.setMsgcontent("你暂时没有投递简历");
        }else {
            msg.setFlag(1);
            msg.setMaxPage(maxpage);
            msg.setPage(page);
            msg.setSize(size);
            msg.setMsgobject(list);
        }
        Gson gson = new Gson();
        String myjson= gson.toJson(msg);
        //设置响应类型和编码
        response.setContentType("text/html;charset=utf-8");
        //获取指定的输出对象
        PrintWriter pw=response.getWriter();
        pw.print(myjson);
        pw.flush();
        pw.close();
    }
    @RequestMapping("/getRecordByPositionIdWithAjax.do")
    public void getRecordByPositionIdWithAjax(HttpServletRequest request, HttpServletResponse response)throws Exception{

        /**获取当前岗位收到的所有简历信息**/

        //获取转发过来的信息
        Firm firm = (Firm) request.getSession().getAttribute("loginfirm");
        String key=request.getParameter("key");
        if(key==null){
            key="";
        }
        Integer positionid=null;
        try {
            System.out.println("getRecordByPositionId中得到的positionid="+request.getParameter("positionid"));
            positionid=Integer.valueOf(request.getParameter("positionid"));
        }catch (Exception e) {
            e.printStackTrace();
        }

        //初始化页数、最大页数、显示条数
        Integer page = 1; //page默认显示页数
        Integer size = 5; //size默认显示条数
        Integer maxpage=1; //最大页数
        //从请求中获取 page和size
        if (request.getParameter("page")!=null) {
            try {
                //将获取的字符串类型转换为int类型
                page =Integer.valueOf(request.getParameter("page"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的page参数有问题，设置默认值");
            }
        }
        if (request.getParameter("size")!=null) {
            try {
                //将获取的字符串类型转换为int类型
                size =Integer.valueOf(request.getParameter("size"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的size参数有问题，设置默认值");
            }
        }

        //获取当前岗位收到的简历的总条数
        long allcount =service.getRecordCountRecordByPosition(positionid);
        System.out.println("当前岗位:"+positionid+",收到的简历数量:"+allcount);
        //获取总页数
        maxpage=(int)((allcount%size==0)?(allcount/size):(allcount/size+1));
        //对page上下限进行容错
        page=page<=0?1:page;
        page=page>maxpage?maxpage:page;
        //获取当前对应的page和size数据
        List<RecordPositionDto> list=service.queryRecordByPositionid(positionid, page, size,0);
        System.out.println(list);
        RecordPositionPageDto dto = new RecordPositionPageDto();
        dto.setFlag(1);
        dto.setMaxPage(maxpage);
        dto.setRecordPositionlist(list);
        dto.setPage(page);
        dto.setSize(size);
        Gson gson=new Gson();
        String str=gson.toJson(dto);
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        out.print(str);
        //将list保存在请求域中
        request.setAttribute("list",list);
        //将page保存在请求域中
        request.setAttribute("page",page);
        //将size保存在请求域中
        request.setAttribute("size",size);
        //将maxpage保存在请求域中
        request.setAttribute("maxpage",maxpage);

        out.flush();
        out.close();
    }
    @RequestMapping("/delPositionById.do")
    public void delPositionById(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //删除一个工作岗位
        //获取前段传递过来的值
        Integer p_id=null;
        try {
            p_id=Integer.valueOf(request.getParameter("p_id"));
        } catch (Exception e) {
            // TODO: handle exception
        }
        //调用业务逻辑删除该id的工作岗位。
        boolean result=service.deletePosition(p_id);
        //设置相应编码和输出对象
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();
        if (result) {
            out.print("<script>alert('岗位删除成功');location.href='firmindex.jsp';</script>");
            out.flush();
            out.close();
        }else {
            out.print("<script>alert('岗位删除失败');</script>");
            out.flush();
            out.close();
        }
    }

    @RequestMapping("/updateReocrdPositionStatus.do")
    public void updateReocrdPositionStatus(HttpServletRequest request, HttpServletResponse response)throws Exception{
        /**更新投递简历的状态**/
        //获取要更新的ID
        Integer rs_id=null;
        Integer status=null;
        Integer positionid=null;
        try {
            //获取要更新的状态
            status=Integer.valueOf(request.getParameter("status"));
            //获取要更新的ID
            rs_id=Integer.valueOf(request.getParameter("rs_id"));
            positionid=Integer.valueOf(request.getParameter("positionid"));

        }catch (Exception e) {
            e.printStackTrace();
        }
        if(status==null || rs_id==null) {
            response.setContentType("text/html;charset=utf-8");
            //获取指定的输出对象
            PrintWriter pw=response.getWriter();
            pw.print("<script>alert('参数有误(status/rs_id==null)，请重新操作')</script>");
            pw.flush();
            pw.close();
        }else {
            boolean updateflag = service.updateRecordPositionStatus(rs_id, status);
            response.setContentType("text/html;charset=utf-8");
            //获取指定的输出对象
            PrintWriter pw=response.getWriter();
            if(updateflag) {
                pw.print("<script>alert('操作成功');location.href='getRecordByPositionId.do?positionid="+positionid+"';</script>");
            }else {
                pw.print("<script>alert('操作失败，请重新操作，或联系管理员');history.go(-1);</script>");
            }
            pw.flush();
            pw.close();
        }

    }

    @RequestMapping("/getRecordByPositionId.do")
    public void getRecordByPositionId(HttpServletRequest request, HttpServletResponse response)throws Exception{

        /**获取当前岗位收到的所有简历信息**/

        //获取转发过来的信息
        Firm firm = (Firm) request.getSession().getAttribute("loginfirm");
        String rs_status=request.getParameter("status");
        Integer status=null;
        if(rs_status==null){
            System.out.println("Error:status==null");
            status=0;
        }else {
            status=Integer.valueOf(rs_status);
        }
        Integer positionid=Integer.valueOf(request.getParameter("positionid"));
        System.out.println("positionid="+positionid);
        //初始化页数、最大页数、显示条数
        Integer page = 1; //page默认显示页数
        Integer size = 5; //size默认显示条数
        Integer maxpage=1; //最大页数
        //从请求中获取 page和size
        if (request.getParameter("page")!=null) {
            try {
                //将获取的字符串类型转换为int类型
                page =Integer.valueOf(request.getParameter("page"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的page参数有问题，设置默认值");
            }
        }
        if (request.getParameter("size")!=null) {
            try {
                //将获取的字符串类型转换为int类型
                size =Integer.valueOf(request.getParameter("size"));
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("获取的size参数有问题，设置默认值");
            }
        }

        //获取当前岗位收到的简历的总条数
        long allcount =service.getRecordCountRecordByPosition(positionid);
        System.out.println("当前岗位:"+positionid+",收到的简历数量:"+allcount);
        //获取总页数
        maxpage=(int)((allcount%size==0)?(allcount/size):(allcount/size+1));
        //对page上下限进行容错
        page=page<=0?1:page;
        page=page>maxpage?maxpage:page;
        //获取当前对应的page和size数据
        List<RecordPositionDto> list= new ArrayList<>();
        if(status==null||status==4){
            list =service.queryRecordBypid(positionid, maxpage, size);

        }else {
            list=service.queryRecordByPositionid(positionid, page, size,status);
        }
        //将list保存在请求域中
        request.setAttribute("list",list);
        //将page保存在请求域中
        request.setAttribute("page",page);
        //将size保存在请求域中
        request.setAttribute("size",size);
        //将maxpage保存在请求域中
        request.setAttribute("maxpage",maxpage);
        request.setAttribute("positionid",positionid);
        request.setAttribute("status",status);

        //转发firmRecivedResume2.jsp页面中
        request.getRequestDispatcher("firmRecivedResume2.jsp").forward(request, response);
    }
}