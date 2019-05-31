package com.zzc.service;

import java.util.List;
import java.util.Map;

public interface IUserService {
    //登录查询用户名和密码
    public List<Map<String,String>> login(String uname, String upwd);
    //新用户注册
    public int signup(String signupname,String email,String signuppwd,String role);
    //查询员工表单信息
    public List<Map<String,String>> userList();
    //查询员工表单数量，做分页
    public int userCount();
    //老用户按email找回密码
    public List<Map<String,String>> retrieve(String email);
    //管理员添加用户
    public int insertUser(String ename,String true_name,String sex,String phone_number,String email,String date_of_birth,String department);
    //根据id单个删除用户
    public int deleteUserById(int id);
}
