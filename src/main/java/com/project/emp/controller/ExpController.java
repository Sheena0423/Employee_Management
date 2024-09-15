package com.project.emp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.emp.model.Experience;
import com.project.emp.repository.ExpRepo;


@Controller 
public class ExpController {
	
	@Autowired
	public ExpRepo exrepo;
	
	@PostMapping("/addExp")
	public String addExp(@ModelAttribute Experience exp) {
		exrepo.save(exp);
		return "redirect:/viewDetails";
	}
	
	@RequestMapping("/viewDetails")
	public String displayData(Model model) {
		List<Experience> li =exrepo.findAll();
		model.addAttribute("data", li);
		
		return "viewData.jsp";
	}
	
	@RequestMapping("/delete/{id}")
	public String delete(@PathVariable int id) {
		exrepo.deleteById(id);
		return "redirect:/viewDetails";
	}
	 
	@RequestMapping("/{id}")
	public String edit(@PathVariable int id, Model model) {
		Experience ex=exrepo.findById(id).orElse(null);
		model.addAttribute("edit_data", ex);
		return "edit.jsp";
	}
}
