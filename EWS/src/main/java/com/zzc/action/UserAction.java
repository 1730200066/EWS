package com.zzc.action;

import com.zzc.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.jdbc.support.incrementer.HsqlMaxValueIncrementer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserAction {
    @Autowired
    UserServiceImpl userServiceImpl;

    //登录查询用户名和密码
    @RequestMapping(value = "/login.do", method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("uname") String uname, String upwd) {
        List<Map<String, String>> list = userServiceImpl.login(uname, upwd);
        if (list.size() > 0) {
            return "success";
        } else {
            return "fails";
        }
    }

    //新用户注册
    @RequestMapping(value = "/signup.do")
    @ResponseBody
    public String signup(@RequestParam("signupname") String signupname, String email, String signuppwd, String role) {
        int i = userServiceImpl.signup(signupname, email, signuppwd, role);
        if (i > 0) {
            return "success";
        } else {
            return "fails";
        }
    }

    //查询员工表单信息
    @RequestMapping(value = "/userlist.do")
    @ResponseBody
    public Map<String, Object> searchUserList(String ename,int page, int limit) {
        Map map = new HashMap();
        map.put("ename",ename);
        map.put("recordIndex", (page - 1) * limit);
        map.put("pagesize", limit);
        List<Map<String, String>> list = userServiceImpl.userList(map);
        int count = userServiceImpl.userCount();
        map.clear();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", count);
        map.put("data", list);
        return map;
    }

    //老用户按email找回密码
    @RequestMapping(value = "/retrieve.do")
    @ResponseBody
    public String retrieve(@RequestParam("email") String email) {
        List<Map<String, String>> list = userServiceImpl.retrieve(email);
        if (list.size() > 0) {
            return "success";
        } else
            return "false";
    }

    //管理员添加用户
    @RequestMapping(value = "/insertUser.do")
    @ResponseBody
    public String insertUser(@RequestParam("ename") String ename, String true_name, String sex, String phone_number, String email, String date_of_birth, String department) {
        int i = userServiceImpl.insertUser(ename, true_name, sex, phone_number, email, date_of_birth, department);
        if (i > 0) {
            return "success";
        } else {
            return "fails";
        }
    }

    //根据id删除用户
    @RequestMapping(value = "/deleteUserById.do")
    @ResponseBody
    public String deleteUserById(String id) {
        String[] arr=id.split(",");
        int i=0;
        for(String str:arr){
            i = userServiceImpl.deleteUserById(str);
        }
        if (i > 0) {
            return "success";
        } else {
            return "fails";
        }
    }

    //管理员更新用户
    @RequestMapping(value = "/updateUser.do")
    @ResponseBody
    public String updateUser(@RequestParam("id") int id, String ename, String true_name, String sex, String phone_number, String email, String date_of_birth, String department) {
        int i=userServiceImpl.updateUser(id,ename, true_name, sex, phone_number, email, date_of_birth, department);
        if(i>0)
            return "success";
        else
            return "fails";
    }
    //用户性别分析
    @RequestMapping(value = "/userGenderAnalysis.do")
    @ResponseBody
    public Map<String,String> userGenderAnalysis(){
        List<Map<String, String>> list = userServiceImpl.userGenderAnalysis();
        ArrayList list1 = new ArrayList();
        ArrayList list2 = new ArrayList();
        for(Map map1:list){
            list1.add(map1.get("sex"));
            list2.add(map1.get("count"));
        }
        Map map=new HashMap();
        map.put("sex",list1);
        map.put("count",list2);
        return map;
    }
    //查询设备表单信息
    @RequestMapping(value = "/deviceList.do")
    @ResponseBody
    public Map<String, Object> searchDeviceList(String dname,int page, int limit) {
        Map map = new HashMap();
        map.put("dname",dname);
        map.put("recordIndex", (page - 1) * limit);
        map.put("pagesize", limit);
        List<Map<String, String>> list = userServiceImpl.deviceList(map);
        int count = userServiceImpl.deviceCount();
        map.clear();
        map.put("code", 0);
        map.put("msg", "");
        map.put("count", count);
        map.put("data", list);
        return map;
    }
}
