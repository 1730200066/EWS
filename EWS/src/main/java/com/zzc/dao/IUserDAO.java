package com.zzc.dao;

import java.util.List;
import java.util.Map;

public interface IUserDAO {
    //登录查询用户名和密码
    public List<Map<String,String>> login(String uname, String upwd);
    //新用户注册
    public int signup(String signupname,String email,String signuppwd,String role);
    //查询员工表单信息
    public List<Map<String,String>> userList(Map map);
    //查询员工表单数量，做分页
    public int userCount();
    //老用户按email找回密码
    public List<Map<String,String>> retrieve(String email);
    //管理员添加用户
    public int insertUser(String ename,String true_name,String sex,String phone_number,String email,String date_of_birth,String department);
    //根据id删除用户
    public int deleteUserById(String id);
    //管理员更新用户
    public int updateUser(int id,String ename,String true_name,String sex,String phone_number,String email,String date_of_birth,String department);
    //用户性别分析
    public List<Map<String,String>> userGenderAnalysis();
    //查询设备表单信息
    public List<Map<String,String>> deviceList(Map map);
    //查询设备表单数量，做分页
    public int deviceCount();
}
