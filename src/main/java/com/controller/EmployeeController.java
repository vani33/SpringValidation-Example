package com.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.Employee;

@Controller
public class EmployeeController {

	@RequestMapping("/hello")  
    public String display(Model model)  
    {  
        model.addAttribute("emp", new Employee());  
        return "index";  
    }
	
	@RequestMapping("/")  
    public String first(Model model)  
    {  
		model.addAttribute("emp", new Employee());  
	        return "index";  
    }
	
	
    @RequestMapping("/helloagain")  
    public String submitForm( @Valid @ModelAttribute("emp") Employee employee, BindingResult br)  
    {  
        if(br.hasErrors())  
        {  
            return "index";  
        }  
        else  
        {  
        return "final";  
        }  
    }  
}
