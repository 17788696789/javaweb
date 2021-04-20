package com.dao;

public class User {
    private String username;
    private String password;
    private  int  userid;

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
}
