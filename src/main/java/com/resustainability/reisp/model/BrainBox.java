 package com.resustainability.reisp.model;

public class BrainBox {
   private String TransactionNo;
   private String VehicleNo;
   private String DateIn;
   private String TimeIN;
   private String DateOUT;
   private String TimeOUT;
   private String FIRSTWEIGHT;
   private String SECONDWEIGHT;
   private String NETWT;

   public BrainBox(String transactionNo, String vehicleNo, String dateIn, String timeIN, String dateOUT, String timeOUT, String fIRSTWEIGHT, String sECONDWEIGHT, String nETWT) {
      this.TransactionNo = transactionNo;
      this.VehicleNo = vehicleNo;
      this.DateIn = dateIn;
      this.TimeIN = timeIN;
      this.DateOUT = dateOUT;
      this.TimeOUT = timeOUT;
      this.FIRSTWEIGHT = fIRSTWEIGHT;
      this.SECONDWEIGHT = sECONDWEIGHT;
      this.NETWT = nETWT;
   }

   public String error(String msg) {
      msg = "welcome to covariant return type";
      this.DateIn = msg;
      return this.DateIn;
   }

   public BrainBox() {
   }

   public String getTransactionNo() {
      return this.TransactionNo;
   }

   public void setTransactionNo(String transactionNo) {
      this.TransactionNo = transactionNo;
   }

   public String getVehicleNo() {
      return this.VehicleNo;
   }

   public void setVehicleNo(String vehicleNo) {
      this.VehicleNo = vehicleNo;
   }

   public String getDateIn() {
      return this.DateIn;
   }

   public void setDateIn(String dateIn) {
      this.DateIn = dateIn;
   }

   public String getTimeIN() {
      return this.TimeIN;
   }

   public void setTimeIN(String timeIN) {
      this.TimeIN = timeIN;
   }

   public String getDateOUT() {
      return this.DateOUT;
   }

   public void setDateOUT(String dateOUT) {
      this.DateOUT = dateOUT;
   }

   public String getTimeOUT() {
      return this.TimeOUT;
   }

   public void setTimeOUT(String timeOUT) {
      this.TimeOUT = timeOUT;
   }

   public String getFIRSTWEIGHT() {
      return this.FIRSTWEIGHT;
   }

   public void setFIRSTWEIGHT(String fIRSTWEIGHT) {
      this.FIRSTWEIGHT = fIRSTWEIGHT;
   }

   public String getSECONDWEIGHT() {
      return this.SECONDWEIGHT;
   }

   public void setSECONDWEIGHT(String sECONDWEIGHT) {
      this.SECONDWEIGHT = sECONDWEIGHT;
   }

   public String getNETWT() {
      return this.NETWT;
   }

   public void setNETWT(String nETWT) {
      this.NETWT = nETWT;
   }

   public String toString() {
      return "BrainBox [TransactionNo=" + this.TransactionNo + ", VehicleNo=" + this.VehicleNo + ", DateIn=" + this.DateIn + ", TimeIN=" + this.TimeIN + ", DateOUT=" + this.DateOUT + ", TimeOUT=" + this.TimeOUT + ", FIRSTWEIGHT=" + this.FIRSTWEIGHT + ", SECONDWEIGHT=" + this.SECONDWEIGHT + ", NETWT=" + this.NETWT + "]";
   }

   public BrainBox get() {
      return this;
   }
}