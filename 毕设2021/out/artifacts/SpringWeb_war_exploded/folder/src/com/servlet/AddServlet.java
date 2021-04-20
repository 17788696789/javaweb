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

@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        super.doPost(req, resp);
        req.setCharacterEncoding("UTF-8");
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
        Friends friends = new Friends();
        String name;

        String sex;
        int age;
        String qq;
        String telephone;
        String email;
        String address;

        name = req.getParameter("newname");
        sex = req.getParameter("newsex");
        age = Integer.parseInt(req.getParameter("newage"));
        qq = req.getParameter("newqq");
        telephone = req.getParameter("newtel");
        email = req.getParameter("newemail");
        address = req.getParameter("newaddress");
        friends.setAddress(address);
        friends.setAge(age);
        friends.setEmail(email);
        friends.setName(name);
        friends.setQq(qq);
        friends.setTelephone(telephone);
        friends.setSex(sex);
        friends.setUserid(4);
        us.AddFriend(friends);

        resp.sendRedirect("allfriend.jsp");
    }

}
