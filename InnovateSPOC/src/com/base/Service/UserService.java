package com.base.Service;

import com.base.Po.userCenter;
import com.base.Po.userList;

public interface UserService {
    /**
     * 用户名username 密码：password
     * 
     * @param username
     * @param password
     * @return
     */
    public int login(String usename, String password);
    
    public int addUser(String id,String username, String password);
    
    public userList query_user(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
    
    public void updateUser(String id,String password);
    
    public String delUser(String str);

	public userCenter getImage(String userid);


}
