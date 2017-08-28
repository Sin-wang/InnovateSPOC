package com.base.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.CompanyDao;
import com.base.Po.Company;
import com.base.Po.CompanyList;
import com.base.Service.CompanyService;
@Service("CompanyService")
public class CompanyServicelmpl implements CompanyService{

	@Autowired
    private CompanyDao companydao;
	
	@Override
	public int addCompany(String title, String photo,String gname) {
		// TODO Auto-generated method stub
		int flag=companydao.addsCompany(title, photo,gname);
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
		}else if(order==3){
			columnName="gname";
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
	public void updateCompany(String title, String photo,String gname,int id) {
		// TODO Auto-generated method stub
		companydao.updateCompany(title, photo,gname,id);
	}

	@Override
	public List<Company> get_Pcompany() {
		// TODO Auto-generated method stub
		List<Company> list=companydao.get_Pcompany();
		return list;
	}

	@Override
	public List<Company> get_Ucompany() {
		// TODO Auto-generated method stub
		List<Company> list=companydao.get_Ucompany();
		return list;
	}

	@Override
	public List<Company> get_Dcompany() {
		// TODO Auto-generated method stub
		List<Company> list=companydao.get_Dcompany();
		return list;
	}

}
