package com.servlet;

import com.service.UserService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/JumpJspServlet")
public class JumpJspServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);

        resp.sendRedirect("vue.html");
    }
}