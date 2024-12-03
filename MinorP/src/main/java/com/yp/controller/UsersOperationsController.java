package com.yp.controller;

import java.text.SimpleDateFormat;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yp.model.USERS;
import com.yp.service.Usereservice;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;



@Controller
public class UsersOperationsController {
	@Autowired
	private Usereservice us;

	@GetMapping("/")	
	public String gethome() {
		return "index";
	}
	@GetMapping("/home")	
	public String thome() {
		return "index";
	}
	
		@GetMapping("/header")
    public String header() {
        return "header"; // Maps to /WEB-INF/views/header.jsp
    }

    @GetMapping("/footer")
    public String footer() {
        return "footer"; // Maps to /WEB-INF/views/footer.jsp
    }
    @GetMapping("/alogin")
    public String alogin() {
        return "alogin"; // Maps to /WEB-INF/views/footer.jsp
    }

    @GetMapping("/userlogin")
    public String userlogin(@ModelAttribute("user") USERS user) {
        return "userlogin"; // Maps to /WEB-INF/views/userlogin.jsp
    }


    @PostMapping("/userlogin")
    public String userLogin(@ModelAttribute("user") USERS user, Model model, HttpSession session) {
        boolean isValidUser = us.isValidUser(user.getUmail(), user.getPwd());

        if (isValidUser) {
            session.setAttribute("loggedInUser", user.getUmail()); // Save user info in session
            return "redirect:/userhome";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "userlogin";
        }
    }

    @GetMapping("/userhome")
    public String userHome(HttpSession session, HttpServletResponse response) {
        // Redirect to login if session is invalid or user is not logged in
        if (session.getAttribute("loggedInUser") == null) {
            return "redirect:/";
        }

        // Prevent caching
        response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
        response.setHeader("Pragma", "no-cache");
        response.setHeader("Expires", "0");

        return "userhome";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate(); // Invalidate the session
        return "redirect:/";  // Redirect to home page
    }

    


    @GetMapping("/userregister")
    public String userregister(@ModelAttribute("user") USERS user) {
    	user.setPno("+91");
        return "userregister"; // Maps to /WEB-INF/views/userregister.jsp
    }
   
    @PostMapping("/userregister")
    public String userregistersub(RedirectAttributes ses, @ModelAttribute("user") USERS user) {
    	 String result=us.register(user);
    	 ses.addFlashAttribute("resultmsg", result);
        return "redirect:home"; // Maps to /WEB-INF/views/userregister.jsp
    }
    @ModelAttribute("countriesinfo")
    public Set<String> populateCountries(){
    	Set<String> countrySet=us.getAllCountries();
    	return countrySet;
    }
//    @PostMapping("/statesurl")
//    public  String   showStatesByCountry(@RequestParam("country") String country,
//                                                                             @ModelAttribute("user") USERS user,
//                                                                             Map<String,Object> map ) {
//            System.out.println("EmployeeOperationsController.showStatesByCountry()");
//            //use service
//            List<String> statesList=us.getStatesByCountry(country);
//            // put statesList in model attribute
//            map.put("statesInfo", statesList);
//            //return LVN of form page
//            return "userregister";
//
//    }
    @InitBinder
    public void mydate(WebDataBinder binder) {
    	System.out.println();
    	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
    	binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(sdf,true));
    }

}