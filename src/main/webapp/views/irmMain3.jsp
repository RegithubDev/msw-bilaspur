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
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/modal-examples.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:22 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,user-scalable=0,minimal-ui">
    <meta name="description" content="Vuexy admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, Vuexy admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
       <title>Report</title>
        <link rel="icon" type="image/png" sizes="96x96" href="/esc/resources/images/protect-favicon.png" >
    <link rel="shortcut icon" type="image/x-icon" href="https://pixinvent.com/demo/vuexy-html-bootstrap-admin-template/resources/images/ico/favicon.ico">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/vendors.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/forms/wizard/bs-stepper.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/vendors/css/forms/select/select2.min.css">
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/bootstrap-extended.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/colors.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/components.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/themes/dark-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/themes/bordered-layout.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/themes/semi-dark-layout.min.css">

    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/core/menu/menu-types/horizontal-menu.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/plugins/forms/form-wizard.min.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/plugins/forms/form-validation.css">
    <link rel="stylesheet" type="text/css" href="/esc/resources/css/pages/modal-create-app.min.css">
    <!-- END: Page CSS-->

    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="/esc/assets/css/style.css">
    <!-- END: Custom CSS-->
  <style>
  
  .card {
    border: 1px solid #dee2e6;
  }
  .card-body {
    padding: 1.5rem;
  }
  .btn-primary {
    background-color: #007bff;
    border-color: #007bff;
    transition: background-color 0.3s, border-color 0.3s;
  }
  .btn-primary:hover {
    background-color: #0056b3;
    border-color: #0056b3;
  }
        .abc.body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;       
          }
        
        
        .abc-container {
    border: 2px solid #DAE1E7;
    border-radious:10px;
    background-color: #DAE1E7;
    padding: 20px;
    display: flex;
    gap: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
     }

        .abc-card {
                background-color: white;
            border: 2px solid #64c7bc;
            padding: 35px; /* Increased padding */
            width: 439px; /* Increased width */
            border-radius: 10px;
            transition: border-color 0.3s, box-shadow 0.3s;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
        }
        .abc-card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .abc-card-text {
           margin-bottom: 4px;
    font-size: 12px;
    color: #333333;
        }
        .abc-badge-input-container {
            display: flex;
            align-items: center;
            width: 100%;
        }
        .abc-badge {
           background-color: #4a90e2;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 14px;
            margin-right: 10px;
        }
        .abc-input-box input {
             width: calc(100% - 70px);
            padding: 5px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            transition: border-color 0.3s;
        }
        .abc-input-box input:focus {
             border-color: #4a90e2;
            outline: none;
        }
          .abc-card-section {
            margin-bottom: 15px;
        }
    </style>
</head>
  <!-- END: Head-->

  <!-- BEGIN: Body-->
  <body class="horizontal-layout horizontal-menu  navbar-floating footer-static  " data-open="hover" data-menu="horizontal-menu" data-col="">

 <!-- BEGIN: Header-->
	<jsp:include page="../views/layout/header.jsp"></jsp:include> 


    <!-- END: Header-->>

<!-- BEGIN: Main Menu-->
      <div class="horizontal-menu-wrapper">
      <div class="header-navbar navbar-expand-sm navbar navbar-horizontal floating-nav navbar-light navbar-shadow menu-border container-xxl" role="navigation" data-menu="menu-wrapper" data-menu-type="floating-nav">
        <div class="navbar-header">
          <ul class="nav navbar-nav flex-row">
            <li class="nav-item me-auto"><a class="navbar-brand" href="#"><span class="brand-logo">
                  <svg viewbox="0 0 139 95" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" height="24">
                    <defs>
                      <lineargradient id="linearGradient-1" x1="100%" y1="10.5120544%" x2="50%" y2="89.4879456%">
                        <stop stop-color="#000000" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                      <lineargradient id="linearGradient-2" x1="64.0437835%" y1="46.3276743%" x2="37.373316%" y2="100%">
                        <stop stop-color="#EEEEEE" stop-opacity="0" offset="0%"></stop>
                        <stop stop-color="#FFFFFF" offset="100%"></stop>
                      </lineargradient>
                    </defs>
                    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g id="Artboard" transform="translate(-400.000000, -178.000000)">
                       			         <img src="<%=request.getContextPath() %>/resources/images/logo/protect-main.jpeg" width="50" height="40" class="card-img">

                      </g>
                    </g>
                  </svg></span>
                <h2 class="brand-text mb-0"></h2></a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pe-0" data-bs-toggle="collapse"><i class="d-block d-xl-none text-primary toggle-icon font-medium-4" data-feather="x"></i></a></li>
          </ul>
        </div>
        <div class="shadow-bottom"></div>
        <!-- Horizontal menu content-->
 			<jsp:include page="../views/layout/menu.jsp"></jsp:include> 
      </div>
    </div>
    <!-- END: Main Menu-->

    <!-- BEGIN: Content-->
    <div class="app-content content ">
      <div class="content-overlay"></div>
      <div class="header-navbar-shadow"></div>
      <div class="content-wrapper container-xxl p-0">
        <div class="content-header row">
          <div class="content-header-left col-md-9 col-12 mb-2">
            <div class="row breadcrumbs-top">
              <div class="col-12">
                <h2 class=" badge badge-glow bg-dark">Report1</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body">
          <section id="modal-examples">
  <div class="row">
    <!-- create app card-->

<c:forEach var="obj" items="${pList}" varStatus="index">
    <c:if test="${obj.project_code eq sessionScope.BASE_PROJECT_CODE}">
        <div class="col-md-4">
            <div class="card border rounded">
                <div class="card-body text-center bg-transparent border-secondary">
                    <h2 class="card-title mb-2">${obj.project_name}</h2>
                    <button type="button" class="btn btn-primary waves-effect waves-float waves-light" data-bs-toggle="modal"
                        data-bs-target="#sbu">
                        Show
                    </button>
                </div>
            </div>
        </div>
    </c:if>
</c:forEach>
<c:forEach var="obj" items="${pList}" varStatus="index">
    <c:if test="${obj.project_code ne sessionScope.BASE_PROJECT_CODE}">
        <div class="col-md-4">
            <div class="card border rounded">
                <div class="card-body text-center bg-transparent border-secondary" style="background: #ccc!important;">
                    <h2 class="card-title mb-2" style="color: #a28e8e!important;">${obj.project_name}</h2>
                </div>
            </div>
        </div>
    </c:if>
</c:forEach>




<!-- badge badge-light-secondary
 -->

    <!-- / create app card-->
  </div>
</section>
<!-- / share project modal -->
 <!-- create app modal -->

 
 <div class="modal fade" id="sbu" tabindex="-1" aria-labelledby="msw_report" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-xl">
    <div class="modal-content">
      <div class="modal-header bg-transparent">
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body pb-3 px-sm-3">
        <h1 class="text-center mb-1" id="msw_report">${sessionScope.project_name } Report</h1>

        <div class="bs-stepper vertical wizard-modern create-app-wizard">
          <div class="bs-stepper-header" role="tablist">
            <div class="step" data-target="#fresh_water_edit" role="tab" id="fresh_water">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Fresh Water</span>
                </span>
              </button>
            </div>
            <div class="step" data-target="#electrical_energy_edit" role="tab" id="electrical_energy">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Electrical Energy<br> (within the facility)</span>
                </span>
              </button>
            </div>
            <div class="step" data-target="#thermal_energy_edit" role="tab" id="thermal_energyr">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Thermal Energy<br> (within the facility)</span>
                </span>
              </button>
            </div>
            <div class="step" data-target="#sbu_goal_edit" role="tab" id="sbu_goal">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Sector Specific Goals</span>
                </span>
              </button>
            </div>
            
             <div class="step" data-target="#greenbelt" role="tab" id="greenbelt_development">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Green Development</span>
                </span>
              </button>
            </div>
            
            <div class="step" data-target="#training" role="tab" id="training_development">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Training Development</span>
                </span>
              </button>
            </div>
            
            
             <div class="step" data-target="#sscompliance" role="tab" id="compliance">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="credit-card" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Compliance</span>
                </span>
              </button>
            </div>
            
            <div class="step" data-target="#create-app-submit" role="tab" id="create-appmit-trigger">
              <button type="button" class="step-trigger py-75">
                <span class="bs-stepper-box">
                  <i data-feather="check" class="font-medium-3"></i>
                </span>
                <span class="bs-stepper-label">
                  <span class="bs-stepper-title">Submit</span>
                </span>
              </button>
            </div>
          </div>

        <div class="bs-stepper-content shadow-none " style="width: 80%;">           
           <div id="fresh_water_edit" class="content" role="tabpanel" aria-labelledby="fresh_water">
              <h5 class="card-title">Fresh Water</h5>
            <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Baseline Information (FY 2023-24)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Total Net Fresh Water Consumption, in KLt</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">KL
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
            <div class="abc-card-section">
             <div class="abc-card-text">Total Net Fresh Water Consumption, in KLt</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">KL/Ton
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
        </div>
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
            <div class="abc-card-text">Reduction in Specific Fresh Water Consumption in FY 2024-25 compared to the Baseline FY 2023-24</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">%</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
        </div>
    </div>
              <div class="d-flex justify-content-between mt-2">
                <button class="btn btn-outline-secondary btn-prev" disabled>
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
            <div
              id="electrical_energy_edit"
              class="content"
              role="tabpanel"
              aria-labelledby="electrical_energy">
                              <h5 class="card-title"> Electrical Energy (within the facility)
                              </h5>
                 <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Baseline Information (FY 2023-24)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Electricity Consumption from Grid</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">kWh
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
            <div class="abc-card-section">
             <div class="abc-card-text">Specific Electricity Consumption</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">kWh
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
             <div class="abc-card-section">
             <div class="abc-card-text">Electricity Consumption from Renewable (Solar) Source</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">kWh/ton
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
        </div>
      
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Renewable Energy in Total Energy Consumption</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">%</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
            <div class="abc-card-section">
             <div class="abc-card-text">Reduction in Specific Electricity Consumption in FY 2024-25 compared to the Baseline FY 2023-24
             </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">%</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
         
        </div>
      
    </div>
              
       <div class="d-flex justify-content-between mt-2">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
            <div id="thermal_energy_edit" class="content" role="tabpanel" aria-labelledby="thermal_energy">
            
             <h5 class="card-title"> Thermal Energy (within the facility)  </h5>
              <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Baseline Information (FY 2023-24)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">HSD consumption
            </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Liters
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
            <div class="abc-card-section">
             <div class="abc-card-text">LDO consumption
             </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Liters</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
             <div class="abc-card-section">
             <div class="abc-card-text">PNG consumption
             </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Kg</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
             <div class="abc-card-section">
             <div class="abc-card-text">CNG/CBG consumption
             </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Kg</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
             <div class="abc-card-section">
             <div class="abc-card-text">Coal consumption
             </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Kg</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
             <div class="abc-card-section">
             <div class="abc-card-text">Furnace Oil consumption</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Liters</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
             <div class="abc-card-section">
             <div class="abc-card-text">Biomass
             </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Kg</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            
            
             <div class="abc-card-section">
             <div class="abc-card-text">Total Energy, in GJ</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">GJ</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            
            </div>
            
            
             <div class="abc-card-section">
            <div class="abc-card-text">Specific Thermal Energy Consumption, in GJ/ton (FY 2023-24)
            
            </div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">GJ/Ton</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
        </div>
      
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Reduction in Specific Thermal Energy Consumption in FY 2024-25 compared to the Baseline FY 2023-24</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">%</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            </div>
    </div>
             
              <div class="d-flex justify-content-between mt-2">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
            
            
            <div id="sbu_goal_edit" class="content" role="tabpanel" aria-labelledby="sbu_goal">
                <h5 class="card-title"> Sector Specific Goals</h5>
                    <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Baseline Information (FY 2023-24)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Quantity of RDF sent to Cement Industries
            </div>
            <div class="abc-badge-input-container">
                <div class="">
                </div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            </div>
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Quantity of RDF to Cement Industries (FY 2025)</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Tons</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            </div>
             </div>


  <div class="d-flex justify-content-between mt-5 pt-1">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
               <div id="greenbelt" class="content" role="tabpanel" aria-labelledby="greenbelt_development">
                  <h5 class="card-title"> Greenbelt Development </h5>
                      <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Plantation of New Trees (either w/in or outside the facility)</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Number</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            </div>
              </div>


         <div class="d-flex justify-content-between mt-5 pt-1">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
            
            
            
                
             <div id="training" class="content" role="tabpanel" aria-labelledby="training_development">
   <h5 class="card-title"> Training and Development </h5>
     <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Total Training Hours (excluding mandatory training) for All Employees at the Facility</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">No. of hours</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            </div>
            </div>


  <div class="d-flex justify-content-between mt-5 pt-1">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>            
             <div id="sscompliance" class="content" role="tabpanel" aria-labelledby="compliance">
          <h5 class="card-title"> Compliance</h5>
              <div class="abc-container">
        <div class="abc-card">
        <span class="badge bg-dark">Site Level Sustainability Goals (FY 2024-25)</span><br>
        <div class="abc-card-section">
            <div class="abc-card-text">Number of Violations and Non-Compliances</div>
            <div class="abc-badge-input-container">
                <div class="abc-badge">Number</div>
                <div class="abc-input-box">
                    <input type="text" placeholder="Enter code">
                </div>
            </div>
            </div>
            </div>
             </div>


  <div class="d-flex justify-content-between mt-5 pt-1">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-primary btn-next">
                  <span class="align-middle d-sm-inline-block d-none">Next</span>
                  <i data-feather="arrow-right" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
            
           <div
              id="create-app-submit"
              class="content text-center"
              role="tabpanel"
              aria-labelledby="create-app-submit-trigger">
              <h3>Submit 🥳</h3>
              <p>Submit your app to kickstart your project.</p>
              <img
                src="https://pixinvent.com/demo/vuexy-html-bootstrap-admin-template/resources/images/illustration/pricing-Illustration.svg"
                height="218"
                alt="illustration"
              />
              <div class="d-flex justify-content-between mt-3">
                <button class="btn btn-primary btn-prev">
                  <i data-feather="arrow-left" class="align-middle me-sm-25 me-0"></i>
                  <span class="align-middle d-sm-inline-block d-none">Previous</span>
                </button>
                <button class="btn btn-success btn-submit">
                  <span class="align-middle d-sm-inline-block d-none">Submit</span>
                  <i data-feather="check" class="align-middle ms-sm-25 ms-0"></i>
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>






 











 
  
 
 
 

<!-- / create app modal -->


 
      
        </div>
      </div>
    </div>
    <!-- END: Content-->

    <div class="sidenav-overlay"></div>
    <div class="drag-target"></div>

 

    <!-- BEGIN: Vendor JS-->
    <script src="/esc/resources/vendors/js/vendors.min.js"></script>
    <!-- BEGIN Vendor JS-->

    <!-- BEGIN: Page Vendor JS-->
    <script src="/esc/resources/vendors/js/ui/jquery.sticky.js"></script>
    <script src="/esc/resources/vendors/js/forms/wizard/bs-stepper.min.js"></script>
    <script src="/esc/resources/vendors/js/forms/select/select2.full.min.js"></script>
    <script src="/esc/resources/vendors/js/forms/cleave/cleave.min.js"></script>
    <script src="/esc/resources/vendors/js/forms/cleave/addons/cleave-phone.us.js"></script>
    <script src="/esc/resources/vendors/js/forms/validation/jquery.validate.min.js"></script>
    <!-- END: Page Vendor JS-->

    <!-- BEGIN: Theme JS-->
    <script src="/esc/resources/js/core/app-menu.min.js"></script>
    <script src="/esc/resources/js/core/app.min.js"></script>
    <script src="/esc/resources/js/scripts/customizer.min.js"></script>
    <!-- END: Theme JS-->

    <!-- BEGIN: Page JS-->
    <script src="/esc/resources/js/scripts/pages/modal-add-new-cc.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/page-pricing.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-add-new-address.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-create-app.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-two-factor-auth.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-edit-user.min.js"></script>
    <script src="/esc/resources/js/scripts/pages/modal-share-project.min.js"></script>
    <!-- END: Page JS-->

    <script>
      $(window).on('load',  function(){
        if (feather) {
          feather.replace({ width: 14, height: 14 });
        }
      })
    </script>
  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/modal-examples.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:37:24 GMT -->
</html>