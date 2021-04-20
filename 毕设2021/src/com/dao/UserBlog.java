package com.dao;

public class UserBlog {
    private int userid;
    private String username;
    private String blog;
    private int id;



    public int getUserid() {
        return userid;
    }

    public  void setUserid(int userid) {
        this.userid = userid;
    }
     public  String getUsername(){ return username;}
    public  void setUsername(String username) {
        this.username = username;
    }
    public String getBlog() {
        return blog;
    }

    public void setBlog(String blog) {
        this.blog = blog;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
