package com.base.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;





import com.base.Po.studentList;
import com.base.Po.userList;
import com.base.Service.UserService;
import com.base.Dao.UserDao;


@Service("UserService")
public class UserServiceImpl implements UserService {

    
    @Autowired
    private UserDao userdao;
    @Override
    public boolean login(String username, String password) {
	// TODO Auto-generated method stub
	return userdao.login(username, password);
    }
	@Override
	public int addUser(String id,String username, String password) {
		// TODO Auto-generated method stub
		int flag = userdao.addUser(id,username, password);
		return flag;
	}
	@Override
	public userList query_user(Integer size, Integer pageindex, int order,
			String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 1) {
		    columnName = "id";
		} else if (order == 2) {
		    columnName = "name";
		} else if (order == 3) {
		    columnName = "sex";
		}
		userList list = userdao.query_user(size, pageindex, columnName, orderDir, searchValue);
		return list;
	}
	@Override
	public void updateUser(String id, String password) {
		// TODO Auto-generated method stub
		userdao.updateUser(id, password);
	}
	@Override
	public String delUser(String str) {
		// TODO Auto-generated method stub
		String message= userdao.delUser(str);
		return message;
	}

}
