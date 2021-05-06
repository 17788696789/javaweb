package com.servlet;

import com.dao.UserDao_1;
import com.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.InputStream;

@WebServlet("/loginServlet")//请求servlet时扫描路径下的信息
public class lgoinServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
//        System.out.println("受到前端传入的数据");
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);

        String nName,nPassword,realPassword;
        nName = req.getParameter("userName");
        nPassword = req.getParameter("password");



        try {
            if(nPassword.equals(us.findname(nName))){
               HttpSession session =req.getSession();
               session.setAttribute("user",nName);
               String s =  (String)session.getAttribute("user");
               int d = us.findByUserId(nName);
               session.setAttribute("userId",d);
                System.out.println(d);
               System.out.println(s);
                req.getRequestDispatcher("/test2").forward(req, resp);


                return;
            }

            else{
                resp.sendRedirect("error.jsp");
                return;
            }
        } catch (Exception e) {
            resp.sendRedirect("error.jsp");

            e.printStackTrace();
            return;
        }





    }



}
