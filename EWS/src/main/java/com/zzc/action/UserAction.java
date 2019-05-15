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
    @RequestMapping(value = "/displayTest.do",method = RequestMethod.GET)
    @ResponseBody
    public List displayTest(){
        System.out.println("action test");
        List list=new ArrayList();
        list.add("zhangsan");
        list.add("lisi");
        list.add("wangwu");
        list.add("zhaoliu");
        System.out.println(list.toString());
        return list;
    }
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    @ResponseBody
    public String login(@RequestParam("uname") String uname,String upwd){
        if(uname.equals("admin")&&upwd.equals("123456")){
            return "success";
        }else {
            return "fails";
        }
    }
}
