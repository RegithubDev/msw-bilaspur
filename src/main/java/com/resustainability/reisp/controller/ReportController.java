package com.resustainability.reisp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resustainability.reisp.constants.PageConstants;
import com.resustainability.reisp.model.Baseline;
import com.resustainability.reisp.model.Department;
import com.resustainability.reisp.model.RoleMapping;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.ReportService;
import com.resustainability.reisp.service.RoleMappingService;

@Controller
public class ReportController {
	@InitBinder
    public void initBinder(WebDataBinder binder) { 
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
    }
	Logger logger = Logger.getLogger(ReportController.class);
	
	@Autowired
	ReportService service;
	
	
	@RequestMapping(value = "/report", method = {RequestMethod.POST, RequestMethod.GET})
	public ModelAndView report(@ModelAttribute User user, HttpSession session) {
		ModelAndView model = new ModelAndView(PageConstants.reportFOrm);
		Baseline obj = new Baseline();
		String userId = null;
		String userName = null;
		try {
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			List<Baseline> objList = service.getData(obj);
			model.addObject("objList", objList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return model;
	}
	
	@RequestMapping(value = "/add-data", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView addData(@ModelAttribute Baseline obj,RedirectAttributes attributes,HttpSession session) {
		boolean flag = false;
		String userId = null;
		String userName = null;
		ModelAndView model = new ModelAndView();
		try {
			model.setViewName("redirect:/report");
			userId = (String) session.getAttribute("USER_ID");
			userName = (String) session.getAttribute("USER_NAME");
			obj.setCreated_by(userId);
			flag = service.addData(obj);
			if(flag == true) {
				attributes.addFlashAttribute("success", "Data Added Succesfully.");
			}
			else {
				attributes.addFlashAttribute("error","Adding Data is failed. Try again.");
			}
		} catch (Exception e) {
			attributes.addFlashAttribute("error","Adding Data is failed. Try again.");
			e.printStackTrace();
		}
		return model;
	}
	
	
}
