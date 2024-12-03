package com.resustainability.reisp.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.util.StringUtils;

import com.resustainability.reisp.model.Baseline;
import com.resustainability.reisp.model.Project;
import com.resustainability.reisp.model.ProjectLocation;
import com.resustainability.reisp.model.ProjectLocation;

@Repository
public class ReportDao {

	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Autowired
	DataSource dataSource;

	@Autowired
	DataSourceTransactionManager transactionManager;

	public boolean addData(Baseline obj) throws Exception { 
		int count = 0;
		boolean flag = false;
		TransactionDefinition def = new DefaultTransactionDefinition();
		TransactionStatus status = transactionManager.getTransaction(def);
		try {
			NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			String insertQry = "INSERT INTO [baseline_info]  "
					+ "(total_fresh_water_past, electrical_consumption_past, total_consumption_past, quantity_msw_past, quantity_wte_past,  "
					+ "wte_past, auxillary_past, quantity_iwm_past, quantity_bmw_past ,created_by,created_date,"
					+ "hds_consumption_past,ldo_consumption_past,png_consumption_past,cng_cbg_consumption_past,coal_consumption_past,furnance_oil_past,biomass_past,total_energy_past)  "
					+ "VALUES  "
					+ "(:total_fresh_water_past, :electrical_consumption_past, :total_consumption_past, :quantity_msw_past, :quantity_wte_past,  "
					+ ":wte_past, :auxillary_past, :quantity_iwm_past, :quantity_bmw_past, :created_by,getdate(),"
					+ ":hds_consumption_past,:ldo_consumption_past,:png_consumption_past,:cng_cbg_consumption_past,:coal_consumption_past,:furnance_oil_past,:biomass_past,:total_energy_past); "
					+ "";
			BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
		    
		     namedParamJdbcTemplate = new NamedParameterJdbcTemplate(dataSource);
			 insertQry = "INSERT INTO [sitelevel_info]  "
			 		+ "(total_fresh_water_next, electrical_consumption_next, total_consumption_next, quantity_msw_next, quantity_wte_next,  "
			 		+ "quantity_iwm_next,thermal_energy_consumption_next,total_quantity_of_waste_handled, quantity_bmw_next,plantation_next, total_hours_next, violations_next,created_by,created_date)  "
			 		+ "VALUES  "
			 		+ "(:total_fresh_water_next, :electrical_consumption_next, :total_consumption_next, :quantity_msw_next, :quantity_wte_next,  "
			 		+ ":quantity_iwm_next,:thermal_energy_consumption_next,:total_quantity_of_waste_handled, :quantity_bmw_next, :plantation_next, :total_hours_next, :violations_next,:created_by,getdate()); "
			 		+ ""
					+ "";
			paramSource = new BeanPropertySqlParameterSource(obj);		 
		    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			if(count > 0) {
				flag = true;
			}
			transactionManager.commit(status);
		}catch (Exception e) {
			transactionManager.rollback(status);
			e.printStackTrace();
			throw new Exception(e);
		}
		return flag;
	}

	public List<Baseline> getData(Baseline obj) throws Exception {
	    List<Baseline> list1 = new ArrayList<Baseline>();
	    List<Baseline> list2 = new ArrayList<Baseline>();
	    
	    try {
	        // First query for "past" data
	        String qry1 = "SELECT \r\n"
	                + "    [total_fresh_water_past], \r\n"
	                + "    [electrical_consumption_past], \r\n"
	                + "    [total_consumption_past], \r\n"
	                + "    [quantity_msw_past], \r\n"
	                + "    [quantity_wte_past], \r\n"
	                + "    [wte_past], \r\n"
	                + "    [auxillary_past], \r\n"
	                + "    [quantity_iwm_past], \r\n"
	                + "    [quantity_bmw_past], \r\n"
	                + "    [hds_consumption_past], \r\n"
	                + "    [ldo_consumption_past], \r\n"
	                + "    [png_consumption_past], \r\n"
	                + "    [cng_cbg_consumption_past], \r\n"
	                + "    [coal_consumption_past], \r\n"
	                + "    [furnance_oil_past], \r\n"
	                + "    [biomass_past], \r\n"
	                + "    [total_energy_past],\r\n"   
	                + "    [created_date], \r\n"
	                + "    [modified_date], \r\n"
	                + "    [created_by], \r\n"
	                + "    [modified_by]\r\n"
	                
	                + "FROM \r\n"
	                + "    [ESCDB].[dbo].[baseline_info] \r\n"
	                + "WHERE \r\n"
	                + "    [created_by] = '" + obj.getCreated_by() + "'\r\n";
	        
	        // Execute first query
	        list1 = jdbcTemplate.query(qry1, new BeanPropertyRowMapper<Baseline>(Baseline.class));
	        
	        // Second query for "next" data
	        String qry2 = "SELECT [total_fresh_water_next]\r\n"
	        		+ "      ,[electrical_consumption_next]\r\n"
	        		+ "      ,[total_consumption_next]\r\n"
	        		+ "      ,[Quantity_msw_next]\r\n"
	        		+ "      ,[Quantity_wte_next]\r\n"
	        		+ "      ,[Quantity_iwm_next]\r\n"
	        		+ "      ,[Quantity_bmw_next]\r\n"
	        		+ "      ,[Plantation_next]\r\n"
	        		+ "      ,[total_hours_next]\r\n"
	        		+ "      ,[violations_next]\r\n"
	        		+ "      ,[created_date]\r\n"
	        		+ "      ,[modified_date]\r\n"
	        		+ "      ,[created_by]\r\n"
	        		+ "      ,[modified_by]\r\n"
	        		+ "      ,[thermal_energy_consumption_next]\r\n"
	        		+ "      ,[total_quantity_of_waste_handled]\r\n"
	        		+ "  FROM [ESCDB].[dbo].[sitelevel_info] \r\n"
	                + "WHERE \r\n"
	                + "    [created_by] = '" + obj.getCreated_by() + "';\r\n";
	        
	        // Execute second query
	        list2 = jdbcTemplate.query(qry2, new BeanPropertyRowMapper<Baseline>(Baseline.class));
	        
	        // Add list1 values to list2
	        list2.addAll(list1);
	        
	    } catch (Exception e) {
	        e.printStackTrace();
	        throw new Exception(e);
	    }
	    
	    // Return the merged list (list2 now contains both list1 and list2 data)
	    return list2;
	}



}
