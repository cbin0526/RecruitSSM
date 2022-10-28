package com.etc.mvc.controller;

import com.etc.mvc.dao.RecordDao;
import com.etc.mvc.entity.Customer;
import com.etc.mvc.entity.Firm;
import com.etc.mvc.service.RecordService;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author: Admin
 * @time: 2022/10/25 10:22
 */

@Controller
public class UploadFileController {
    @Autowired
    private RecordService recordService;

    @RequestMapping("/uploadfile.do")
    public void uploadfile(HttpServletRequest request, HttpServletResponse response)throws Exception{
        //设置输出编码
        response.setContentType("text/html;chartset=utf-8");
        //创建输出对象
        PrintWriter out = response.getWriter();
        //1.创建工厂类
        DiskFileItemFactory factory = new DiskFileItemFactory();
        //2.创建文件上传解析器
        ServletFileUpload upload = new ServletFileUpload(factory);
        //3.设置文件上传参数，编码
        upload.setHeaderEncoding("utf-8");
        //4.获取所有的请求参数
        int flag = 1;
        //获取当前登入的用户
        HttpSession session = request.getSession();
        //获取登入用户
        Customer logincustomer = (Customer) session.getAttribute("logincustomer");
        Firm loginfirm = (Firm) session.getAttribute("loginfirm");
        try {
            //获取所有请求参数
            List<FileItem> list = upload.parseRequest(request);
            for (FileItem fileItem : list) {

                if(!fileItem.isFormField() && fileItem.getName() != null && !"".equals(fileItem.getName())) {
                    flag = 0;
                    //上传的文件
                    //获取上传文件的名字
                    String fileName = fileItem.getName();
                    //重命名文件
                    if(logincustomer != null) {
                        //登入的是应聘者
                        fileName = System.currentTimeMillis() + "-" + logincustomer.getU_userid();
                    }else if(loginfirm != null) {
                        //登入的是公司
                        fileName = System.currentTimeMillis()+"-"+loginfirm.getFirm_id();
                    }
                    //获取服务器所在的磁盘路径
                    String path = request.getServletContext().getRealPath("/uploadimg");
                    //判断是否有该文件夹
                    //没有则创建
                    File file = new File(path);
                    if(!file.exists()) {
                        //文件创建成功
                        file.mkdirs();
                    }
                    //上传文件
                    try {
                        fileItem.write(new File(path, fileName+".jpg"));
                        out.print(fileName+".jpg");
                        out.flush();
                        out.close();
                    }catch(Exception e){
                        e.printStackTrace();
                        out.print("0");
                        out.flush();
                        out.close();
                    }
                }
                if(flag == 1){
                    if(logincustomer != null){

                        String userid1 = request.getParameter("userid");
                        Integer userid = logincustomer.getU_userid();
                        String img = recordService.queryOneRecordById(userid).getR_photo();
                        out.print(img);
                        out.flush();
                        out.close();
                    }
                    if(loginfirm != null){
                        out.print(loginfirm.getFirm_logo());
                        out.flush();
                        out.close();
                    }
                }
            }
        }catch(Exception e) {
            e.printStackTrace();
            out.print("2");
            out.flush();
            out.close();
        }

    }
}
