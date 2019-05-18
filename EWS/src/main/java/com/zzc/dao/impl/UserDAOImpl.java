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
    @Override
    public int signup(String signupname,String email,String signuppwd){
        SqlSession sqlSession=sqlSessionFactory.openSession(true);
        String statement="com.zzc.mapping.userMapper.signup";
        Map map=new HashMap();
        map.put("signupname",signupname);
        map.put("email",email);
        map.put("signuppwd",signuppwd);
        int i=sqlSession.insert(statement,map);
        return i;
    }
}
