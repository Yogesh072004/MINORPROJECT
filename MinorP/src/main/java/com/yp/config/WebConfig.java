package com.yp.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.yp.interceptor.CacheControlInterceptor;

public class WebConfig implements WebMvcConfigurer {
	 @Autowired
	    private CacheControlInterceptor cacheControlInterceptor;

	    @Override
	    public void addInterceptors(InterceptorRegistry registry) {
	        registry.addInterceptor(cacheControlInterceptor);
	    }
}
