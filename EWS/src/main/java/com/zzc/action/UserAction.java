package com.zzc.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

@Controller
@Scope("prototype")
@RequestMapping("/user")
public class UserAction {
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("uname") String uname,String upwd){
        if(uname.equals("admin")&&upwd.equals("123456")){
            return "success";
        }else {
            return "fails";
        }
    }

    @RequestMapping(value = "/signup.do",method = RequestMethod.GET)
    @ResponseBody
    public String signup(@RequestParam("signupname") String signupname,String email,String signuppwd){
        return "success";
    }
}
