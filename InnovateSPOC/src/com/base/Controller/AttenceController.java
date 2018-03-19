package com.base.Controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.apache.commons.collections.CollectionUtils;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.base.Po.excel;
import com.base.Service.AttenceService;
import com.base.ServiceImpl.InputExcelServiceImpl;
import com.base.utils.ExcelReport;


@Controller("AttenceController")
@RequestMapping("/jsp")
public class AttenceController {
	
	@Autowired
    private AttenceService attenceservice;
	
	//获得签到数据
    @RequestMapping("/getAttenceData.do")
    public String getAttenceData(HttpServletRequest request,
		    HttpServletResponse response){
    	List<excel> list = attenceservice.getAttenceData(); 
    	
    	List dates = new ArrayList();
    	List ard = new ArrayList();
		for(int i=0;i<list.size();i++){
			String[] getdates = list.get(i).getDates().split(",");
			String[] getard = list.get(i).getArd().split(",");
			List<String> array1 = new ArrayList<String>(Arrays.asList(getdates));
			List<String> array2 = new ArrayList<String>(Arrays.asList(getard));
			dates.add(i, array1);
			ard.add(i,array2);
	
		}
			
		//list.get(0).getDates().split(",");
		//List<String> dates = Arrays.asList(attence); 
		try {
			List listReturn = new ArrayList();
		    listReturn.add(list);
			listReturn.add(dates); 
			listReturn.add(ard);
		    JSONArray json = JSONArray.fromObject(listReturn);
		    response.setContentType("text/html;charset=UTF-8");
		    response.getWriter().print(json.toString());

		} catch (Exception e) {
		    // TODO Auto-generated catch block
		    e.printStackTrace();
		}
		return null;
    }
    
    @RequestMapping("/importAttense.do")
	public String importAttense(HttpServletRequest request,
		    HttpServletResponse response, ModelMap map){
		//多文件上传
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;

		MultipartFile mFile = multipartRequest.getFile("fileResource");
		
		//获得上传文件的url
		String path = ExcelReport.getWebRootUrl(request, "/upload/");
		String fileName = mFile.getOriginalFilename();				//获得文件的原始名字
		String filename = "";										//创建一个变量用于存储新文件名
		boolean flag = true;									
		boolean flag_0 = true;
		int tag = 0;												//用于判断是否插入成功
		
		try {
			//判断文件是否为空
		    if (!fileName.isEmpty()) {
		    //获得文件的新名字
			filename = new Date().getTime() + "$" + fileName;
			InputStream inputStream = mFile.getInputStream();
			byte[] b = new byte[1048576];
			int length = inputStream.read(b);
			path += "\\" + filename;			//路径名称后加上文件的新名字

			//把获得的上传文件存储在临时文件中
			File tempFile = new File(path);
			FileOutputStream outputStream = new FileOutputStream(tempFile);
			outputStream.write(b, 0, length);
			
			//文件的新名字
			filename = path;

			Workbook wb = (Workbook) InputExcelServiceImpl.getWb(path);
			List<List<String>> list = InputExcelServiceImpl
				.getExcelBaseRows(
					InputExcelServiceImpl.getSheet(wb, 0), -1, -1);

			if (CollectionUtils.isNotEmpty(list)) {
				//定义几个要传入的参数
				String name = "(";
				String attenceTime = "";
				
			    //遍历数组，将每一行存入row这个list中
			    for (int i = 1; i < list.size(); i++) {
				List<String> row = list.get(i);
				//取出row中的数据
				if (row != null && row.size() > 0) {
				    
				    for (int j = 0; j < row.size(); j++) {
					// 判断必填字段是否是空数据 				0-2行为必填字段
					if (j >= 0 && j <= 6) {
					    if (row.get(j).equals("")) {
						flag_0 = false;
						break;
					    }
					}
					if (j == 3) {
						name = name + "'" + row.get(j) + "',";
					} else if (j == 6) {
						attenceTime = row.get(j);
					}
					
				    }
				}
				
			    }
			    attenceTime = attenceTime.replaceAll("/", "-");
			    name = name.substring(0,name.length() - 1) + ")" ;
			    tag = attenceservice.judge_insert_attence(name,
			    		attenceTime);
			}

			wb.close();
			outputStream.close();
			inputStream.close();
			tempFile.delete(); //
		    }
		} catch (Exception e) {
		    flag = false;
		    e.printStackTrace();
		}
		map.addAttribute("tag", tag);
		
		return "attence";
	}
    
}
