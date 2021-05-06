package com.servlet;
import com.dao.UserBlog;
import com.service.UserService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/getblog")
public class GetBlogServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doGet(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
        UserBlog userBlog = us.GetBlogById(Integer.parseInt(req.getParameter("id")));

        ObjectMapper objectMapper=new ObjectMapper();

        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/hmtl;charset=utf-8");
        resp.getWriter().print( objectMapper.writeValueAsString(userBlog));
    }
}
