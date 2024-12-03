 package com.resustainability.reisp.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.resustainability.reisp.common.DateParser;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.SBU;
import com.resustainability.reisp.model.User;
import com.resustainability.reisp.service.MSWAPIService;
import java.io.IOException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.validation.Errors;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping({"/reone"})
public class MSWAPIController {
   Logger logger = Logger.getLogger(MSWAPIController.class);
   @Autowired
   MSWAPIService service;

   @InitBinder
   public void initBinder(WebDataBinder binder) {
      binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
   }

   @RequestMapping(
      value = {"/msw-b"},
      method = {RequestMethod.POST, RequestMethod.GET}
   )
   public ModelAndView MSWAPI(@ModelAttribute User user, HttpSession session, HttpServletRequest request, HttpServletResponse response, Object handler) {
      ModelAndView model = new ModelAndView("msw");
      return model;
   }

   @RequestMapping(
      value = {"/ajax/getMSWBilaspurList"},
      method = {RequestMethod.GET, RequestMethod.POST},
      produces = {"application/json"}
   )
   @ResponseBody
   public List<BrainBox> getMSWBilaspurList(@ModelAttribute SBU obj1, BrainBox obj, HttpSession session, HttpServletResponse response) {
      List<BrainBox> companiesList = null;
      String userId = null;
      String userName = null;
      String role = null;
      String idea_role = null;

      try {
         userId = (String)session.getAttribute("USER_ID");
         userName = (String)session.getAttribute("USER_NAME");
         role = (String)session.getAttribute("BASE_ROLE");
         idea_role = (String)session.getAttribute("IDEA_BASE_ROLE");
         obj1.setFrom_date(DateParser.parse(obj1.getFrom_date()));
         companiesList = service.getMSWBilaspurList(obj1, obj, response);
      } catch (Exception var11) {
         var11.printStackTrace();
         logger.error("getMSWBilaspurList : " + var11.getMessage());
      }

      return companiesList;
   }

   @RequestMapping(
      value = {"/getMSWBilaspurList1"},
      method = {RequestMethod.GET, RequestMethod.POST},
      produces = {"application/json"}
   )
   @ResponseBody
   public List<BrainBox> getMSWBilaspurListAPi(@RequestHeader("Authorization") String authentication, @RequestBody SBU obj1, BrainBox obj, HttpSession session, HttpServletResponse response, Errors filterErrors) throws IOException {
      List companiesList = null;

      try {
         String pair = new String(Base64.decodeBase64(authentication.substring(6)));
         String userName = pair.split(":")[0];
         String password = pair.split(":")[1];
         obj1.setUser_id(userName);
         obj1.setPassword(password);
         if (StringUtils.isEmpty(obj1.getFrom_date())) {
            response.sendError(313);
         }

         companiesList = service.getMSWBilaspurList(obj1, obj, response);
      } catch (Exception var11) {
         System.out.println(filterErrors.getAllErrors());
         response.sendError(400);
         var11.printStackTrace();
         logger.error("getMSWBilaspurList : " + var11.getMessage());
      }

      return companiesList;
   }

   @RequestMapping(
      value = {"/getMSWBilaspurList"},
      method = {RequestMethod.GET, RequestMethod.POST},
      produces = {"application/json"}
   )
   @ResponseBody
   public String checkMethod(@RequestHeader("Authorization") String authentication, @RequestBody SBU obj1, BrainBox obj, HttpSession session, HttpServletResponse response, Errors filterErrors) throws JsonProcessingException {
      List<BrainBox> companiesList = null;
      String json = null;
      boolean flag = false;
      boolean call_service = true;
      int logInfo = 0;
      boolean log = true;
      new HashMap();
      ObjectMapper objectMapper = new ObjectMapper();

      HashMap data;
      try {
         String user_id1 = "rewbbilsext";
         String password1 = "XvyzAb1298extdd";
         String pair = new String(Base64.decodeBase64(authentication.substring(6)));
         String userName = pair.split(":")[0];
         String password = pair.split(":")[1];
         obj1.setUser_id(userName);
         obj1.setPassword(password);
         InetAddress ip = InetAddress.getLocalHost();
         System.out.println("IP address: " + ip.getHostAddress());
         String newIp = ip.getHostAddress();
         String Myip = "10.100.3.11";
         String[] IP = new String[]{"10.11.10.102", "103.169.174.226", "34.93.149.251", "10.11.10.24", "10.11.10.25", "10.11.10.28", "10.11.10.20", "10.11.10.21", "10.11.10.22", "10.11.10.23", "10.11.10.42", Myip, newIp};
         if (IP.length > 0) {
            for(int i = 0; i < IP.length; ++i) {
               if (IP[i].contentEquals(newIp)) {
                  flag = true;
               }
            }

            System.out.println(flag);
         }

         obj1.setPTC_status((String)null);
         if (!flag) {
            data = new HashMap();
            data.put("200", "No Access for this IP Address: " + newIp);
            json = objectMapper.writeValueAsString(data);
            obj1.setMSG("No Access for this IP Address : " + newIp);
            companiesList = new ArrayList(1);
         } else {
            if (user_id1.contentEquals(obj1.getUser_id()) && password1.contentEquals(obj1.getPassword())) {
               if (StringUtils.isEmpty(obj1.getFrom_date())) {
                  call_service = false;
                  data = new HashMap();
                  data.put("200", "Date not mentioned! Please mention this format : from_date : { m/d/yyyy }");
                  json = objectMapper.writeValueAsString(data);
                  obj1.setMSG("Date not mentioned!");
               }
            } else {
               call_service = false;
               data = new HashMap();
               data.put("200", "User Name or Password Incorrect!");
               json = objectMapper.writeValueAsString(data);
               obj1.setMSG("User Name or Password Incorrect!");
            }

            if (!call_service) {
               companiesList = new ArrayList(1);
            } else {
               companiesList = service.getMSWBilaspurList(obj1, obj, response);
                logInfo = service.getLogInfo(obj1, obj, companiesList);
               if (((List)companiesList).size() > 0 && logInfo == 0) {
                  json = objectMapper.writeValueAsString(companiesList);
                  obj1.setMSG(((List)companiesList).size() + " Data synched");
                  obj1.setPTC_status("Y");
                  log = true;
               } else if (((List)companiesList).size() > 0 && logInfo == 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "Yes".equalsIgnoreCase(obj1.getRepulled())) {
                  json = objectMapper.writeValueAsString(companiesList);
                  obj1.setMSG(((List)companiesList).size() + " Data synched");
                  obj1.setPTC_status("Y");
                  log = true;
               } else if (((List)companiesList).size() > 0 && logInfo > 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "Yes".equalsIgnoreCase(obj1.getRepulled())) {
                  json = objectMapper.writeValueAsString(companiesList);
                  obj1.setMSG(((List)companiesList).size() + " Data synched");
                  obj1.setPTC_status("Y");
                  log = true;
               } else if (((List)companiesList).size() > 0 && logInfo > 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "No".equalsIgnoreCase(obj1.getRepulled())) {
                  data = new HashMap();
                  data.put("200", "Data Already pulled before! If you want to pull again Change header (repulled to Yes)");
                  json = objectMapper.writeValueAsString(data);
                  log = false;
               } else if (((List)companiesList).size() > 0 && logInfo > 0 && StringUtils.isEmpty(obj1.getRepulled())) {
                  data = new HashMap();
                  data.put("200", "Data Already pulled before! If you want to pull again, Add header (repulled : Yes)");
                  json = objectMapper.writeValueAsString(data);
                  log = false;
               } else {
                  companiesList = new ArrayList(1);
                  data = new HashMap();
                  data.put("200", "No Records Available For Selected Date!");
                  json = objectMapper.writeValueAsString(data);
                  obj1.setMSG("No Records Available For Selected Date!");
               }

               if (((List)companiesList).size() > 0 && logInfo > 0 && !StringUtils.isEmpty(obj1.getRepulled()) && "No".equalsIgnoreCase(obj1.getRepulled())) {
                  data = new HashMap();
                  data.put("200", "Data Already pulled before! If you want to pull again Change header (repulled to Yes)");
                  json = objectMapper.writeValueAsString(data);
                  log = false;
               }
            }
         }

         if (log) {
            service.getLogsOfResults(companiesList, obj1);
         }
      } catch (Exception var25) {
         var25.printStackTrace();
         System.out.println(var25.getMessage());
         if ("Index 0 out of bounds for length 0".contentEquals(var25.getMessage())) {
            data = new HashMap();
            data.put("200", "Please enter User Name and Password!");
            json = objectMapper.writeValueAsString(data);
         } else {
            data = new HashMap();
            data.put("200", "Internal Error! Please contact Support");
            json = objectMapper.writeValueAsString(data);
         }

         logger.error("getMSWBilaspurList : " + var25.getMessage());
      }

      return json;
   }
}