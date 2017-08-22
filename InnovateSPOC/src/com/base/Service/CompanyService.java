package com.base.Service;

import com.base.Po.CompanyList;

public interface CompanyService {
	public int addCompany(String title,String photo);
	
	public CompanyList query_company(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
	
	public String deleteCompany(String str);
	
	public void updateCompany(String title,String photo);
}
