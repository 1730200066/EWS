package com.zzc.service.impl;

import com.zzc.dao.impl.UserDAOImpl;
import com.zzc.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLOutput;
import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    UserDAOImpl userDAOImpl;
    //登录查询用户名和密码
    @Override
    public List<Map<String, String>> login(String uname, String upwd) {
        List<Map<String,String>> list=userDAOImpl.login(uname,upwd);
        return list;
    }
    //新用户注册
    @Override
    public int signup(String signupname,String email,String signuppwd,String role){
        int i=userDAOImpl.signup(signupname,email,signuppwd,role);
        return i;
    }
    //查询员工表单信息
    @Override
    public List<Map<String, String>> userList(Map map) {
        return userDAOImpl.userList(map);
    }
    //查询员工表单数量，做分页
    @Override
    public int userCount() {
        return userDAOImpl.userCount();
    }
    //老用户按email找回密码
    @Override
    public List<Map<String, String>> retrieve(String email) {
        return userDAOImpl.retrieve(email);
    }
    //管理员添加用户
    @Override
    public int insertUser(String ename, String true_name, String sex, String phone_number, String email, String date_of_birth, String department) {
        return userDAOImpl.insertUser(ename,true_name,sex,phone_number,email,date_of_birth,department);
    }
    //根据id单个删除用户
    @Override
    public int deleteUserById(int id) {
        return userDAOImpl.deleteUserById(id);
    }
    //管理员更新用户
    @Override
    public int updateUser(int id,String ename, String true_name, String sex, String phone_number, String email, String date_of_birth, String department) {
        return userDAOImpl.updateUser(id,ename,true_name,sex,phone_number,email,date_of_birth,department);
    }
}
