  package com.resustainability.reisp.service;

import com.resustainability.reisp.dao.MSWAPIDao;
import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.SBU;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MSWAPIService {
   @Autowired
   MSWAPIDao dao;

   public List<BrainBox> getMSWBilaspurList(SBU obj1, BrainBox obj, HttpServletResponse response) throws Exception {
      return this.dao.getMSWBilaspurList(obj1, obj, response);
   }

   public Object getLogsOfResults(List<BrainBox> companiesList, SBU obj1) throws SQLException {
      return this.dao.getMSWBilaspurList(companiesList, obj1);
   }

   public int getLogInfo(SBU obj1, BrainBox obj, List<BrainBox> companiesList) throws SQLException {
      return this.dao.getLogInfo(obj1, obj, companiesList);
   }
}