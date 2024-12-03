 package com.resustainability.reisp.dao;

import com.resustainability.reisp.model.BrainBox;
import com.resustainability.reisp.model.SBU;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

@Repository
public class MSWAPIDao {
   @Autowired
   JdbcTemplate jdbcTemplate;
   @Autowired
   DataSource dataSource;
   @Autowired
   DataSourceTransactionManager transactionManager;

   public List<BrainBox> getMSWBilaspurList(SBU obj1, BrainBox obj, HttpServletResponse response) throws Exception {
      List<BrainBox> menuList = null;
      boolean flag = false;

      try {
         String user_id = "rewbbilsext";
         String password = "XvyzAb1298extdd";
         String Myip = "10.100.3.11";
         String time = " 12:00:00AM";
         String[] IP = new String[]{"10.11.10.102", "103.169.174.226", "34.93.149.251", "10.11.10.24", "10.11.10.25", "10.11.10.28", "10.11.10.20", "10.11.10.21", "10.11.10.22", "10.11.10.23", "10.11.10.42", Myip};
         if (IP.length > 0) {
            for(int i = 0; i < IP.length; ++i) {
               if (IP[i].contentEquals(Myip) && user_id.contentEquals(obj1.getUser_id()) && password.contentEquals(obj1.getPassword())) {
                  flag = true;
               }
            }

            System.out.println(flag);
         }

         if (flag) {
            String qry = "SELECT TRNO as TransactionNo, VEHICLENO as VehicleNo, MATERIAL as Zone, PARTY as Location,TRANSPORTER as Transporter,"
            		+ "   CASE         WHEN CHARINDEX(' ', DATEIN) > 0         THEN SUBSTRING(DATEIN, 1, CHARINDEX(' ', DATEIN) - 1)        ELSE DATEIN    END AS DATEIN,  "
            		+ "  SUBSTRING(TIMEIN, CHARINDEX(' ', TIMEIN) + 1, LEN(TIMEIN) - CHARINDEX(' ', TIMEIN)) AS TimeIN,\t "
            		+ "CASE         WHEN CHARINDEX(' ', DateOUT) > 0         THEN SUBSTRING(DateOUT, 1, CHARINDEX(' ', DateOUT) - 1)        ELSE DateOUT    END AS DateOUT,\t"
            		+ "  SUBSTRING(TIMEOUT, CHARINDEX(' ', TIMEOUT) + 1, LEN(TIMEOUT) - CHARINDEX(' ', TIMEOUT)) AS TimeOUT,"
            		+ " FIRSTWEIGHT, SITEID, SECONDWEIGHT, NETWT,TYPEOFWASTE AS Material FROM WEIGHT WITH (nolock) WHERE (SECONDWEIGHT IS NOT NULL) AND (NETWT IS NOT NULL) and(SITEID is not null) AND SITEID = 'BILASPUR_WB' ";
            int arrSize = 0;
            if (!StringUtils.isEmpty(obj1) && !StringUtils.isEmpty(obj1.getFrom_date())) {
               qry = qry + " AND CONVERT(varchar(10), DATEOUT, 105) = CONVERT(varchar(10), ?, 105) ";
               ++arrSize;
            }

            qry = qry + "  ORDER BY TRNO desc ";
            Object[] pValues = new Object[arrSize];
            if (!StringUtils.isEmpty(obj1) && !StringUtils.isEmpty(obj1.getFrom_date())) {
               int i = 0;
               String var10002 = obj1.getFrom_date();
               pValues[i] = var10002 + time;
            }

            menuList = jdbcTemplate.query( qry,pValues, new BeanPropertyRowMapper<BrainBox>(BrainBox.class));
         }

         return menuList;
      } catch (Exception var15) {
         var15.printStackTrace();
         throw new SQLException(var15.getMessage());
      }
   }

   public Object getMSWBilaspurList(List<BrainBox> companiesList, SBU obj1) throws SQLException {
      int count = 0;

      try {
         NamedParameterJdbcTemplate namedParamJdbcTemplate = new NamedParameterJdbcTemplate(this.dataSource);
         if (companiesList.size() > 0) {
    		for(BrainBox obj : companiesList) {
    			  obj.setFIRSTWEIGHT(obj1.getPTC_status());
                  obj.setSECONDWEIGHT(obj1.getMSG());				
                  String insertQry = "INSERT INTO [msw_bilaspur_logs] (weight_TRNO,VEHICLENO,PTC_status,PTCDT,MSG) values (:TransactionNo,:VehicleNo,:FIRSTWEIGHT,GETDATE(),:SECONDWEIGHT)  ";

				BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);		 
			    count = namedParamJdbcTemplate.update(insertQry, paramSource);
			}
         } else {
        	 BrainBox obj = new BrainBox();
            obj.setFIRSTWEIGHT((String)null);
            obj.setSECONDWEIGHT(obj1.getMSG());
            String insertQry = "INSERT INTO [msw_bilaspur_logs] (weight_TRNO,VEHICLENO,PTC_status,PTCDT,MSG) values (:TransactionNo,:VehicleNo,:FIRSTWEIGHT,GETDATE(),:SECONDWEIGHT)   ";
            BeanPropertySqlParameterSource paramSource = new BeanPropertySqlParameterSource(obj);
            count = namedParamJdbcTemplate.update(insertQry, paramSource);
         }
      } catch (Exception var9) {
         var9.printStackTrace();
         throw new SQLException(var9.getMessage());
      }

      return count;
   }

   public int getLogInfo(SBU obj1, BrainBox obj, List<BrainBox> companiesList) throws SQLException {
      int count = 0;

      try {
         BrainBox obj11;
         String checkingLogQry;
         if (!StringUtils.isEmpty(companiesList) && companiesList.size() > 0) {
            for(Iterator var6 = companiesList.iterator(); var6.hasNext(); count = (Integer)this.jdbcTemplate.queryForObject(checkingLogQry, new Object[]{obj11.getTransactionNo(), obj11.getVehicleNo()}, Integer.class)) {
               obj11 = (BrainBox)var6.next();
               checkingLogQry = "SELECT count(*) from [msw_bilaspur_logs] where weight_TRNO= ? and VEHICLENO= ?";
            }
         }

         return count;
      } catch (Exception var8) {
         var8.printStackTrace();
         throw new SQLException(var8.getMessage());
      }
   }
}