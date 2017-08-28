package com.base.Dao;

import java.util.List;

import com.base.Po.Company;
import com.base.Po.CompanyList;

public interface CompanyDao {
	public int addsCompany(String title, String photo,String gname);

	public CompanyList queryCompany(Integer size, Integer pageindex,
			String columnName, String orderDir, String searchValue);

	public String deleteCompany(String str);

	public void updateCompany(String title, String photo,String gname,int id);
	
	public List<Company> get_Pcompany();
	
	public List<Company> get_Ucompany();
	
	public List<Company> get_Dcompany();
}
