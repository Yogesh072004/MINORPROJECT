package com.yp.service;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Service;

import com.yp.model.USERS;
import com.yp.repo.UREPO;

@Service
public class Usereservice {
@Autowired	
private UREPO repo1;
@Autowired
private Environment env;

public String register(USERS user) {
	String msg=repo1.save(user).getUserid()+" USERID USER Is added";
	return msg;
}
public Set<String> getAllCountries(){
	Locale locales[]=Locale.getAvailableLocales();
	Set<String> countrySet=new TreeSet();
	for(Locale l:locales) {
		countrySet.add(l.getDisplayCountry());
	}
	return countrySet;
}
public boolean isValidUser(String email, String password) {
   
	System.out.println(email+"  "+password);
   List< USERS> user = repo1.findByEmailAndPassword(email, password);
   return !user.isEmpty();  // Return true if user exists, otherwise false
}

}
