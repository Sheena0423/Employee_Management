package com.project.emp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.emp.model.Employee;
import com.project.emp.repository.EmpRepo;


@Controller
public class EmpController {
	@Autowired
	public EmpRepo eRepo;
	
    @GetMapping("/")
    public String Page() {
        return "Register.jsp";
    }

    @PostMapping("/register")
    public String registerPg(@ModelAttribute Employee emp, Model model) {
        System.out.println(emp);

        // Check if passwords match
        if (emp.getPassword().equals(emp.getConf_Password())) {
            eRepo.save(emp);
            model.addAttribute("errorMessage", "Registered Successfully");
            return "Register.jsp";
        } else {
            // Add error message to the model if passwords don't match
            model.addAttribute("errorMessage", "Passwords do not match. Please try again.");
            return "Register.jsp";
        }
    }

    @GetMapping("/login")
    public String login(@RequestParam String email, @RequestParam String Password, Model model) {
    	
    	Employee emp=eRepo.findByEmail(email);
    	if(emp!=null && emp.getEmail().equalsIgnoreCase(email) && emp.getPassword().equalsIgnoreCase(Password)) {
    		return "WorkExp.jsp";
    	}
    	model.addAttribute("ErrorMessage", "Invalid Credentials");
    	return "Login.jsp";
    }
}
  