package com.base.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.DaoImpl.NotificationDaoImpl;
import com.base.Service.NotificationService;


@Service("notificationService")
public class NotificationServiceImpl implements NotificationService{

	@Autowired
	private NotificationDaoImpl notificationDaoImpl;
	
	
	@Override
	public void setNotification(String insertSql) {
		// TODO Auto-generated method stub
		notificationDaoImpl.setNotification(insertSql);
		return;
	}


	@Override
	public List getNotificationInfo(String currentPage,String itemsPerPage) {
		// TODO Auto-generated method stub
		
		return notificationDaoImpl.getNotificationInfo(currentPage,itemsPerPage);
	}
}
