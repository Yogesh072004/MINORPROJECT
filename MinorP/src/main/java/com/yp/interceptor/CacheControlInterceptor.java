package com.yp.interceptor;

import java.time.LocalDateTime;










import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CacheControlInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest req, HttpServletResponse res, Object handler)
                    throws Exception {
            System.out.println("TimeCheckInterceptor.preHandle()");
            // get System date and time
            LocalDateTime  ldt=LocalDateTime.now();
            //get  current hour of the day
            int hour=ldt.getHour();
    if (!req.getServletPath().equalsIgnoreCase("/")) {        
            if(hour<6 || hour>12 ) {
            	System.out.println("Current hour: " + hour);
            	System.out.println("Redirecting to timeout.jsp");

                    RequestDispatcher rd=req.getRequestDispatcher("/timeout.jsp");
                    rd.forward(req, res);
                    return false;
            }
    }            	System.out.println("Current hour: " + hour);


            return true;

    }
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) {
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");
    }
}
