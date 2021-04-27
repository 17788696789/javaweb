package com.dao;

import java.util.List;

public interface UserDao_1 {
    List<Friends> findAllfriend();
    List<UserBlog>findAllUserBlog();
    User findByNametop(String name);
    int SaveUser(User user);
    int DeleteFriend(int id);
    void UpdateFriend(Friends friends);
    int AddFriend(Friends friends);
    List<Friends> SelectByc(String name);

    int Writeblog(UserBlog userBlog);
//    新的
    List<UserBlog> findAllblog(int id);
    List<UserBlog> SelectByblog(String blog);
    int DeleteBlog(int id);
    void UpdateBlog(UserBlog userBlog);
    UserBlog findByWords(String  words);
    User findByUserId(String name);
    List<UserBlog> selectFriendBlogById(int id);
    List<User> selectUserLike();
}
