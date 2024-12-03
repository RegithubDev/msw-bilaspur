package com.resustainability.reisp.controller;

import java.sql.*;
public class DatabaseTransfer {
	  private static final String SOURCE_DB_URL = "jdbc:sqlserver://10.100.3.14:1433;databaseName=EasyWdms";
	    private static final String SOURCE_USER = "sa";
	    private static final String SOURCE_PASS = "Ramky#2022";

	    private static final String DEST_DB_URL = "jdbc:sqlserver://10.125.145.217:1433;databaseName=INOPSETPDB";
	    private static final String DEST_USER = "appuser";
	    private static final String DEST_PASS = "Appuser@123$";
	    
	    
	    

	    public static void main(String[] args) {
	        Connection sourceConn = null;
	        Connection destConn = null;
	        PreparedStatement selectStmt = null;
	        PreparedStatement insertStmt = null;
	        PreparedStatement getEmpIdStmt = null;
	        ResultSet rs = null;

	        try {
	            // Establish connection to the source database
	            sourceConn = DriverManager.getConnection(SOURCE_DB_URL, SOURCE_USER, SOURCE_PASS);

	            // Get the latest id from the source table
	            String getLastInsertIdQuery = "SELECT MAX(id) as max_id FROM [EasyWdms].[dbo].[iclock_transaction]";
	            PreparedStatement getLastInsertIdStmt = sourceConn.prepareStatement(getLastInsertIdQuery);
	            ResultSet lastInsertIdRs = getLastInsertIdStmt.executeQuery();
	            int lastInsertId = 0;
	            if (lastInsertIdRs.next()) {
	                lastInsertId = lastInsertIdRs.getInt("max_id");
	            }
	            lastInsertIdRs.close();
	            getLastInsertIdStmt.close();

	            // Establish connection to the destination database
	            destConn = DriverManager.getConnection(DEST_DB_URL, DEST_USER, DEST_PASS);

	            // Prepare the select statement for the destination database
	            String selectQuery = "SELECT  [id], [emp_code], [punch_time], [punch_state], [verify_type], [work_code], " +
	                    "[terminal_sn], [terminal_alias], [area_alias], [longitude], [latitude], [gps_location], [mobile], " +
	                    "[source], [purpose], [crc], [is_attendance], [reserved], [upload_time], [sync_status], [sync_time], " +
	                    "[emp_id], [terminal_id], [company_id], [mask_flag], [temperature] " +
	                    "FROM [EasyWdms].[dbo].[iclock_transaction] " +
	                    "WHERE  cast(punch_time as date) = cast(getdate()-1 as date) ORDER BY punch_time DESC";
	            selectStmt = sourceConn.prepareStatement(selectQuery);
	           // selectStmt.setInt(1, lastInsertId);
	            rs = selectStmt.executeQuery();

	            // Prepare the insert statement for the source database
	            String insertQuery = "INSERT INTO [INOPSETPDB].[dbo].[iclock_transaction] ( [emp_code], [punch_time], " +
	                    "[punch_state], [verify_type], [work_code], [terminal_sn], [terminal_alias], [area_alias], [longitude], " +
	                    "[latitude], [gps_location], [mobile], [source], [purpose], [crc], [is_attendance], [reserved], " +
	                    "[upload_time], [sync_status], [sync_time], [emp_id], [terminal_id], [company_id], [mask_flag], " +
	                    "[temperature], [last_insert_narella_id], generated_by) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	            insertStmt = destConn.prepareStatement(insertQuery);

	            // Prepare the statement to get emp_id from the destination database
	            String getEmpIdQuery = "SELECT [id] FROM [INOPSETPDB].[dbo].[personnel_employee] WHERE emp_code = ?";
	            getEmpIdStmt = destConn.prepareStatement(getEmpIdQuery);

	            // Loop through the result set and insert data into the source table
	            while (rs.next()) {
	                int id = rs.getInt("id");
	                System.out.println(id);
	                insertStmt.setString(1, rs.getString("emp_code"));
	                insertStmt.setTimestamp(2, rs.getTimestamp("punch_time"));
	                insertStmt.setString(3, rs.getString("punch_state"));
	                insertStmt.setString(4, rs.getString("verify_type"));
	                insertStmt.setString(5, rs.getString("work_code"));
	                insertStmt.setString(6, rs.getString("terminal_sn"));
	                insertStmt.setString(7, rs.getString("terminal_alias"));
	                insertStmt.setString(8, "MSW-CTN-IPMSWL-DL-Narela Bawana");
	                insertStmt.setDouble(9, rs.getDouble("longitude"));
	                insertStmt.setDouble(10, rs.getDouble("latitude"));
	                insertStmt.setString(11, rs.getString("gps_location"));
	                insertStmt.setString(12, rs.getString("mobile"));
	                insertStmt.setString(13, rs.getString("source"));
	                insertStmt.setString(14, rs.getString("purpose"));
	                insertStmt.setString(15, rs.getString("crc"));
	                insertStmt.setBoolean(16, rs.getBoolean("is_attendance"));
	                insertStmt.setString(17, rs.getString("reserved"));
	                insertStmt.setTimestamp(18, rs.getTimestamp("upload_time"));
	                insertStmt.setString(19, rs.getString("sync_status"));
	                insertStmt.setTimestamp(20, rs.getTimestamp("sync_time"));
	                insertStmt.setString(21, rs.getString("emp_id"));
	                insertStmt.setString(22, rs.getString("terminal_id"));
	                insertStmt.setString(23, rs.getString("company_id"));
	                insertStmt.setString(24, rs.getString("mask_flag"));
	                insertStmt.setDouble(25, rs.getDouble("temperature"));
	                insertStmt.setInt(26, rs.getInt("id")); // Set the last_insert_narella_id
	                insertStmt.setString(27, "RE Scheduler");

	                // Retrieve emp_id from destination database based on emp_code
	                getEmpIdStmt.setString(1, rs.getString("emp_code"));
	                ResultSet empIdRs = getEmpIdStmt.executeQuery();
	                String empId = null;
	                if (empIdRs.next()) {
	                    empId = empIdRs.getString("id");
	                }
	                empIdRs.close();

	                // Set emp_id in the insert statement
	                insertStmt.setString(21, empId); // Assuming emp_id is a String type

	                // Execute the insert statement
	                int flag = insertStmt.executeUpdate();
	                System.out.println(flag);
	            }

	            System.out.println("Data transfer completed successfully.");

	        } catch (SQLException e) {
	            e.printStackTrace();
	        } finally {
	            // Close resources
	            try {
	                if (rs != null) rs.close();
	                if (selectStmt != null) selectStmt.close();
	                if (insertStmt != null) insertStmt.close();
	                if (getEmpIdStmt != null) getEmpIdStmt.close();
	                if (sourceConn != null) sourceConn.close();
	                if (destConn != null) destConn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	            }
	        }
	    }
	}
