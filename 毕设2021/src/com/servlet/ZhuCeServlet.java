package com.servlet;
import com.dao.User;
import com.service.UserService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/ZhuCeServlet")
public class ZhuCeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);


        String nName,nPassword,rPassword;
        nName = req.getParameter("userName");
        nPassword = req.getParameter("password");

        User user = new User();
        user.setName(nName);
        user.setPassword(nPassword);
        if(us.SaveUsr(user)==1){
            HttpSession session =req.getSession();
            session.setAttribute("user",nName);
            String s =  (String)session.getAttribute("user");
            int d = us.findByUserId(nName);
            session.setAttribute("userId",d);
            resp.sendRedirect("index.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }

    }
}
