package com.zzc.service;

import java.util.List;
import java.util.Map;

public interface IUserService {
    List<Map<String,String>> login(String uname, String upwd);
}
