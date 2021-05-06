package com.service;
import com.dao.*;

import java.io.IOException;
import java.util.List;

public class UserService {

    private UserDao userDao;
    public String findname(String a) throws Exception {
        return userDao.find(a);
    }

    public List<UserBlog> selectFriendBlogById(int id)throws IOException{
        return userDao.selectFriendBlogById( id);
    }
    public List<Comment> selectContentByBlogId(int id)throws  IOException{
        return  userDao.selectContentByBlogId(id);
    }
public int SaveUsr(User user) throws IOException {
        return userDao.SaveUser(user);
}
    public void UpdateFriend(Friends friends) throws IOException {
        userDao.Updatefriend(friends);
    }

    public int DeleteFriend(int id) throws IOException {
        return userDao.Deletefriend(id);
    }

    public int AddFriend(Friends friends) throws IOException {
        return  userDao.Addfriend(friends);
    }
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
    public List<Friends> SelectByC(String a) throws IOException {
        return  userDao.Selectbyc(a);

    }
    public List<UserBlog> findTuiJianBlog(int tag, int userid)throws IOException{
        return  userDao.findTuiJianBlog(tag,userid);
    }
    public int Writeblog(UserBlog userBlog) throws IOException{
        return  userDao.WriteBlog(userBlog);

    }
//    新的
    public int WriteComment(Comment comment)throws IOException{
        return  userDao.WriteComment(comment);
    }
public List<UserBlog> SelectByblog(String a) throws IOException {
    return  userDao.SelectByblog(a);
}
    public int DeleteBlog(int id) throws IOException {
        return userDao.Deleteblog(id);
    }
    public void UpdateBlog(UserBlog userBlog) throws IOException {
        userDao.Updateblog(userBlog);
    }
    public String findablog(String a) throws Exception {
        return userDao.findblog(a);
    }
    public int findByUserId(String name) throws IOException {
        return userDao.findByUserId(name);
    }
    public List<User> selectUserLike()throws IOException {
        return  userDao.selectUserLike();
    }
    public UserBlog GetBlogById(int blogid)throws  IOException{
        return userDao.GetBlogById(blogid);
    }
}
