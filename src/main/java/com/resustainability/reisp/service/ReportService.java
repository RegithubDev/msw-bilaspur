package com.resustainability.reisp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resustainability.reisp.dao.LocationDao;
import com.resustainability.reisp.dao.ReportDao;
import com.resustainability.reisp.model.Baseline;
import com.resustainability.reisp.model.ProjectLocation;

@Service
public class ReportService {
	@Autowired
	ReportDao dao;


	public boolean addData(Baseline obj) throws Exception {
		return dao.addData(obj);
	}


	public List<Baseline> getData(Baseline obj)throws Exception {
		return dao.getData(obj);
	}


}
