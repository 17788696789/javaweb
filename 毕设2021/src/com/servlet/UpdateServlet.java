package com.servlet;

import com.dao.Friends;
import com.service.UserService;
import org.springframework.context.ApplicationContext;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
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
        Friends friends = new Friends();
         String name;
         int id;
         String sex;
         int age;
         String qq;
          String telephone;
          String email;
         String address;
         String check="";
        check=req.getParameter("need");
        id =Integer.parseInt(check);
        name = req.getParameter(check+"name");
        sex = req.getParameter(check+"sex");
        age = Integer.parseInt(req.getParameter(check+"age"));
        qq = req.getParameter(check+"qq");
        telephone = req.getParameter(check+"tel");
        email = req.getParameter(check+"email");
        address = req.getParameter(check+"address");
        friends.setAddress(address);
        friends.setAge(age);
        friends.setEmail(email);
        friends.setId(id);
        friends.setName(name);
        friends.setQq(qq);
        friends.setTelephone(telephone);
        friends.setSex(sex);
        us.UpdateFriend(friends);
        resp.sendRedirect("allfriend.jsp");

    }
}
