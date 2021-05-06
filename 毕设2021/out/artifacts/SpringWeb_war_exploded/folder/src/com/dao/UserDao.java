package com.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class UserDao {

//    InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
//    SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
//    SqlSessionFactory factory = builder.build(in);
//    SqlSession session = factory.openSession();
//    UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);


    public UserDao() throws IOException {
    }

    public String find(String a) throws Exception{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        String flag =userDao_1.findByNametop(a).getPassword();

        session.close();
        in.close();
        return flag;
    }
    public int SaveUser(User user) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
       int falg =userDao_1.SaveUser(user);
       session.commit();
       session.close();
       in.close();
        return falg;
    }
    public void Updatefriend(Friends friends) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        userDao_1.UpdateFriend(friends);
        session.commit();
        session.close();
        in.close();
    }
    public int Deletefriend(int id) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        int flag =userDao_1.DeleteFriend(id);
        session.commit();
        session.close();
        in.close();
        return flag;
    }
    public int Addfriend(Friends friends) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        int flag =userDao_1.AddFriend(friends);
        session.commit();
        session.close();
        in.close();
        return  flag;
    }
    public List<Friends> Selectbyc(String a) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);

        return userDao_1.SelectByc(a);
    }
    public int WriteBlog(UserBlog userBlog) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        int flag =userDao_1.Writeblog(userBlog);
        session.commit();
        session.close();
        in.close();
        return  flag;
    }
    public int WriteComment(Comment comment)throws IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        int flag =userDao_1.WriteComment(comment);
        session.commit();
        session.close();
        in.close();
        return  flag;
    }
//    新的
    public List<UserBlog> SelectByblog(String a) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);

        return userDao_1.SelectByblog(a);
    }
    public List<UserBlog> findTuiJianBlog(int tag, int userid)throws IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
              return  userDao_1.findTuiJianBlog(tag,userid);
    }
    public int Deleteblog(int id) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        int flag =userDao_1.DeleteBlog(id);
        session.commit();
        session.close();
        in.close();
        return flag;
    }
    public void Updateblog(UserBlog userBlog) throws IOException {
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        userDao_1.UpdateBlog(userBlog);
        session.commit();
        session.close();
        in.close();
    }
    public String findblog(String a) throws Exception{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        String flag =userDao_1.findByWords(a).getBlog();

        session.close();
        in.close();
        return flag;
}
    public int findByUserId(String name)throws IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        int flag=userDao_1.findByUserId(name).getUserid();

        session.close();
        in.close();
        return flag;
    }
    public  List<UserBlog> selectFriendBlogById(int id)throws IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        List<UserBlog> re = userDao_1.selectFriendBlogById(id);

        session.close();
        in.close();
        return re;
    }
    public  List<Comment> selectContentByBlogId(int id)throws IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        List<Comment> comments = userDao_1.selectContentByBlogId(id);

        session.close();
        in.close();
        return comments;
    }
    public List<User> selectUserLike()throws IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        List<User> flag=userDao_1.selectUserLike();
        session.close();
        in.close();
        return flag;
    }
    public UserBlog GetBlogById(int blogid)throws  IOException{
        InputStream in = Resources.getResourceAsStream("SqlMapper.xml");
        SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
        SqlSessionFactory factory = builder.build(in);
        SqlSession session = factory.openSession();
        UserDao_1 userDao_1 = session.getMapper(UserDao_1.class);
        UserBlog userBlog=userDao_1.GetBlogById(blogid);
        session.close();
        in.close();
        return userBlog;
    }
}
