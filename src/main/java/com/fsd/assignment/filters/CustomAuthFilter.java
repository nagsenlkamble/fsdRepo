package com.fsd.assignment.filters;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;

public class CustomAuthFilter extends SimpleUrlAuthenticationFailureHandler {

    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException exception) throws IOException, ServletException {
    	
    	System.out.println("In auth filter");
    	System.out.println(exception.getMessage());
    	
    	if(exception.getClass().isAssignableFrom(BadCredentialsException.class)){
    		System.out.println("Invalid username or password..");
    		setDefaultFailureUrl("/welcome");
    	} else if(exception.getClass().isAssignableFrom(SessionAuthenticationException.class)){
    		System.out.println("Session expired...");
    		setDefaultFailureUrl("/welcome");
    	}
    	
    	super.onAuthenticationFailure(request, response, exception);
    	
    	
    	
    }


}
