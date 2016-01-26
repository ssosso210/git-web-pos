<%@ page import="com.dobbypos.model.dto.Employee"%>
<%@ page language="java" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %><!--  태그를 spring으로 수정  -->

		<div id="header">
            <div class="title">
                <a href="/dobbywebpos/home.action">DEMO WEBSITE</a>
            </div>
            <div class="links">
            <c:choose>
            	<c:when test="${ empty sessionScope.loginuser }">
            	<a href="/dobbywebpos/account/login.action">
            		<!-- 로그인 --> <spring:message code="account.login"></spring:message>
            	</a>
                <a href="#"><!-- 등록  --><spring:message code="account.join"/></a>
            	</c:when>
            	<c:otherwise>
            	<!-- 님 환영합니다. --> <spring:message code="general.welcome" arguments="${ loginuser.employeeName }"></spring:message>
            	<a href="/dobbywebpos/account/logout.action">
            	<!-- 로그아웃 --> <spring:message code="account.logout"></spring:message>
            	</a>
            	</c:otherwise>
            </c:choose>
            </div>
        </div>        
        <div id="menu">
            <div>
                <ul>
                	<!-- a : 페이지 이동을 처리하는 마크업 -->
                   <%--  <li><a href="/dobbywebpos/member/list.action">
                    		<!-- 사용자관리 --> <spring:message code="menu.member"/></a></li> --%>
					<li><a href="#">
							<!-- 메일보내기 --><spring:message code="menu.email"/></a></li>
					<li><a href="#">
							<!-- 자료실 --><spring:message code="menu.library"/></a></li>
				    <li><a href="#">
							<!-- 관리 --><spring:message code="menu.management"/></a></li>
					<li><a href="#">
							<!-- 게시판 --><spring:message code="menu.board"/></a></li>

                </ul>
            </div>
        </div>
        <div style="text-align:right;margin-top:1px;
        	border:solid 1px;padding:5px">
        	[ TOTAL : ${ total } 명 ]
        	[ CURRENT : ${ current } 명 ]
        </div>
        
        
        
        
        
        
        
        
        
        
        
        