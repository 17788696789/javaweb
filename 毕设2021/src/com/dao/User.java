package com.dao;

public class User {
    private String username;
    private String password;
    private  int  userid;
    private  int  zhixun;
    private  int  shenghuo;
    private  int  yingyue;
    private  int  zhishi;
    private  int  yule;



    public String getName() {
        return username;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setName(String name) {
        this.username = name;
    }

    @Override
    public String toString() {
        return "User{" +
                "name='" + username + '\'' +
                '}';
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getZhixun() {
        return zhixun;
    }

    public void setZhixun(int zhixun) {
        this.zhixun = zhixun;
    }

    public int getShenghuo() {
        return shenghuo;
    }

    public void setShenghuo(int shenghuo) {
        this.shenghuo = shenghuo;
    }

    public int getYingyue() {
        return yingyue;
    }

    public void setYingyue(int yingyue) {
        this.yingyue = yingyue;
    }

    public int getZhishi() {
        return zhishi;
    }

    public void setZhishi(int zhishi) {
        this.zhishi = zhishi;
    }

    public int getYule() {
        return yule;
    }

    public void setYule(int yule) {
        this.yule = yule;
    }
}
