package com.base.Service;

import java.util.List;

import com.base.Po.news;

public interface NotificationService {

	/*
	   参数说明：insertSql,字符串,为要插入的sql字符串
	   返回值：    无返回值
	   函数功能：发布公告
	 */	
	 public void setNotification(String insertSql);
	 
	 /*
	   参数说明：currentPage，当前页;itemsPerPage,为每页的条数
	   返回值：    List,为公告记录的集合
	   函数功能：获得当前页的公告记录
	 */	
	 public List getNotificationInfo(String currentPage,String itemsPerPage); 
	 
	 public String delnews(int nid);
	 
	 public List<news> getNews();
}
