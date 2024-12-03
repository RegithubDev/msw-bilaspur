<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>

<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
  
<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-login-cover.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:01 GMT -->
<head>
   
	 <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!--    <meta name="google-signin-client_id" content="180023549420-4araucipo8cil4matp902f64cte57md9.apps.googleusercontent.com">  -->
       <script src="https://accounts.google.com/gsi/client" async defer></script>
     <title>Login - RE Sustainability</title>
    <link rel="apple-touch-icon" href="<c:url value="/resources/images/ico/apple-icon-120.html"/>">
      <link rel="icon" type="image/png" sizes="96x96" href="/reirm/resources/images/protect-favicon.png" >
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;1,400;1,500;1,600" rel="stylesheet">

    <!-- BEGIN: Vendor CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/vendors/css/vendors.min.css"/>">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- END: Vendor CSS-->

    <!-- BEGIN: Theme CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap-extended.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/colors.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/components.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/themes/dark-layout.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/themes/bordered-layout.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/themes/semi-dark-layout.min.css"/>">
	<script src="<c:url value="/resources/js/jQuery-v.3.5.min.js"  />"></script>
    <!-- BEGIN: Page CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/core/menu/menu-types/horizontal-menu.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/plugins/forms/form-validation.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/pages/authentication.css"/>">
    <!-- END: Page CSS-->
    <!-- BEGIN: Custom CSS-->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
    <!-- END: Custom CSS-->
<style>
.mb-1 {
    margin-bottom: 2rem!important;
}
	.h2, h2 {
	    font-size: 1.914rem !important; 
	}
.p-5 {
    padding: 0rem!important;
}
.ms-2 {
    margin-left: 2.9rem!important;
}
.imgDiv div {
    position: absolute;
    top: 0; right: 455px; bottom: 0; left: 0;
}
.img-fluid, .img-thumbnail {
    width: 100% !important;
   height: 100% !important;
}
.horizontal-menu footer {
    position: fixed;
}
.text-shadow{
	color: black !important;}
.carousel-indicators {
	bottom: 28px !important;
}
.auth-wrapper.auth-cover .brand-logo {
    left: 70% !important;
    margin-top: 8rem !important;
}

.fr-text{
    font-size: .75rem
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
    background-image: url('https://news.sap.com/belgie/files/2022/01/13/289135_GettyImages-1214827275-1.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    filter: blur(5px); /* Blurs the image */
    z-index: -1; /* Ensures the blurred image stays behind the content */
    
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
        <div class="content-body">
          <div class="auth-wrapper auth-cover">
            <div class="auth-inner row m-0">
            
              <!-- Brand logo--> 
		               
            
              <!-- /Brand logo-->
              <!-- Left Text-->
              
              <div class=" d-none d-lg-flex col-lg-8 align-items-center p-5 ">
                 <div class="w-100 d-lg-flex align-items-center justify-content-center px-5 imgDiv"  id="imgDiv">
<!-- 				          <div id="carousel-example-caption" class="carousel slide" data-bs-ride="carousel">
 -->
 <div id="carousel-interval" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
 				            <ol class="carousel-indicators">
 				            
				              <li data-bs-target="#carousel-interval" data-bs-slide-to="0" class="active"></li>
				              <li data-bs-target="#carousel-interval" data-bs-slide-to="1"></li>
				              <li data-bs-target="#carousel-interval" data-bs-slide-to="2"></li>
				                <li data-bs-target="#carousel-interval" data-bs-slide-to="3"></li>
				            </ol>
				            <div class="carousel-inner">
				              <div class="carousel-item active">
				                <img class="img-fluid" src="https://idbinvest.org/sites/default/files/styles/size936x656/public/blog_post/Ilustraci%C3%B3n-FINAL.jpg.webp?itok=gCIq1dcH" alt="First slide" />
				                <div class="carousel-caption d-none d-md-block">
				                  <!-- <h3 class="text-white">First Slide Label</h3> -->
				                
				                </div>
				              </div>
				  
				                <div class="carousel-item">
				                <img class="img-fluid" src="https://img.freepik.com/free-vector/gradient-sdg-infographic_23-2149396367.jpg"> alt="Second slide" />
				                <div class="carousel-caption d-none d-md-block">
				                  
				                </div>
				              </div>
				                <div class="carousel-item">
				                <img class="img-fluid" src="https://assets.euromoneydigital.com/dims4/default/485c8a4/2147483647/strip/true/crop/600x338+0+31/resize/1200x675!/quality/90/?url=http%3A%2F%2Feuromoney-brightspot.s3.amazonaws.com%2Fde%2Fb6%2F9411438240a791a3bf4e36c5cca1%2Fesg.jpg"  alt="Third slide" />
				                <div class="carousel-caption d-none d-md-block">
				                 
				                </div>
				              </div>
				              
				              <div class="carousel-item">
				                <img class="img-fluid" src="https://reportyak.com/wp-content/uploads/2024/05/Sustainable-Development-Index-Report-Yak-Blog.webp" alt="Fourth slide" />
				                <div class="carousel-caption d-none d-md-block">
				                 
				                </div>
				              </div>
				          
				            </div>
				            <a
				              class="carousel-control-prev"
				              data-bs-target="carousel-interval"
				              role="button"
				              data-bs-slide="prev"
				            >
				              <span class="carousel-interval" aria-hidden="true"></span>
				              <span class="visually-hidden">Previous</span>
				            </a>
				            <a
				              class="carousel-control-next"
				              data-bs-target="#carousel-example-caption"
				              role="button"
				              data-bs-slide="next"
				            >
				              <span class="carousel-interval" aria-hidden="true"></span>
				              <span class="visually-hidden">Next</span>
				            </a>
				          </div>
				    </div>
              </div>
              <!-- /Left Text-->
              <!-- Login-->
              
          <div class="d-flex col-lg-4 align-items-center auth-bg px-2 p-lg-5 bg ">
         	<!-- 	<img class="img-fluid" src="/esc/resources/logo.png"  /> -->
     		<jsp:include page="../views/layout/msg.jsp"></jsp:include>
         
            
                <div class="col-12 col-sm-8 col-md-6 col-lg-12 px-xl-2 mx-auto">
                      <!-- <h2 class="badge bg-dark card-title fw-bold mb-1">WELCOME</h2> -->
			           <h2 class="badge bg-dark card-title fw-bold mb-1 animated-border">
						    WELCOME to Score Card
						</h2>


                      <p class="card-text mb-2 text-white">Please sign-in to your account and start the adventure</p>
                 <form class="auth-login-form mt-2" action="<%=request.getContextPath() %>/login" method="POST" novalidate="novalidate">
                 		<span class="text-danger">${invalidEmail }</span>
                    <div class="mb-1">
                      <label class="form-label text-white" for="login-email">Email</label>
                      <input class="form-control" id="login-email" type="text" name="email_id" placeholder="john@example.com" aria-describedby="login-email" autofocus="" tabindex="1">
                    </div>
                  <div class="mb-1">
                      <div class="d-flex justify-content-between">
                        <label class="form-label text-white" for="login-password">Password</label><!-- <a href="auth-forgot-password-cover.html"><small>Forgot Password?</small></a> -->
                      </div>
                      <div class="input-group input-group-merge form-password-toggle">
                        <input class="form-control form-control-merge" id="login-password" type="password" name="password" placeholder="············" aria-describedby="login-password" tabindex="2"><span class="input-group-text cursor-pointer"><svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-eye"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle></svg></span>
                      </div>
                    </div> 
                    <div class="mb-1">
                      <div class="form-check">
                        <input class="form-check-input" id="remember-me" type="checkbox" tabindex="3">
                        <label class="form-check-label text-white" for="remember-me"> Remember Me</label>
                      </div>
                    </div>
                    <button class="btn btn-primary w-100 waves-effect waves-float waves-light" type="submit" tabindex="4">Sign in</button>
                   
                  </form>
                   <p class="text-center mt-2 text-white">
			          <span>New on our platform?</span>
			          <a href="<%=request.getContextPath() %>/add-new-user-form">
			            <span class="text-warning">Create an account</span>
			          </a>
			        </p>
                </div>
              </div>
              
              <!-- /Login-->
            </div>
          </div>
        </div>
      </div>
    </div>
     <!-- footer included -->
   <%--  <jsp:include page="../views/layout/footer.jsp"></jsp:include>  --%> 
    <!-- END: Content-->
	
	
    <!-- BEGIN: Vendor JS-->
    <script src="<c:url value="/resources/vendors/js/vendors.min.js"/>"></script>
    <!-- BEGIN Vendor JS-->
	<script type="text/javascript" src="css3-mediaqueries.js"></script>
    <!-- BEGIN: Page Vendor JS-->
    <script src="<c:url value="/resources/vendors/js/ui/jquery.sticky.js"/>"></script>
    <script src="<c:url value="/resources/vendors/js/forms/validation/jquery.validate.min.js"/>"></script>
    <!-- END: Page Vendor JS-->
    <!-- BEGIN: Theme JS-->
    <script src="<c:url value="/resources/js/core/app-menu.min.js"/>"></script>
    <script src="<c:url value="/resources/js/core/app.min.js"/>"></script>
    <!-- END: Theme JS-->
 	<script src="<c:url value="/resources/js/core/app-menu.min.js"/>"></script>
    <script src="<c:url value="/resources/js/core/app.min.js"/>"></script>
    <script src="<c:url value="/resources/js/scripts/customizer.min.js"/>"></script>
    <!-- BEGIN: Page JS-->
    <script src="<c:url value="/resources/js/scripts/pages/auth-login.js"/>"></script>
    <!-- END: Page JS-->


  </body>
  <!-- END: Body-->

<!-- Mirrored from pixinvent.com/demo/vuexy-html-bootstrap-admin-template/html/ltr/horizontal-menu-template/auth-login-cover.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 07 Aug 2022 05:36:01 GMT -->
</html>