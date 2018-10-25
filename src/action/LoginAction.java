package action;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import entity.LoginEntity;
import service.LoginService;

@Controller
public class LoginAction {
	@Autowired
	LoginService loginservice;
	@RequestMapping("/login.do")
	private String Entry(HttpServletRequest request,String username,String password){
		   String user = request.getParameter("username");
	        String pass = request.getParameter("password");
      List<Map<String, Object>> dataLogin = loginservice.JudgeInput();
		for (int i = 0; i < dataLogin.size(); i++) {
			LoginEntity accountlist = (LoginEntity) dataLogin.get(i);
			String a = accountlist.getUser_name();
			String b= accountlist.getUser_pass();
		
			if(user.equals("admin")&& pass.equals("123")){
			System.out.println(user);
			return "redirect:stadiumList.do";
			}
			else if (user.equals(a) && pass.equals(b)) {
				return "index";
			}
		
			else {
				continue;
			}
		}
		return "login";
	
		
	}
	@RequestMapping("/reg.do")
	private String reg(String userid,String username,String userpass,String userage,String usersex,String useremail){
		LoginEntity lg=new LoginEntity();
		lg.setUser_id(userid);
		lg.setUser_name(username);
		lg.setUser_pass(userpass);
		lg.setUser_age(userage);
		lg.setUser_sex(usersex);
		lg.setUser_email(useremail);
		loginservice.regInput(lg);
		return "index";	
	}


}
