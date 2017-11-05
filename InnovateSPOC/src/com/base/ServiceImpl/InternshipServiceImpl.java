package com.base.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.InternshipDao;
import com.base.Po.internship;
import com.base.Po.internshipList;
import com.base.Service.InternshipService;

@Service("IntershipService")
public class InternshipServiceImpl implements InternshipService{

	@Autowired
	private InternshipDao internshipDao;

	@Override
	public int addinternship(String studentId, String address, String begin,
			String end, String description) {
		// TODO Auto-generated method stub
		int flag = internshipDao.addinternship(studentId, address, begin, end, description);
		return flag;
	}

	@Override
	public internshipList query_internship(Integer size, Integer pageindex,
			int order, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 1) {
		    columnName = "id";
		} else if (order == 2) {
		    columnName = "name";
		}
		internshipList list = internshipDao.query_internship(size, pageindex, columnName, orderDir, searchValue);
		return list;
	}

	@Override
	public String delInternship(String str) {
		// TODO Auto-generated method stub
		String message= internshipDao.delInternship(str);
		return message;
	}

	@Override
	public void updateInternship(int id,String begin, String end, String description) {
		// TODO Auto-generated method stub
		internshipDao.updateInternship(id,begin, end, description);
	}

	@Override
	public List<internship> get_internship(String sid) {
		// TODO Auto-generated method stub
		List<internship> list = internshipDao.get_internship(sid);
		return list;
	}

	@Override
	public internshipList query_Uinternship(String sid, Integer size,
			Integer pageindex, int order, String orderDir, String searchValue) {
		// TODO Auto-generated method stub
		String columnName = "";
		if (order == 1) {
		    columnName = "id";
		} else if (order == 2) {
		    columnName = "name";
		}
		internshipList list = internshipDao.query_Uinternship(sid,size, pageindex, columnName, orderDir, searchValue);
		return list;
	}
	
//	@Override

}
