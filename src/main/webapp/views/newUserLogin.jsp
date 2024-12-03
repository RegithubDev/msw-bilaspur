<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding = "UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<!--
Template Name: Vuexy - Vuejs, HTML & Laravel Admin Dashboard Template
Author: PixInvent
Website: http://www.pixinvent.com/
Contact: hello@pixinvent.com
Follow: www.twitter.com/pixinvents
Like: www.facebook.com/pixinvents
Purchase: https://1.envato.market/vuexy_admin
Renew Support: https://1.envato.market/vuexy_admin
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.

-->
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-register-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:17 GMT -->
<head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Safety admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 IRM with unlimited possibilities.">
    <meta name="keywords" content="admin template,IRM, Safety admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
  <title>IRM - Submit</title>
       <link rel="icon" type="image/png" sizes="96x96" href="/esc/resources/images/protect-favicon.png" >
	<script src="/esc/resources/js/jQuery-v.3.5.min.js"  ></script>
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" href="/esc/resources/vendor/css/pages/page-auth.css">
      <link rel="apple-touch-icon" href="/esc/resources/images/ico/apple-icon-120.html">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">
    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/tables/datatable/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/tables/datatable/responsive.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/tables/datatable/buttons.bootstrap5.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/tables/datatable/rowGroup.bootstrap5.min.css">
     <link rel="stylesheet" type="text/css" href="/esc/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/pickers/flatpickr/flatpickr.min.css">
    <!-- END: Vendor CSS-->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/themes/semi-dark-layout.min.css">
   <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/forms/select/select2.min.css">
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <!-- END: Page CSS-->
      <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/file-uploaders/dropzone.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/plugins/forms/form-file-uploader.min.css">
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/style.css">
    <!-- END: Custom CSS-->
    <!-- END: Custom CSS-->
<style>
.select2-container--default .select2-selection--single .select2-selection__arrow b {
    border-color: #888 transparent transparent transparent;
    border-style: hidden !important; 
    border-width: 5px 4px 0 4px;
    height: 0;
    left: 50%;
    margin-left: -4px;
    margin-top: -2px;
    position: absolute;
    top: 50%;
    width: 0;
}
.required{
	color:red;
}
.my-error-class {
 	 color:red;
}
.my-valid-class {
 	 color:green;
}

.bg {
    position: relative;
    z-index: 1; /* Ensures the content stays on top */
}

.bg::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-image: url('https://t3.ftcdn.net/jpg/05/42/79/16/360_F_542791638_t9Qf1E0CyMESFB5a7JagAaTzQJF0JGzM.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    filter: blur(5px); /* Blurs the image */
    z-index: -1; /* Ensures the blurred image stays behind the content */
    
}

.form-label{
	color :white!important; 
}
</style>
  </head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu blank-page navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="blank-page">
    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><div class="auth-wrapper auth-basic px-2" style="background-image: url('https://news.sap.com/belgie/files/2022/01/13/289135_GettyImages-1214827275-1.jpg');">
  <div class="auth-inner my-2">
    <!-- Register basic -->
    <div class="card mb-0">
      <div class="card-body bg" >
        
          <h2 class="brand-text text-primary ms-1 text-center"> User Creation </h2>
        

       <!--  <p class="card-text mb-2">Make your app management easy and fun!</p> -->
<div class="col-lg-12 col-sm-12 col-12" style="box-sizing:border-box; display:table;">
        <form id="addUserForm" class="row gy-1 pt-75 mt-2" action="<%=request.getContextPath() %>/add-new-user" method="post" class="form-horizontal" role="form" >
        <input name="newUser" type="hidden" value="new"/>
          <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">User id</label><span class="required"> *</span>
            <input
              type="text"
              id="user_id_add"
              name="user_id"
              class="form-control"
              placeholder="EMP ID"
              value=""
            />
             <span id="user_id_addError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserFirstName">User Name</label><span class="required"> *</span>
            <input
              type="text"
              id="user_name_add"
              name="user_name"
              class="form-control"
              placeholder="enter name"
              value="${name }"
              data-msg="Please enter your first name"
            />
             <span id="user_name_addError" class="error-msg" ></span>
          </div>
          
          <div class="col-12 col-md-6">
            <div class="d-flex justify-content-between">
              <label class="form-label" for="reset-password-new">New Password</label>
            </div>
            <div class="input-group input-group-merge form-password-toggle">
              <input type="password" class="form-control form-control-merge validate-equalTo-blur" id="password" name="password" placeholder="············" aria-describedby="reset-password-new reset-password-new-error" tabindex="1" autofocus="" aria-invalid="false">
              <span class="input-group-text cursor-pointer"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg></span>
            </div><span id="reset-password-new-error" class="error" style="display: none;"></span>
          </div>
             <div class="col-12 col-md-6">
                <div class="d-flex justify-content-between">
              <label class="form-label" for="reset-password-confirm">Confirm Password</label>
            </div>
            <div class="input-group input-group-merge form-password-toggle">
              <input type="password" class="form-control form-control-merge" id="password_confirm" name="password_confirm" placeholder="············" aria-describedby="reset-password-confirm" tabindex="2">
              <span class="input-group-text cursor-pointer"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg></span>
            </div><span id="password_confirm-error" class="error" style="display: none;"></span>
          </div>
    <div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserLastName">Mobile number</label><span class="required"> </span>
            <input
              type="number"
              id="contact_number_add"
              name="contact_number"
              class="form-control"
              placeholder="eg : +91 ##########"
              value=""
            />
             <span id="contact_number_addError" class="error-msg" ></span>
          </div>
		<div class="col-12 col-md-6">
            <label class="form-label" for="modalEditUserFirstName">E mail</label><span class="required"> *</span>
            <input
              type="email"
              id="email_add"
              name="email_id"
              class="form-control"
              placeholder="eg : email@gmail.com"
              value="${email }"
              data-msg="Please enter your first name"
            />
             <span id="email_addError" class="error-msg" ></span>
          </div>
         <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">User Reporting To</label><span class="required"> </span>
            <select 
              id="select2-reporting_to_add-container"
              name="reporting_to"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Reporting To</option>
             	 <c:forEach var="obj" items="${userList}">
					<option value="${obj.user_id }" >[${obj.user_id }] - ${obj.user_name }</option>
				</c:forEach>
            </select>
             <span id="select2-reporting_to_add-containerError" class="error-msg" ></span>
          </div>
          <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">SBU</label><span class="required"> *</span>
            <select 
              id="select2-base_sbu-container"
              name="base_sbu"
              class="select2 form-select formSelect"
              aria-label="Default select example" onchange="setProjectDD();setDeptDD();"
            >
              <option value="">Select SBU</option>
             	<c:forEach var="obj" items="${sbuList}">
					<option value="${obj.sbu_code }"  >[${obj.sbu_code }] - ${obj.sbu_name }</option>
				</c:forEach>
            </select>
             <span id="select2-base_sbu-containerError" class="error-msg" ></span>
          </div>
          
           <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Project</label><span class="required"> *</span>
            <select 
              id="select2-base_project-container"
              name="base_project"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Project</option>
             <%-- 	<c:forEach var="obj" items="${projectsList}">
					<option value="${obj.project_code }"   >[${obj.project_code }] - ${obj.project_name }</option>
				</c:forEach> --%>
            </select>
             <span id="select2-base_project-containerError" class="error-msg" ></span>
          </div>
          
          
          
                    <div class="col-12 col-md-6">
            <label class="form-label" for="select2-basic">Department</label><span class="required"> *</span>
            <select 
              id="select2-base_department-container"
              name="base_department"
              class="select2 form-select formSelect"
              aria-label="Default select example"
            >
              <option value="">Select Department</option>
             	<%-- <c:forEach var="obj" items="${deptList}">
					<option value="${obj.department_code }"  >[${obj.department_code }] - ${obj.department_name }</option>
				</c:forEach> --%>
            </select>
             <span id="select2-base_department-containerError" class="error-msg" ></span>
          </div>
          
          
          <div class="col-12 text-center mt-2 pt-50">
            <a class="btn btn-primary me-1" onclick="addUser();">Sign Up</a>
          </div>

        </form>
</div>
        <p class="text-center mt-2">
          <span>Already User?</span>
          <a href="<%=request.getContextPath() %>/login">
            <span>Sign in instead</span>
          </a>
        </p>
      </div>
    </div>
    <!-- /Register basic -->
  </div>
</div>

        </div>
      </div>
    </div>
    <!-- END: Content-->


        <script src="/esc/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/esc/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/esc/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/esc/resources/vendors/js/charts/apexcharts.min.js"></script>
    <script src="/esc/resources/vendors/js/extensions/toastr.min.js"></script>
    <script src="/esc/resources/vendors/js/extensions/moment.min.js"></script>
    <script src="/esc/resources/vendors/js/tables/datatable/jquery.dataTables.min.js"></script>
    <script src="/esc/resources/vendors/js/tables/datatable/datatables.buttons.min.js"></script>
    <script src="/esc/resources/vendors/js/tables/datatable/dataTables.bootstrap5.min.js"></script>
    <script src="/esc/resources/vendors/js/tables/datatable/dataTables.responsive.min.js"></script>
    <script src="/esc/resources/vendors/js/tables/datatable/responsive.bootstrap5.js"></script>
    <!-- END: Page Vendor JS-->
 <script src="/esc/resources/js/materialize-v.1.0.min.js "  ></script>
    <script src="/esc/resources/js/jquery-validation-1.19.1.min.js"  ></script>
    <script src="/esc/resources/js/jquery.dataTables-v.1.10.min.js"  ></script>
     <script src="/esc/resources/js/datetime-moment-v1.10.12.js"  ></script>
         <script src="/esc/resources/js/dataTables.material.min.js"  ></script>
      <script src="/esc/resources/js/moment-v2.8.4.min.js"  ></script>
    <!-- BEGIN: Theme JS-->
    <script src="/esc/resources/js/core/app-menu.min.js"></script>
    <script src="/esc/resources/js/core/app.min.js"></script>
    <script src="/esc/resources/js/scripts/customizer.min.js"></script>
     <script src="/esc/resources/js/scripts/forms/form-select2.min.js"></script>
    <!-- END: Theme JS-->
   <script src="/esc/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- BEGIN: Page JS-->
     <script src="/esc/resources/js/scripts/pages/dashboard-analytics.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/app-invoice-list.min.js"></script>
    <script src="/esc/resources/vendors/js/file-uploaders/dropzone.min.js"></script>
    <script src="/esc/resources/js/scripts/forms/form-file-uploader.min.js"></script>

    <!-- BEGIN: Page JS-->
    <script src="/reisp/resources/js/scripts/pages/auth-register.min.js"></script>
    <!-- END: Page JS-->

    <script>
      $(window).on('load',  function(){
      
      })
        function addUser(){
	    	var flag = validator.form();
	    	if(flag){ // validation perform
	        	document.getElementById("addUserForm").submit();	
	    	}
	    }
        var validator =	$('#addUserForm').validate({
	    	 errorClass: "my-error-class",
	    	 validClass: "my-valid-class",
	    	 ignore: ":hidden:not(.select2 form-select)",
	    		    rules: {
	    		 		  "user_name": {
	    			 		required: true
	    			 	  },"user_id": {										
	    			 		required: true
	    			 	  },"contact_number": {
	    			 		  required: false,
	    			 		  minlength:10,
	    			 		  maxlength:14,
	    			 		  number: true
	    			 	  },"email_id": {
	    		 		    required: true,
	    	                   email: true
	    			 	  },"base_project": {										
		    			 		required: true
		  			 	  },"base_sbu": {										
		    			 		required: true
		  			 	  },"base_department": {										
		    			 		required: true
		  			 	  },"reporting_to": {
	    		 			required: false
	    		 	  	  },"password": {
	    		 	  		    required: true,
	    		 	            minlength: 5,
	    		 	      },"password_confirm": {
	    		 	    	 	required: true,
	    		 	            minlength: 5,
	    		 	            equalTo: "#password"
	    		 	        }
		  		 	},
		  		    messages: {
		  		 		 "user_name": {
		  				 	required: 'Required',
		  			 	  },"user_id": {
		  			 		required: 'Required'
		  			 	  },"contact_number": {
		  		 			required: 'Required'
		  		 	  	  },"email_id": {
		  		 			required: 'Required'
		  		 	  	  },"base_project": {
		  		 			required: 'Required'
		  		 	  	  },"base_sbu": {
		  		 			required: 'Required'
		  		 	  	  },"base_department": {
		  		 			required: 'Required'
		  		 	  	  },"reporting_to": {
	    		 			required: 'Required'
	    		 	  	  },"password": { 
	    		            required:"the password is required"

	    	              },"password_confirm": { 
	    		            required:"password should match!"

	    	               }
			       		},
	       		errorPlacement:function(error, element){
	       		 	if (element.attr("id") == "user_name_add" ){
	    				 document.getElementById("user_name_addError").innerHTML="";
	    		 		 error.appendTo('#user_name_addError');
	    			}else if(element.attr("id") == "user_id_add" ){
	    			   document.getElementById("user_id_addError").innerHTML="";
	    		 	   error.appendTo('#user_id_addError');
	    			}else if(element.attr("id") == "contact_number_add" ){
	    				document.getElementById("contact_number_addError").innerHTML="";
	    			 	error.appendTo('#contact_number_addError');
	    			}else if(element.attr("id") == "email_add" ){
	    				document.getElementById("email_addError").innerHTML="";
	    			 	error.appendTo('#email_addError');
	    			}else if(element.attr("id") == "select2-base_sbu-container" ){
	    				document.getElementById("select2-base_sbu-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_sbu-containerError');
	    			}else if(element.attr("id") == "select2-base_project-container" ){
	    				document.getElementById("select2-base_project-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_project-containerError');
	    			}else if(element.attr("id") == "select2-base_department-container" ){
	    				document.getElementById("select2-base_department-containerError").innerHTML="";
	    			 	error.appendTo('#select2-base_department-containerError');
	    			}else if(element.attr("id") == "select2-reporting_to_add-container" ){
	    				document.getElementById("select2-reporting_to_add-containerError").innerHTML="";
	    			 	error.appendTo('#select2-reporting_to_add-containerError');
	    			}else if(element.attr("id") == "password" ){
	    				document.getElementById("password-error").innerHTML="";
	    			 	error.appendTo('#password-error');
	    			}else if(element.attr("id") == "password_confirm" ){
	    				document.getElementById("password_confirm-error").innerHTML="";
	    			 	error.appendTo('#password_confirm-error');
	    			}else{
	    					error.insertAfter(element);
	    	        } 
	       		},invalidHandler: function (form, validator) {
	                var errors = validator.numberOfInvalids();
	                if (errors) {
	                    var position = validator.errorList[0].element;
	                    jQuery('html, body').animate({
	                        scrollTop:jQuery(validator.errorList[0].element).offset().top - 100
	                    }, 1000);
	                }
	            },submitHandler:function(form){
	    	    	//form.submit();
	    	    }
	    	}); 
	    	
	    /* 	$.validator.addMethod("strongePassword", function(value) {
	    	    return /^[A-Za-z0-9\d=!\-@._*]*$/.test(value) && /[a-z]/.test(value) && /\d/.test(value) && /[A-Z]/.test(value);
	    	},"The password must contain at least 1 number, at least 1 lower case letter, and at least 1 upper case letter");  */

	    	$('.formSelect').change(function(){
	    	    if ($(this).val() != ""){
	    	        $(this).valid();
	    	    }
	    	});
	    	
	    	$('input').change(function(){
	    	    if ($(this).val() != ""){
	    	        $(this).valid();
	    	    }
	    	});
	    	
	    	function setProjectDD(){
	    		var base_sbu = $("#select2-base_sbu-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_project-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getProjectListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-base_project-container").append('<option value="' + val.project_code + '">' + $.trim(val.project_code)+" - "+ $.trim(val.project_name) +'</option>');
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }
	    	
	    	function setDeptDD(){
	    		var base_sbu = $("#select2-base_sbu-container").val();
		        if ($.trim(base_sbu) != "") {
		        	$("#select2-base_department-container option:not(:first)").remove();
		        	var myParams = { base_sbu: base_sbu };
		            $.ajax({
		                url: "<%=request.getContextPath()%>/ajax/getDeptListForUser",
		                data: myParams, cache: false,async: false,
		                success: function (data) {
		                    if (data.length > 0) {
		                        $.each(data, function (i, val) {
		                             $("#select2-base_department-container").append('<option value="' + val.department_code + '">' + $.trim(val.department_code)+" - "+ $.trim(val.department_name) +'</option>');
		                        });
		                    }
		                },error: function (jqXHR, exception) {
		    	   			      $(".page-loader").hide();
		       	          	  getErrorMessage(jqXHR, exception);
		       	     	  }
		            });
		        }
		    }	
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-register-basic.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:17 GMT -->
</html>