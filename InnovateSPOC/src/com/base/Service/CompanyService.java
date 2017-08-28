package com.base.Service;

import com.base.Po.CompanyList;
import java.util.List;
import com.base.Po.Company;
public interface CompanyService {
	
	public int addCompany(String title,String photo,String gname);
	
	public CompanyList query_company(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue);
	
	public String deleteCompany(String str);
	
	public void updateCompany(String title,String photo,String gname,int id);
	
	public List<Company> get_Pcompany();
	
	public List<Company> get_Ucompany();
	
	public List<Company> get_Dcompany();
}
