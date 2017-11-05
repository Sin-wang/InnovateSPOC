package com.base.Controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.hql.internal.ast.tree.IntoClause;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.base.Po.userCenter;
import com.base.Service.UserService;
import com.base.utils.CookieUtils;

@Controller("loginController")
public class LoginController {

    @Autowired
    private UserService userService;

    // 用户单点登录控制
    @RequestMapping("/login.do")
    public String login(HttpServletRequest request,
	    HttpServletResponse response, HttpSession session) {        
	String userid = request.getParameter("username");
	String pwd = request.getParameter("pwd");
	String userType = request.getParameter("userType");
	String authCode = request.getParameter("authCode");	
	// 判断验证码
	String strCode = (String) session.getAttribute("strCode");
	if (!authCode.equals(strCode)) {
	    return "redirect:login.html";
	  //  return "InnovateSPOC/login.html";
	}
	// 判断登录是否成功
	int adminValue =0;
	adminValue = userService.login(userid, pwd);
	//System.out.println(adminValue+"login");
	if (adminValue == Integer.parseInt(userType)) {
		
	    CookieUtils.addCookie("username", userid, response);	    
	    CookieUtils.addCookie("logintime",String.valueOf(new Date().getTime()), response);
	    CookieUtils.addCookie("userType", userType,response);
	    String src="../imgdraw/big.jpg";
		String name="";

    	userCenter ui=userService.getImage(userid);			
		
		if(ui!=null && ui.getTSflag() == 2){
		  src=ui.getHeadshot();
		  name=ui.getSname();
		  //System.out.println(src+"||src");
		}else if(ui!=null && ui.getTSflag() == 1){
			src = ui.getPhoto_address();
			name = ui.getTname();
		}		
		CookieUtils.addCookie("image", src,response);
	    if(adminValue == 0){
	    	return "redirect:jsp/user.jsp";
	    	//return "redirect:InnovateSPOC/jsp/user.jsp";
	    }else{
	    	return adminValue == 1?"redirect:jsp/TeachersCenter.jsp":"redirect:jsp/userCenter.jsp";
	    	//return adminValue == 1?"redirect:InnovateSPOC/jsp/TeachersCenter.jsp":"redirect:InnovateSPOC/jsp/userCenter.jsp";
	    }
	    
	    
	} else { 
	    return "redirect:login.html";
	}
    }

    // 用户单点登录控制
    @RequestMapping("/loginout.do")
    public String loginOut(HttpServletRequest request,
	    HttpServletResponse response) {
	CookieUtils.loginout(request, response);
	return "redirect:login.html";
    }

    @RequestMapping("/getAuthCode.do")
    public void getAuthCode(HttpServletRequest request,
	    HttpServletResponse response, HttpSession session)
	    throws IOException {
	int width = 63;
	int height = 37;
	Random random = new Random();
	// 设置response头信息
	// 禁止缓存
	response.setHeader("Pragma", "No-cache");
	response.setHeader("Cache-Control", "no-cache");
	response.setDateHeader("Expires", 0);

	// 生成缓冲区image类
	BufferedImage image = new BufferedImage(width, height, 1);
	// 产生image类的Graphics用于绘制操作
	Graphics g = image.getGraphics();
	// Graphics类的样式
	g.setColor(this.getRandColor(200, 240));
	g.setFont(new Font("Times New Roman", 0, 28));
	g.fillRect(0, 0, width, height);
	// 绘制干扰线
	for (int i = 0; i < 40; i++) {
	    g.setColor(this.getRandColor(130, 200));
	    int x = random.nextInt(width);
	    int y = random.nextInt(height);
	    int x1 = random.nextInt(12);
	    int y1 = random.nextInt(12);
	    g.drawLine(x, y, x + x1, y + y1);
	}

	// 绘制字符
	String strCode = "";
	for (int i = 0; i < 4; i++) {
	    String rand = String.valueOf(random.nextInt(10));
	    strCode = strCode + rand;
	    g.setColor(new Color(20 + random.nextInt(110), 20 + random
		    .nextInt(110), 20 + random.nextInt(110)));
	    g.drawString(rand, 13 * i + 6, 28);
	}
	// 将字符保存到session中用于前端的验证
	session.setAttribute("strCode", strCode);
	g.dispose();

	ImageIO.write(image, "JPEG", response.getOutputStream());
	response.getOutputStream().flush();

    }

    // 创建颜色
    Color getRandColor(int fc, int bc) {
	Random random = new Random();
	if (fc > 255)
	    fc = 255;
	if (bc > 255)
	    bc = 255;
	int r = fc + random.nextInt(bc - fc);
	int g = fc + random.nextInt(bc - fc);
	int b = fc + random.nextInt(bc - fc);
	return new Color(r, g, b);
    }
}
