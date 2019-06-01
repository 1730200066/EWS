package com.zzc.dao.impl;

import com.zzc.dao.IUserDAO;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class UserDAOImpl implements IUserDAO {
    @Autowired
    SqlSessionFactory sqlSessionFactory;
    //登录查询用户名和密码
    @Override
    public List<Map<String, String>> login(String uname, String upwd) {
        SqlSession sqlSession = sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.findUserByUnameAndUpwd";
        Map map=new HashMap();
        map.put("uname",uname);
        map.put("upwd",upwd);
        List<Map<String,String>> list = sqlSession.selectList(statement,map);
        return list;
    }
    //新用户注册
    @Override
    public int signup(String signupname,String email,String signuppwd,String role){
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.signup";
        Map map=new HashMap();
        map.put("signupname",signupname);
        map.put("email",email);
        map.put("signuppwd",signuppwd);
        map.put("role",role);
        int i=sqlSession.insert(statement,map);
        return i;
    }
    //查询员工表单信息
    @Override
    public List<Map<String, String>> userList(Map map) {
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.findUserAll";
        List<Map<String,String>> list = sqlSession.selectList(statement,map);
        return list;
    }
    //查询员工表单数量，做分页
    @Override
    public List<Map<String,String>> userCount() {
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.findCountUser";
        List<Map<String,String>> count=sqlSession.selectList(statement);
        return count;
    }
    //老用户按email找回密码
    @Override
    public List<Map<String,String>> retrieve(String email) {
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.findEmail";
        Map map=new HashMap();
        map.put("email",email);
        List<Map<String,String>> list = sqlSession.selectList(statement,map);
        return list;
    }
    //管理员添加用户
    @Override
    public int insertUser(String ename, String true_name, String sex, String phone_number, String email, String date_of_birth, String department) {
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.insertUser";
        Map map=new HashMap();
        map.put("ename",ename);
        map.put("true_name",true_name);
        map.put("sex",sex);
        map.put("phone_number",phone_number);
        map.put("email",email);
        map.put("date_of_birth",date_of_birth);
        map.put("department",department);
        int i=sqlSession.insert(statement,map);
        return i;
    }
    //根据id单个删除用户
    @Override
    public int deleteUserById(int id) {
        System.out.println(id);
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.deleteUserById";
        int i=sqlSession.delete(statement,id);
        return i;
    }


}
