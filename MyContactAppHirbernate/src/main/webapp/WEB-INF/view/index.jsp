<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<s:url value="/registerForm" var="registerForm_url"/>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>User Login Page</title>
        <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body background="${pageContext.request.contextPath}/static/image/bg2.jpg">
        <table border="1" width="80%" align="center">
            <tr>
                <td height="100px">
                    <!-- header -->	
                    <jsp:include page="include/header.jsp"/>
                </td>

            </tr>

            <tr>
                <td height="25px">
                    <!-- Menu -->		
                    <jsp:include page="include/menu.jsp"/>
                </td>

            </tr>
            <tr>
                <td height="350px" valign="top">
                    <!-- Page Content -->	
                    <h1>User login</h1>
                    <c:if test="${not empty err}">
                        <p class="error">${err}</p>
                    </c:if>
                    <c:if test="${param.act eq 'lo'}">
                        <p class="success">Logout successfully</p>
                    </c:if>
                    <c:if test="${param.act eq 'reg'}">
                        <p class="success">Register successfully</p>
                    </c:if>
                    <f:form action="login" modelAttribute="login" method="post">
                        <table border="1">
                            <tr>
                                <td>User name</td>
                                <td><f:input path="username"/></td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td><f:password path="password"/></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="right">
                                    <input type="submit" value="Login" />
                                    <a href="${registerForm_url}">New User Registration</a>
                                </td>
                            </tr>
                        </table>

                    </f:form> 
                </td>

            </tr>
            <tr>
                <td height="25px">
                    <!-- Footer -->	
                    <jsp:include page="include/footer.jsp"/>
                </td>

            </tr>
        </table>
    </body>
</html>