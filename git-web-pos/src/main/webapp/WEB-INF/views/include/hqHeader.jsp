<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>



<header class="header">
            <a href="/dobbywebpos/hq/home.action" class="logo">
                <spring:message code="hq.name" />
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <span id="customMenu1">
                <span id="customMenu2">
                <ul id="menu3">
                	<li><spring:message code="hq.menu1" /></li>                	
                	<spring:message code="hq.menu2Path" var="i18nMenu2Path" />
                	<li><a id="store" href="${ i18nMenu2Path }"><spring:message code="hq.menu2" /></a></li>                	
                	<li><spring:message code="hq.menu3" /></li>
                	<spring:message code="hq.menu4Path" var="i18nMenu4Path" />
                	<li><a href="${ i18nMenu4Path }"><spring:message code="hq.menu4" /></a></li>
                	<spring:message code="hq.menu5Path" var="i18nMenu5Path" />
                	<li><a href="${ i18nMenu5Path }"><spring:message code="hq.menu5" /></a></li>
                	
                </ul>
                </span>
                </span>
                <div class="navbar-right">
                    <ul class="nav navbar-nav">
                        <!-- Messages: style can be found in dropdown.less-->
                        <li class="dropdown messages-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-envelope"></i>
                                <span class="label label-success">3</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 4 messages</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- start message -->
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dobbywebpos/resources/styles/26115.jpg" class="img-circle" alt="User Image"/>
                                                </div>
                                                <h4>
                                                    Support Team
                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 5 mins</small>
                                            </a>
                                        </li><!-- end message -->
                                        <li>
                                            <a href="#">
                                           
                                                <div class="pull-left">
                                                    <img src="/dobbywebpos/resources/styles/26115.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Director Design Team

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 hours</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dobbywebpos/resources/styles/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Developers

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Today</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dobbywebpos/resources/styles/26115.jpg" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Sales Department

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> Yesterday</small>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="pull-left">
                                                    <img src="/dobbywebpos/resources/styles/avatar.png" class="img-circle" alt="user image"/>
                                                </div>
                                                <h4>
                                                    Reviewers

                                                </h4>
                                                <p>Why not buy a new awesome theme?</p>
                                                <small class="pull-right"><i class="fa fa-clock-o"></i> 2 days</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="footer"><a href="#">See All Messages</a></li>
                            </ul>
                        </li>
                        <li class="dropdown tasks-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-tasks"></i>
                                <span class="label label-danger">9</span>
                            </a>
                            <ul class="dropdown-menu">
                                <li class="header">You have 9 tasks</li>
                                <li>
                                    <!-- inner menu: contains the actual data -->
                                    <ul class="menu">
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Design some buttons
                                                    <small class="pull-right">20%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-success" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">20% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Create a nice theme
                                                    <small class="pull-right">40%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-danger" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Some task I need to do
                                                    <small class="pull-right">60%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-info" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">60% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                        <li><!-- Task item -->
                                            <a href="#">
                                                <h3>
                                                    Make beautiful transitions
                                                    <small class="pull-right">80%</small>
                                                </h3>
                                                <div class="progress progress-striped xs">
                                                    <div class="progress-bar progress-bar-warning" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">80% Complete</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </li><!-- end task item -->
                                    </ul>
                                </li>
                                <li class="footer">
                                    <a href="#">View all tasks</a>
                                </li>
                            </ul>
                        </li>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <i class="fa fa-user"></i>
                                <c:set var="hqName" value="${ sessionScope.hqloginuser.hqName }"></c:set>
                                <span>${ hqName }<i class="caret"></i></span>
                            </a>
                            <ul class="dropdown-menu dropdown-custom dropdown-menu-right">
                                <li class="dropdown-header text-center"><spring:message code="hq.account" /></li>

                                <li>
                                    <a href="#">
                                    <i class="fa fa-clock-o fa-fw pull-right"></i>
                                        <span class="badge badge-success pull-right">10</span> Updates</a>
                                    <a href="#">
                                    <i class="fa fa-envelope-o fa-fw pull-right"></i>
                                        <span class="badge badge-danger pull-right">5</span> Messages</a>
                                    <a href="#"><i class="fa fa-magnet fa-fw pull-right"></i>
                                        <span class="badge badge-info pull-right">3</span> Subscriptions</a>
                                    <a href="#"><i class="fa fa-question fa-fw pull-right"></i> <span class=
                                        "badge pull-right">11</span> FAQ</a>
                                </li>

                                <li class="divider"></li>

                                    <li>
                                        <a href="#">
                                        <i class="fa fa-user fa-fw pull-right"></i>
                                            Profile
                                        </a>
                                        <a data-toggle="modal" href="#modal-user-settings">
                                        <i class="fa fa-cog fa-fw pull-right"></i>
                                            Settings
                                        </a>
                                        </li>

                                        <li class="divider"></li>

                                        <li>
                                            <a href="/dobbywebpos/account/hqlogout.action"><i class="fa fa-ban fa-fw pull-right"></i><spring:message code="hq.logout" /></a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </header>
                <div class="wrapper row-offcanvas row-offcanvas-left">
                    <!-- Left side column. contains the logo and sidebar -->
                    <aside class="left-side sidebar-offcanvas">
                        <!-- sidebar: style can be found in sidebar.less -->
                        <section class="sidebar">
                            <!-- Sidebar user panel -->
                            <div class="user-panel">
                                <div class="pull-left image">
                                    <img src="/dobbywebpos/resources/images/26115.jpg" class="img-circle" alt="User Image" />
                                </div>
                                <div class="pull-left info">
                                
                                    

									<c:choose>
										<c:when test="${ empty sessionScope.hqloginuser }">
										
											<a href="#"><i class="fa fa-circle text-success"></i> <spring:message code="hq.offline" /></a>
										</c:when>
										<c:otherwise>
										<p><spring:message code="general.welcome" arguments="${ sessionScope.hqloginuser.hqName }" /></p>
                                    		<a href="#"><i class="fa fa-circle text-success"></i> <spring:message code="hq.online" /></a>
                                    	</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <!-- search form -->
                            <form action="#" method="get" class="sidebar-form">
                                <div class="input-group">
                                	<spring:message code="hq.search" var="i18nSearch" />
                                    <input type="text" name="q" class="form-control" placeholder="${ i18nSearch }..."/>
                                    <span class="input-group-btn">
                                        <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                                    </span>
                                </div>
                            </form>
                            <!-- /.search form -->
                            <!-- sidebar menu: : style can be found in sidebar.less -->
                           
                            
                            <c:set var="mainPath"><spring:message code="hq.mainPath" /></c:set>
                            <c:set var="menu1Path"><spring:message code="hq.menu1Path" /></c:set>
                            <c:set var="menu2Path"><spring:message code="hq.menu2Path" /></c:set>
                            <c:set var="menu3Path"><spring:message code="hq.menu3Path" /></c:set>
                            <c:set var="menu4Path"><spring:message code="hq.menu4Path" /></c:set>
                            <c:set var="menu5Path"><spring:message code="hq.menu5Path" /></c:set>
                            <c:choose>
                            	<c:when test="${ requestScope.path eq mainPath }">
                            		<c:import url="/WEB-INF/views/include/sidebarmenumain.jsp"></c:import>
                            	</c:when>
                            	<c:when test="${ requestScope.path eq menu1Path }">
                            		<c:import url="/WEB-INF/views/include/sidebarmenu1.jsp"></c:import>
                            	</c:when>
                            	<c:when test="${ requestScope.path eq menu2Path }">
                            		<c:import url="/WEB-INF/views/include/sidebarmenu2.jsp"></c:import>
                            	</c:when>
                            	<c:when test="${ requestScope.path eq menu3Path }">
                            		<c:import url="/WEB-INF/views/include/sidebarmenu3.jsp"></c:import>
                            	</c:when>
                            	<c:when test="${ requestScope.path eq menu4Path }">
                            		<c:import url="/WEB-INF/views/include/sidebarmenu4.jsp"></c:import>
                            	</c:when>
                            	<c:when test="${ requestScope.path eq menu5Path }">
                            		<c:import url="/WEB-INF/views/include/sidebarmenu5.jsp"></c:import>
                            	</c:when>
                            </c:choose>
                        </section>
                        <!-- /.sidebar -->
                    </aside>