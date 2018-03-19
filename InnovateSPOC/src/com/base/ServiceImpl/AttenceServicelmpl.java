package com.base.ServiceImpl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.base.Dao.AttenceDao;
import com.base.Po.excel;
import com.base.Service.AttenceService;
@Service("AttenceService")
public class AttenceServicelmpl implements AttenceService{

	@Autowired
    private AttenceDao attencedao;
	
	@Override
	public List<excel> getAttenceData() {
		// TODO Auto-generated method stub
		List<excel> list=attencedao.getAttenceData();
//		String[] attence = null;
//		//for(int i=0;i<list.size();i++){}
//
//		attence = list.get(0).getDates().split(",");
//		List<String> dates = Arrays.asList(attence); 
//	
//		System.out.println(attence[0]);
		
		//System.out.println(list.get(0).getArd()+"aaaaa");
		
		return list;
		
		
	}

	@Override
	public int judge_insert_attence(String name, String attenceTime) {
		// TODO Auto-generated method stub
		int flag = attencedao.judge_insert_attence(name,attenceTime);
		return flag;
	}
	
}
