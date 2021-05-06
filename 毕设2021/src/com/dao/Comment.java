package com.dao;

public class Comment {
    private int comment_id;
    private  String comment_content;
    private int comment_userId;
    private int comment_blogId;
     private String comment_username;

    public String getComment_username() {
        return comment_username;
    }

    public void setComment_username(String comment_username) {
        this.comment_username = comment_username;
    }

    public int getComment_blogId() {
        return comment_blogId;
    }

    public void setComment_blogId(int comment_blogId) {
        this.comment_blogId = comment_blogId;
    }

    public int getComment_id() {
        return comment_id;
    }

    public void setComment_id(int comment_id) {
        this.comment_id = comment_id;
    }

    public String getComment_content() {
        return comment_content;
    }

    public void setComment_content(String comment_content) {
        this.comment_content = comment_content;
    }

    public int getComment_userId() {
        return comment_userId;
    }

    public void setComment_userId(int comment_userId) {
        this.comment_userId = comment_userId;
    }
}
