package com.base.utils;

import java.awt.Color;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import jxl.write.WritableCellFormat;
import jxl.write.WritableFont;
import jxl.write.WriteException;

import org.apache.commons.io.FileUtils;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFColor;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;



public class ExcelReport {

	/*
	 * 获取项目的根目录 因为tomcat和weblogic获取的根目录不一致，所以需要此方法
	 */
	public static String getWebRootUrl(HttpServletRequest request,
			String filename) {
		String fileDirPath = request.getSession().getServletContext()
				.getRealPath(filename);
		if (fileDirPath == null) {
			// 如果返回为空，则表示服务器为weblogic，则需要使用另外的方法
			try {
				return request.getSession().getServletContext()
						.getResource(filename).getFile();
			} catch (MalformedURLException e) {
				e.printStackTrace();
			}
		}

		return fileDirPath;

	}

	// 方法功能描述: 判断是否是IE浏览器
	public static boolean isMSBrowser(HttpServletRequest request) {
		String[] IEBrowserSignals = { "MSIE", "Trident", "Edge" };
		String userAgent = request.getHeader("User-Agent");
		for (String signal : IEBrowserSignals) {
			if (userAgent.contains(signal)) {
				return true;
			}
		}
		return false;
	}

}
