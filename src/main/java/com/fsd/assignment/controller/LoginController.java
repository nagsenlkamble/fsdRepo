package com.fsd.assignment.controller;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fsd.assignment.login.form.Login;

@Controller
public class LoginController {
	
private static Map<String,String> credentials = new HashMap<String,String>();

@RequestMapping(value="/welcome")
	public String getWelcomePage(){
		return "welcome";
}

@RequestMapping(value="/loadLoginPg")
	public String homepage(Model model){
		Login login= new Login();
		model.addAttribute("login", login);
		return "login";
}

@RequestMapping(value="/invalid-login")
public String getInvalidLoginPage(){
	return "unauthorizedPage";
}

@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
public String registerUser(@ModelAttribute("registerUser") Login login,BindingResult result,Model model,HttpSession session) {
	if (login.getUserId()==null || login.getUserId().equals("")){		
		model.addAttribute("message", "User Id cannot be blank");
		return "signup";
	}else{
		if(credentials.containsKey(login.getUserId())){
			model.addAttribute("message", "User Id already exist.");
			return "signup";
		}else{
			credentials.put(login.getUserId(), login.getPassword());
		}
	}
	model.addAttribute("login", login);
	return "login";
}

@RequestMapping(value = "/login", method = RequestMethod.POST)
public String login(@ModelAttribute("login") Login login,BindingResult result,Model model,HttpSession session) {
	
	if (login.getUserId()==null || login.getUserId().equals("")){
	  	login.setCaptcha("");
    	model.addAttribute("message", "User Id is required");
    	return "login";
	}
	
	if (login.getPassword()==null || login.getPassword().equals("")){
	  	login.setCaptcha("");
    	model.addAttribute("message", "Password is required");
    	return "login";
	}	
	

 	String captcha=(String)session.getAttribute("CAPTCHA");
    if(captcha==null || (captcha!=null && !captcha.equals(login.getCaptcha()))){
    	login.setCaptcha("");
    	model.addAttribute("message", "Captcha does not match");
    	return "login";
    }

	if(credentials.containsKey(login.getUserId()) && login.getPassword().equals(credentials.get(login.getUserId()))){
		model.addAttribute("loginId", login.getUserId());
		return "home";
	}
    if(login.getUserId().equals("admin") && login.getPassword().equals("admin")){
		model.addAttribute("loginId", login.getUserId());
		return "home";
	}
	else{
		login.setCaptcha("");
		model.addAttribute("message","User ID or Password Incorrect");
		return "login";	
	}
}

	@GetMapping("/signup")
	public String getSignUpPage(Model model){
		Login login= new Login();
		model.addAttribute("login", login);
		return "signup";
	}
	
	@GetMapping("/tutorials")
	public String getTutorialsPage(){
		return "tutorials";
	}
	
	@GetMapping("/adminPage")
	public String getAdminPage(){
		return "adminPage";
	}
}
