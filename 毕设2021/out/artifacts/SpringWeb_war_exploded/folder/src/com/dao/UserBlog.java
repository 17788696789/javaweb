package com.dao;

public class UserBlog {
    private int userid;
    private String username;
    private String blog;
    private int id;
    private  String title;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getTag() {
        return tag;
    }

    public void setTag(int tag) {
        this.tag = tag;
    }

    private int tag;





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


