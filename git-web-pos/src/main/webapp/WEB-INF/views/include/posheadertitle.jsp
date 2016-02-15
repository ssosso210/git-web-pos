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
            				<!-- <li class=""><a href="signup.html" class=""> Don't have an account? </a></li> -->
							<li class="">
								<a href="/dobbywebpos/account/hqlogin.action" class=""> 
									<i class="icon-chevron-left"></i> go to 본사page
								</a>
							</li>
            			</c:when>
            			<c:otherwise>
	            			
				          <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">
				          	<i class="icon-user"></i> ${ loginuser.employeeName } <b class="caret"></b></a>
				            <ul class="dropdown-menu">
				              <li><a href="/dobbywebpos/management/view.action?employeeNo=${loginuser.employeeNo }">Profile</a></li>
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

