package com.servlet;
import java.io.IOException;
import java.rmi.server.ExportException;
import java.util.Arrays;
import java.util.List;

import com.dao.User;
import com.dao.UserBlog;
import com.dao.UserDao_1;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Component;
import javax.servlet.*;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/test2")
public class TuiJianServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        resp.getWriter().println(test(req));

        resp.sendRedirect("index.jsp");
        return;

    }

    /*类class Sim {}用于进行余弦相似度的计算，
     * 利用用户之间的相似度做评分预测，并比较预测值与真实值的误差(对所有用户做平均)*/

    public double cosine(double[][] matrix, int i,int j){ //cosine measure
        if(i==j)
            return 1;
        int k=0;
        int ai=0;
        int aj=0;
        int aij=0;
        for(k=0;k<matrix[i].length;k++){
            if(matrix[i][k]!=0&&matrix[j][k]!=0)
                aij++;
            if(matrix[i][k]!=0)
                ai++;
            if(matrix[j][k]!=0)
                aj++;
        }
        return aij/(Math.sqrt(ai*aj));
    }


    public double r(double[][] matrix,int u,int i){
        double a=0,b=0;
        for(int v=0;v<matrix.length;v++){
            if(u!=v){
                a=a+cosine(matrix,u,v)*matrix[v][i];
                b=b+cosine(matrix,u,v);
            }
        }
        return a/b;
    }



    public double[][] predict(double[][] matrix){
        double[][] pred=new double[matrix.length][matrix[0].length];
        for(int i=0;i<matrix.length;i++){
            for(int j=0;j<matrix[i].length;j++){
                pred[i][j]=r(matrix,i,j);
            }
        }
        return pred;
    }


    public double comErr(double[][] matrix){ //compute the error of the predicting result
        double[][] predictMat = new double[matrix.length][matrix[0].length];
        predictMat=predict(matrix);
        double meanErr=0;
        for(int i =0;i<matrix.length;i++){
            for(int j=0;j<matrix[i].length;j++){
                meanErr=meanErr+Math.abs(predictMat[i][j]-matrix[i][j]);
            }
        }
        double a=matrix.length;
        return meanErr/a;
    }


    public String test( HttpServletRequest request)throws IOException {
        ServletContext sc = getServletContext();
        ApplicationContext as =(ApplicationContext) sc.getAttribute("ApplicationContext");//监听器
        UserService us= as.getBean("userService",UserService.class);
        List<User> list = us.selectUserLike();
        int t = 0;
        double mat[][]= new double[list.size()][5];
        for(User user :list){
            mat[t][0] = user.getZhishi();
            mat[t][1]=user.getShenghuo();
            mat[t][2]=user.getYingyue();
            mat[t][3]=user.getYule();
            mat[t][4]=user.getZhixun();
            System.out.println("??"+mat[t][0]+"??");
            t++;
        }

        System.out.println(Arrays.deepToString(mat));
        for(int i=0;i<mat.length;i++){
            for(int j=0;j<mat.length;j++){
                System.out.print(cosine(mat, i, j)+" ");
            }System.out.println();
        }

//        int id = (int)request.getSession().getAttribute("userId");
//        int n=id-1;
//        int leny=5;
//        int y=0;
//        for(int x=0;x<leny-1;x++){
//            if(mat[n][x] < mat[n][x+1]){
//                y=x+1;
//            }
//            else
//            {
//                y=x;
//            }
//        }

        System.out.println("以上是相似度矩阵");

        double[][] pre=predict(mat);
        for(int i=0;i<mat.length;i++){
            for(int j=0;j<mat[i].length;j++)
                System.out.print(pre[i][j]+" ");
            System.out.println();
        }
        System.out.println("以上是预测结果");
        int id = (int)request.getSession().getAttribute("userId");
        int n=id-1;
        int leny=5;
        double max=-1;
        int col=0;

        for(int x=0;x<leny;x++){
            if(pre[n][x] > max){
                max=pre[n][x];
                col=x;
            }
        }
        System.out.println(col);
        int tag=col;
        HttpSession session =request.getSession();
        session.setAttribute("tag",col);
        System.out.println(col);



        System.out.println(comErr(mat));
        System.out.println("以上是平均误差");

        return "成功";

//System.out.println(sim.r(mat, 4, 1));
    }
}