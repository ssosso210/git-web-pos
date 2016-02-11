<%@page import="com.dobbypos.model.dto.Store"%>
<%@page import="java.util.List"%>
<%@page import="com.dobbypos.model.dao.HqDao"%>
<%@ page language="java" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title><spring:message code="hq.storeManagementTitle" /></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <meta name="description" content="Developed By M Abdur Rokib Promy">
    <meta name="keywords" content="Admin, Bootstrap 3, Template, Theme, Responsive">
    <!-- bootstrap 3.0.2 -->
    <link href="/dobbywebpos/resources/styles/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="/dobbywebpos/resources/styles/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="/dobbywebpos/resources/styles/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="/dobbywebpos/resources/styles/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="/dobbywebpos/resources/styles/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="/dobbywebpos/resources/styles/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- fullCalendar -->
    <link href="/dobbywebpos/resources/styles/fullcalendar/fullcalendar.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="/dobbywebpos/resources/styles/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link href="/dobbywebpos/resources/styles/iCheck/all.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <!-- <link href="css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" /> -->
    <link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
    <!-- Theme style -->
    <link href="/dobbywebpos/resources/styles/style.css" rel="stylesheet" type="text/css" />
    <link href="/dobbywebpos/resources/styles/style2.css" rel="stylesheet" type="text/css" />
	<link href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />
	

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
          <![endif]-->

          <style type="text/css">
          
          	/* body { font-size: 62.5%; } */
		    label, input { display:block; }
		    input.text { margin-bottom:12px; width:95%; padding: .4em; }
		    fieldset { padding:0; border:0; margin-top:25px; }
		    h1 { font-size: 1.2em; margin: .6em 0; }
		    div#users-contain { width: 350px; margin: 20px 0; }
		    div#users-contain table { margin: 1em 0; border-collapse: collapse; width: 100%; }
		    div#users-contain table td, div#users-contain table th { border: 1px solid #eee; padding: .6em 10px; text-align: left; }
		    .ui-dialog .ui-state-error { padding: .3em; }
		    .validateTips { border: 1px solid transparent; padding: 0.3em; }
          
          
          

			* { margin : 0px; padding : 0px; }
        body { background-color : White/* #525252; */ }
        .item {
            margin : 5px;
            width : 100px; height : 100px;
			border: solid;
            background-color : White; border-radius : 10px;
            float : left;
        }
        
        .item2 {
            margin : 5px;
            width : 100px; height : 100px;
			border: solid;
            background-color : White; border-radius : 10px;
        }

        .big { width : 210px; height : 500px; }
        .normal { width : 210px; height : 210px; }
        .small { width : 100px; height : 100px; }
        
       div[id^=big] {
			position: absolute;
			background: #88b7d5;
			border: 4px solid #c2e1f5;
			z-index: 100;
		}
		/* div[id^=big]:after, #big:before {
			right: 100%;
			top: 20%;
			border: solid transparent;
			content: " ";
			height: 0;
			width: 0;
			position: absolute;
			pointer-events: none;
		}
		
		div[id^=big]:after {
			border-color: rgba(136, 183, 213, 0);
			border-right-color: #88b7d5;
			border-width: 30px;
			margin-top: -30px;
		}
		div[id^=big]:before {
			border-color: rgba(194, 225, 245, 0);
			border-right-color: #c2e1f5;
			border-width: 36px;
			margin-top: -36px;
		}
 */
        </style>
        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>

		<script src="/dobbywebpos/resources/js/jquery.leanModal.min.js" type="text/javascript"></script>

        <!-- jQuery UI 1.10.3 -->
        <script src="/dobbywebpos/resources/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
        <script src="/dobbywebpos/resources/js/jquery.blockUI.js" type="text/javascript"></script>
        <!-- Bootstrap -->
        <script src="/dobbywebpos/resources/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- daterangepicker -->
        <script src="/dobbywebpos/resources/js/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>

        <script src="/dobbywebpos/resources/js/plugins/chart.js" type="text/javascript"></script>

        <!-- datepicker
        <script src="js/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>-->
        <!-- Bootstrap WYSIHTML5
        <script src="js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>-->
        <!-- iCheck -->
        <script src="/dobbywebpos/resources/js/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
        <!-- calendar -->
        <script src="/dobbywebpos/resources/js/plugins/fullcalendar/fullcalendar.js" type="text/javascript"></script>

        <!-- Director App -->
        <script src="/dobbywebpos/resources/js/Director/app.js" type="text/javascript"></script>

        <!-- Director dashboard demo (This is only for demo purposes) -->
        <script src="/dobbywebpos/resources/js/Director/dashboard.js" type="text/javascript"></script>

		<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

        <!-- Director for demo purposes -->
        <script type="text/javascript">
            $('input').on('ifChecked', function(event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().addClass('highlight');
                $(this).parents('li').addClass("task-done");
                console.log('ok');
            });
            $('input').on('ifUnchecked', function(event) {
                // var element = $(this).parent().find('input:checkbox:first');
                // element.parent().parent().parent().removeClass('highlight');
                $(this).parents('li').removeClass("task-done");
                console.log('not');
            });

        </script>
        <script>
            $('#noti-box').slimScroll({
                height: '400px',
                size: '5px',
                BorderRadius: '5px'
            });

            $('input[type="checkbox"].flat-grey, input[type="radio"].flat-grey').iCheck({
                checkboxClass: 'icheckbox_flat-grey',
                radioClass: 'iradio_flat-grey'
            });
                                              
</script>

<script type="text/javascript">

$(function() {
	/* var handled = false;
	$("div[id^=big]").hide(); */
	
	
		
	$("div[id^=menus]").each(function(index, value) {
		var self = $(this);
		
		/* var top = (getTop(this) - 10) + 'px';
		var left = (getLeft(this) - 10) + 'px'; */
		
///////////////////////////////////////////////////////
		
		var dialog, form,
		 
		      // From http://www.whatwg.org/specs/web-apps/current-work/multipage/states-of-the-type-attribute.html#e-mail-state-%28type=email%29
		      emailRegex = /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/,
		      name = $( "#name" ),
		      email = $( "#email" ),
		      password = $( "#password" ),
		      allFields = $( [] ).add( name ).add( email ).add( password ),
		      tips = $( ".validateTips" );
		 
		    function updateTips( t ) {
		      tips
		        .text( t )
		        .addClass( "ui-state-highlight" );
		      setTimeout(function() {
		        tips.removeClass( "ui-state-highlight", 1500 );
		      }, 500 );
		    }
		 
		    function checkLength( o, n, min, max ) {
		      if ( o.val().length > max || o.val().length < min ) {
		        o.addClass( "ui-state-error" );
		        updateTips( "Length of " + n + " must be between " +
		          min + " and " + max + "." );
		        return false;
		      } else {
		        return true;
		      }
		    }
		 
		    function checkRegexp( o, regexp, n ) {
		      if ( !( regexp.test( o.val() ) ) ) {
		        o.addClass( "ui-state-error" );
		        updateTips( n );
		        return false;
		      } else {
		        return true;
		      }
		    }
		 
		    function addUser() {
		      var valid = true;
		      allFields.removeClass( "ui-state-error" );
		 
		      valid = valid && checkLength( name, "username", 3, 16 );
		      valid = valid && checkLength( email, "email", 6, 80 );
		      valid = valid && checkLength( password, "password", 5, 16 );
		 
		      valid = valid && checkRegexp( name, /^[a-z]([0-9a-z_\s])+$/i, "Username may consist of a-z, 0-9, underscores, spaces and must begin with a letter." );
		      valid = valid && checkRegexp( email, emailRegex, "eg. ui@jquery.com" );
		      valid = valid && checkRegexp( password, /^([0-9a-zA-Z])+$/, "Password field only allow : a-z 0-9" );
		 
		      if ( valid ) {
		        $( "#users tbody" ).append( "<tr>" +
		          "<td>" + name.val() + "</td>" +
		          "<td>" + email.val() + "</td>" +
		          "<td>" + password.val() + "</td>" +
		        "</tr>" );
		        dialog.dialog( "close" );
		      }
		      return valid;
		    }
		 
		    dialog = $( "#dialog-form" ).dialog({
		      autoOpen: false,
		      height: 500,
		      width: 500,
		      modal: true,
		      buttons: {
		        "수정": addUser,
		        "취소": function() {
		          dialog.dialog( "close" );
		        }
		      },
		      close: function() {
		        form[ 0 ].reset();
		        allFields.removeClass( "ui-state-error" );
		      }
		    });
		 
		    form = dialog.find( "form" ).on( "submit", function( event ) {
		      event.preventDefault();
		      //addUser();
		      
		    });
		
		
		//////////////////////////////////////////////////////////
		$(this).on("mouseenter", function(event) {
			$("#menus"+index).css({
                'filter': 'blur(10px)',
                '-webkit-filter': 'blur(10px)',
                '-moz-filter': 'blur(10px)',
                '-o-filter': 'blur(10px)',
                '-ms-filter': 'blur(10px)'
            });
		});
		
		$(this).on("click", function(event) {
				//alert(index);  
				dialog.dialog( "open" );
			      
			    
			
			
			/* 			if (handled) return;
			$("#big").css({left: left, top: top});
			$("#big").show();
 			$("#menus"+index).css({
                'filter': 'blur(10px)',
                '-webkit-filter': 'blur(10px)',
                '-moz-filter': 'blur(10px)',
                '-o-filter': 'blur(10px)',
                '-ms-filter': 'blur(10px)'
            });
			$("#menus"+index).hide(); */
			
		});
		
		/* $( "#create-user"+index ).button().on( "click", function() {
		      dialog.dialog( "open" );
		    }); */
		
		    /*$("#menus"+index).on("mouseleave", function(event) {
			if (handled) return;
			console.log('mouse out');
			$("#big").hide();
 			 $("#menus"+index).css({
                'filter': 'blur(0px)',
                '-webkit-filter': 'blur(0px)',
                '-moz-filter': 'blur(0px)',
                '-o-filter': 'blur(0px)',
                '-ms-filter': 'blur(0px)',
                'position': 'relative'
            });
            $('#menus' + index).show(); 
			
		});*/
		
		
	/* 	function getTop(t) {
			
			var	topPos = 0;
			while(t.tagName.toLowerCase() != "body" && 
				  t.tagName.toLowerCase() != "html") {
				topPos += t.offsetTop;//offsetTop : 상위 요소와의 거리
				t = t.offsetParent;	//상위 요소를 현재 요소에 대입
			}
			return topPos;
		}
		
		function getLeft(t) {	

			var	leftPos	= 0;
			while(t.tagName.toLowerCase() != "body" && 
				  t.tagName.toLowerCase() != "html")
			{
				leftPos += t.offsetLeft;
				t	= t.offsetParent;
			}
			return leftPos;
		} */
			
	});
	
});	

</script>
      </head>
      <body class="skin-black">

      <c:import url="/WEB-INF/views/include/hqHeader.jsp" />
      
		<!--  <div id="pageContainer">	 -->	
		
		<div class="right-side" style="padding-top:25px;text-align:center">
			
	<div class="masonry_container">
	<c:forEach begin="0" varStatus="status" var="menu" items="${ menus }">		
					
    
    	
        <div id="menus${ status.index }" class="item normal" style="display: inline-block;">
        	<img id="img" alt="" src="/dobbywebpos/resources/uploadfiles/${ menu.savedFileName }" style="width : 200px; height : 200px;margin-top: 2px;border;display: inline-block;">
        	<%-- <button id="create-user${ status.index }" data-toggle="modal">Create new user</button> --%>
        </div>
        
        
        
        <%-- <div id="big${ status.index }" class = "item big">
        	<img alt="" src="/dobbywebpos/resources/uploadfiles/${ menu.savedFileName }" style="width : 300px; height : 300px;margin-top: 2px;border;display: inline-block;">
        	<div><h2><a>${menu.foodName }</a></h2><h3>${menu.menuGroups }</h3><h3>${menu.foodPrice }</h3></div>
        </div>
     --%>
    </c:forEach> 
	 </div>
	 
	           
	 

		</div>
		
<script src = "http://masonry.desandro.com/masonry.pkgd.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
	//alert("${ path }");
	
    $('#masonry_container').masonry({
        itemSelector : '.item',
        columnWidth : 110
    });
});         
            
</script>

<%-- <div id="big" class="item2 normal">
        	<img alt="" src="/dobbywebpos/resources/uploadfiles/스테이크_1.jpg" style="width : 300px; height : 300px;margin-top: 2px;border;display: inline-block;">
        	<div><h2><a>${menu.foodName }</a></h2><h3>${menu.menuGroups }</h3><h3>${menu.foodPrice }</h3></div>
        </div> --%>
        
        
        
        <c:forEach begin="0" varStatus="status" var="menu" items="${ menus }">	
        
        <div id="dialog-form" title="Create new user">
  <p class="validateTips">메뉴 정보 수정</p>
 
  <form>
    <fieldset>
    <label for="password">코드</label>
      <input type="text" name="foodCode" id="password" value="${ menu.foodCode }" class="text ui-widget-content ui-corner-all">
      <label for="name">이름</label>
      <input type="text" name="foodName" id="name" value="${ menu.foodName }" class="text ui-widget-content ui-corner-all">
      <label for="email">그룹</label>
      <input type="text" name="foodGroups" id="email" value="${ menu.menuGroups }" class="text ui-widget-content ui-corner-all">
      <label for="password">가격</label>
      <input type="number" name="foodPrice" id="password" value="${ menu.foodPrice }" class="text ui-widget-content ui-corner-all">
      <label for="password">사진</label>
      <input type="text" name="savedfilename" id="password" value="${ menu.savedFileName }" class="text ui-widget-content ui-corner-all" readonly="readonly">
      <input type="file" name="savedfilename" id="choosePhoto" class="text ui-widget-content ui-corner-all">
 
      <!-- Allow form submission with keyboard without duplicating the dialog button -->
      <input type="submit" tabindex="-1" style="position:absolute; top:-1000px">
    </fieldset>
  </form>
</div>
</c:forEach> 
    <!-- <button id="create-user" data-toggle="modal">Create new user</button> -->

</body>
</html>