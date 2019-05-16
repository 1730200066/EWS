package com.zzc.dao;

import java.util.List;
import java.util.Map;

public interface IUserDAO {
    public List<Map<String,String>> login(String uname, String upwd);
}
