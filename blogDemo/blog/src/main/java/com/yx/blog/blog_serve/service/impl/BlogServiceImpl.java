package com.yx.blog.blog_serve.service.impl;

import com.yx.blog.bk_manage.dao.UserMapper;
import com.yx.blog.bk_manage.entity.User;
import com.yx.blog.blog_serve.service.BlogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * 功能描述：实现算法的代码实现类
 *
 * @Author: yx
 * @Date: 2021/5/16 11:46
 */
@Service
public class BlogServiceImpl implements BlogService {

    @Resource
    UserMapper userMapper;

    public static double cosine(double[][] matrix, int i,int j){ //cosine measure
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


    public static double r(double[][] matrix,int u,int i){
        double a=0,b=0;
        for(int v=0;v<matrix.length;v++){
            if(u!=v){
                a=a+cosine(matrix,u,v)*matrix[v][i];
                b=b+cosine(matrix,u,v);
            }
        }
        return a/b;
    }



    public static double[][] predict(double[][] matrix){
        double[][] pred=new double[matrix.length][matrix[0].length];
        for(int i=0;i<matrix.length;i++){
            for(int j=0;j<matrix[i].length;j++){
                pred[i][j]=r(matrix,i,j);
            }
        }
        return pred;
    }


    public static double comErr(double[][] matrix){ //compute the error of the predicting result
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
    @Override
    public double[] getRecommendList(String username) {
        User user = userMapper.selectUser(username);
        double[][] mat = new double[2][5];
        // 推荐系统只需要推荐当前用户所需要的微博，故只输入一个值即可
        // 但由于输入一组值结果为None 故输入两组相同的值
        mat[0][0] = user.getKnowledge();
        mat[0][1] = user.getLife();
        mat[0][2] = user.getEntertainment();
        mat[0][3] = user.getConsult();
        mat[0][4] = user.getMusic();
        mat[1][0] = user.getKnowledge();
        mat[1][1] = user.getLife();
        mat[1][2] = user.getEntertainment();
        mat[1][3] = user.getConsult();
        mat[1][4] = user.getMusic();
        double[][] pre=predict(mat);
        // 返回结果的第一组即可
        return pre[0];
    }
}
