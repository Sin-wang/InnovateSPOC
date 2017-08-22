package com.base.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;

import com.base.Dao.CompanyDao;
import com.base.Po.CompanyList;
import com.base.Service.CompanyService;

public class CompanyServicelmpl implements CompanyService{

	@Autowired
    private CompanyDao companydao;
	
	@Override
	public int addCompany(String title, String photo) {
		// TODO Auto-generated method stub
		int flag=companydao.addsCompany(title, photo);
		return flag;
	}

	@Override
	public CompanyList query_company(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 0) {
		    columnName = "id";
		} else if (order == 1) {
		    columnName = "title";
		} else if (order == 2) {
		    columnName = "photo";
		}
		CompanyList list=companydao.queryCompany(size, pageindex, columnName, orderDir, searchValue);
		return list;
	}

	@Override
	public String deleteCompany(String str) {
		// TODO Auto-generated method stub
		
		String message=companydao.deleteCompany(str);
		return message;
	}

	@Override
	public void updateCompany(String title, String photo) {
		// TODO Auto-generated method stub
		companydao.updateCompany(title, photo);
	}

}
