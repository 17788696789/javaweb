package com.servlet;


public class TuiJianServlet {
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


    public static void main(String args[]){
        TuiJianServlet sim = new TuiJianServlet();
        double mat[][]={
                {5,3,0,1,2},
                {4,0,0,1,4},
                {1,1,0,5,6},
                {1,0,0,4,7},
                {0,1,5,4,6}};
        for(int i=0;i<mat.length;i++){
            for(int j=0;j<mat.length;j++){
                System.out.print(sim.cosine(mat, i, j)+" ");
            }System.out.println();
        }
        System.out.println("以上是相似度矩阵");

        double[][] pre=sim.predict(mat);
        for(int i=0;i<mat.length;i++){
            for(int j=0;j<mat[i].length;j++)
                System.out.print(pre[i][j]+" ");
            System.out.println();
        }
        System.out.println("以上是预测结果");
        System.out.println(sim.comErr(mat));
        System.out.println("以上是平均误差");
//System.out.println(sim.r(mat, 4, 1));
    }
}