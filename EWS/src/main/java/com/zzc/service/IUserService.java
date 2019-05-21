package com.zzc.service;

import java.util.List;
import java.util.Map;

public interface IUserService {
    public List<Map<String,String>> login(String uname, String upwd);
    public int signup(String signupname,String email,String signuppwd,String role);
    public List<Map<String,String>> userList();
    public int userCount();
}
