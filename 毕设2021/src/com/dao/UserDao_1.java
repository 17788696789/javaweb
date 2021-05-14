package com.dao;

import java.util.List;

public interface UserDao_1 {
    List<Friends> findAllfriend();
    List<UserBlog>findAllUserBlog();

    List<UserBlog>findTuiJianBlog(int tag,int userid);
    User findByNametop(String name);
    int SaveUser(User user);
    int DeleteFriend(int id);
    void UpdateFriend(Friends friends);
    int AddFriend(Friends friends);
    List<Friends> SelectByc(String name);
    int WriteComment(Comment comment);
    int Writeblog(UserBlog userBlog);
//    新的
    List<UserBlog> findAllblog(int id);
    List<UserBlog>findChangeblog(int id);
    List<UserBlog> SelectByblog(String blog);
    int DeleteBlog(int id);
    void UpdateBlog(UserBlog userBlog);
    UserBlog findByWords(String  words);
    User findByUserId(String name);
    List<UserBlog> selectFriendBlogById(int id);
//    List<UserBlog>selectFriendById(int id);
    List<User> selectUserLike();
    UserBlog GetBlogById(int blogid);
    List<Comment> selectContentByBlogId(int id);


}
