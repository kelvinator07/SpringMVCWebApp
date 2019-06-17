package com.geekykel.springmvc.controllers;

import com.geekykel.springmvc.entities.Customer;
import com.geekykel.springmvc.entities.Student;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/customer")
public class CustomerController {

    // initbinder to trim whitespace fro validation
    @InitBinder
    public void initBinder(WebDataBinder webDataBinder) {

        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);

        webDataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		// create a Customer object
		Customer customer = new Customer();

		// add Customer object to the model
		theModel.addAttribute("customer", customer);
		
		return "customer-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("customer") Customer customer,
							  BindingResult bindingResult) {

        System.out.println("Last Name: |" + customer.getLastName() + "|");

		if (bindingResult.hasErrors()) {
			return "customer-form";
		}
		
		// log the input data
		System.out.println("Customer: " + customer.getFirstName()
							+ " " + customer.getLastName());
		
		return "customer-confirmation";
	}
	
}









