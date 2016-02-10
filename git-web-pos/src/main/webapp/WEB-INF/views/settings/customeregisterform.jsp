
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8" />
    <title>고객등록</title>
</head>
<body>

    <div id="pageContainer">
        <div id="inputcontent">
            <br /><br />
            <div id="inputmain">
                <div class="inputsubtitle">고객등록정보</div>
                <form action="customeregister.action" method="post">
                <table>
                  
                    <tr>
                        <th>고객이름</th>
                        <td>
                            <input type="text" name="c_name" style="width:280px" />
                        </td>
                    </tr>
                     <tr>
                        <th>전화번호</th>
                        <td>
                            <input type="text" name="c_phoneNo" style="width:280px" />
                        </td>
                    </tr>
                     <tr>
                        <th>나이</th>
                        <td>
                            <input type="number" name="c_age" style="width:280px" />
                        </td>
                    </tr>
                     <tr>
                        <th>성별</th>
                        <td>
                            <input type="radio" name="c_gender" value="male" >남</input>
                            <input type="radio" name="c_gender" value="female">여</input>
                        </td>
                    </tr>
                     <tr>
                        <th>포인트</th>
                        <td>
                            <input type="number" name="c_point" style="width:280px" />
                        </td>
                    </tr>
                 
                  <tr>
                        <th>고객등급</th>
                        <td>
                            <input type="text" name="c_level" style="width:280px" />
                        </td>
                    </tr>
                    <tr>
                        <th>가게코드</th>
                        <td>
                            <input type="text" name="storeCode" style="width:280px" value="${storeCode}" />
                        </td>
                    </tr>
                 
                </table>
                <div class="buttons">
                    <input type="submit" value="등록" style="height:25px" />
                </div>
                </form>
            </div>
        </div>      
   
    </div>

</body>
</html>