package com.base.Dao;

import com.base.Po.userList;

public interface UserDao {
    /**
     * 用户名username 密码：password
     * 
     * @param username
     * @param password
     * @return
     */
    public boolean login(String username, String password);
    
    public int addUser(String id,String username,String password);
    
    public userList query_user(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue);
    
    public void updateUser(String id,String password);
    
    public String delUser(String str);
}
