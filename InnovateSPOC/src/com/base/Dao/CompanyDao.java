package com.base.Dao;

import com.base.Po.CompanyList;

public interface CompanyDao {
	public int addsCompany(String title, String photo);

	public CompanyList queryCompany(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue);

	public String deleteCompany(String str);

	public void updateCompany(String title, String photo);
}
