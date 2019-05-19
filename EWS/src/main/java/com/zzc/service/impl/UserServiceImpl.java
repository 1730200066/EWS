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
    @Override
    public List<Map<String, String>> login(String uname, String upwd) {
        List<Map<String,String>> list=userDAOImpl.login(uname,upwd);
        return list;
    }
    @Override
    public int signup(String signupname,String email,String signuppwd,String role){
        int i=userDAOImpl.signup(signupname,email,signuppwd,role);
        return i;
    }
}
