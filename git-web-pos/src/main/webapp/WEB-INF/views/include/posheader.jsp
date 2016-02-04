<%@ page import="com.dobbypos.model.dto.Employee"%>
<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %><!--  태그를 spring으로 수정  -->

<div id="header">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> <a class="brand" href="/dobbywebpos/main.action"> Dobby web pos </a>
				<div class="nav-collapse">
					<ul class="nav pull-right">
					 <c:choose>
            			<c:when test="${ empty sessionScope.loginuser }">
            				<li class=""><a href="signup.html" class=""> Don't have an account? </a></li>
							<li class="">
								<a href="/dobbywebpos/account/hqlogin.action" class=""> 
									<i class="icon-chevron-left"></i> go to 본사page
								</a>
							</li>
            			</c:when>
            			<c:otherwise>
	            			<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
	                            class="icon-cog"></i> Account <b class="caret"></b></a>
				            <ul class="dropdown-menu">
				              <li><a href="javascript:;">Settings</a></li>
				              <li><a href="javascript:;">Help</a></li>
				            </ul>
				          </li>
				          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
				          	<i class="icon-user"></i> ${ loginuser.employeeName } <b class="caret"></b></a>
				            <ul class="dropdown-menu">
				              <li><a href="javascript:;">Profile</a></li>
				              <li><a href="/dobbywebpos/account/logout.action">Logout</a></li>
				            </ul>
				          </li>
            			</c:otherwise>
            		</c:choose>
            	
						
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
			<!-- /container -->
		</div>
		<!-- /navbar-inner -->
	</div>
	<!-- /navbar -->			
</div>   


<div id="menu">

	<c:choose>
    	<c:when test="${ empty sessionScope.loginuser }">
    	</c:when>
		<c:otherwise>
		<div class="subnavbar">
		  <div class="subnavbar-inner">
		    <div class="container">
		      <ul class="mainnav">
	
		      
		      
		        <li class="active"><a href="main.action"><i class="icon-dashboard"></i><span>mainpage</span> </a> </li>	        
		        <li><a href="/dobbywebpos/attendance/main.action"><i class=" icon-check"></i><span>근태</span> </a> </li>
		        <li><a href="/dobbywebpos/sale/salehome_test.action"><i class="icon-shopping-cart"></i><span>판매--윤수</span> </a></li>
		        <li><a href="/dobbywebpos/check/checkmain.action"><i class="icon-bar-chart"></i><span>조회</span> </a> </li>
		        <li><a href="/dobbywebpos/management/managementhome"><i class="icon-wrench"></i><span>관리</span> </a> </li>
		        <li><a href="/dobbywebpos/settings/settinghome.action?storeCode1=${sessionScope.loginuser.storeCode}"><i class="icon-cogs"></i><span>설정</span> </a> </li>
		        <li><a href="/dobbywebpos/sale/salehome.action?storeCode1=${sessionScope.loginuser.storeCode}"><i class="icon-code"></i><span>테이블클릭(주문할거야)</span> </a> </li>
		        
		        
		        
		        
		      <!--   <li><a href="reports.html"><i class="icon-list-alt"></i><span>Reports</span> </a> </li>
		        <li><a href="guidely.html"><i class="icon-facetime-video"></i><span>App Tour</span> </a></li>
		        <li><a href="charts.html"><i class="icon-bar-chart"></i><span>Charts</span> </a> </li>
		        <li><a href="shortcodes.html"><i class="icon-code"></i><span>Shortcodes</span> </a> </li> -->
		        <!-- <li class="dropdown"><a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> <i class="icon-long-arrow-down"></i><span>Drops</span> <b class="caret"></b></a>
		          <ul class="dropdown-menu">
		            <li><a href="icons.html">icons</a></li>
		            <li><a href="faq.html">F&Q</a></li>
		            <li><a href="pricing.html">Pricing Plans</a></li>
		            <li><a href="login.html">Login</a></li>
		            <li><a href="signup.html">Signup</a></li>
		            <li><a href="error.html">404</a></li>
		          </ul>
		        </li> -->
		      </ul>
		    </div>
		    <!-- /container --> 
		  </div>
		  <!-- /subnavbar-inner --> 
		</div>
		<!-- /subnavbar -->
		
		</c:otherwise>
	</c:choose>

            
</div>
        
