<%-- 
    Document   : index2
    Created on : Aug 28, 2018, 7:51:00 PM
    Author     : nguyenducthanh
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<s:url value="/registerForm" var="registerForm_url"/>
<s:url value="/static/loginRef" var="loginRef_url"/>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Contact Service</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="${loginRef_url}/images/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/vendor/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/loginRef/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/vendor/animate/animate.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/vendor/css-hamburgers/ha
              mburgers.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/vendor/animsition/css/animsition.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/vendor/select2/select2.min.css">
        <!--===============================================================================================-->	
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/vendor/daterangepicker/daterangepicker.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/css/util.css">
        <link rel="stylesheet" type="text/css" href="${loginRef_url}/css/main.css">
        <!--===============================================================================================-->
        <!--my CSS-->
         <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url(${pageContext.request.contextPath}/static/image/background1.jpg);  background-size: cover;">
                <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">

                    <f:form action="login" modelAttribute="login" method="post" cssClass="login100-form validate-form flex-sb flex-w">
                        <span class="login100-form-title p-b-32">
                            Account Login
                        </span>
                        <c:if test="${not empty err}">
                            <p class="error">${err}</p>
                        </c:if>
                        <c:if test="${param.act eq 'lo'}">
                            <p class="success">Logout successfully</p>
                        </c:if>
                        <c:if test="${param.act eq 'reg'}">
                            <p class="success">Register successfully</p>
                        </c:if> <br>

                        <span class="txt1 p-b-11">
                            Username
                        </span>
                        <div class="wrap-input100 validate-input m-b-36" data-validate = "Username is required">
                            <f:input path="username" cssClass="input100"/>
                            <span class="focus-input100"></span>
                        </div>

                        <span class="txt1 p-b-11">
                            Password
                        </span>
                        <div class="wrap-input100 validate-input m-b-12" data-validate = "Password is required">
                            <span class="btn-show-pass">
                                <i class="fa fa-eye"></i>
                            </span>
                            <f:password path="password" cssClass="input100"/> 
                            <span class="focus-input100"></span>
                        </div>

                        <div class="flex-sb-m w-full p-b-48">
                            <div class="contact100-form-checkbox">
                                <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                                <label class="label-checkbox100" for="ckb1">
                                    Remember me
                                </label>
                            </div>

                            <div>
                                <a href="#" class="txt3">
                                    Forgot Password?
                                </a>
                            </div>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" style="margin-right: 50px;">
                                Login
                            </button>
                            <a href="${registerForm_url}" style="font-style: italic; font-size: 1.5em">Register here</a>
                        </div>

                    </f:form> 
                </div>
            </div>
        </div>


        <div id="dropDownSelect1"></div>

        <!--===============================================================================================-->
        <script src="${loginRef_url}/vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="${loginRef_url}/vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="${loginRef_url}/vendor/bootstrap/js/popper.js"></script>
        <script src="${loginRef_url}/vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="${loginRef_url}/vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="${loginRef_url}/vendor/daterangepicker/moment.min.js"></script>
        <script src="${loginRef_url}/vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="${loginRef_url}/vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="${loginRef_url}/js/main.js"></script>

    </body>
</html>