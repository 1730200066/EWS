package com.zzc.action;

import com.zzc.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserAction {
    @Autowired
    UserServiceImpl userServiceImpl;
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("uname") String uname,String upwd){
        List<Map<String,String>> list=userServiceImpl.login(uname,upwd);
        if(list.size()>0){
            return "success";
        }else {
            return "fails";
        }
    }

    @RequestMapping(value = "/signup.do")
    @ResponseBody
    public String signup(@RequestParam("signupname") String signupname,String email,String signuppwd,String role){
        int i=userServiceImpl.signup(signupname,email,signuppwd,role);
        if(i>0){
            return "success";
        }else{
            return "fails";
        }
    }

    @RequestMapping(value = "/userlist.do")
    @ResponseBody
    public Map<String,Object> searchUserList(){
        List<Map<String,String>> list=userServiceImpl.userList();
        if(list.size()>0){
            int count=userServiceImpl.userCount();
            Map map=new HashMap();
            map.put("msg","");
            map.put("code",0);
            map.put("data",list);
            map.put("count",count);
            return map;
        }else{
            return null;
        }
    }
}
