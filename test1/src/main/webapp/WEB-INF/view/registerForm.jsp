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
<s:url value="/index" var="loginForm_url"/>
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
        <s:url value="/static/js/jquery-3.3.1.min.js" var="jquery_url"/>
        <script src="${jquery_url}"></script>
        <script>
            $(document).ready(function () {
                $("#id_btnCheckUsername").click(function () {
                    $.ajax({
                        url: 'checkUsername',
                        data: {username: $("#id_inputUsername").val()},
                        success: function (data) {
                            if (data == 0) {
                                $("#id_msgCheckUsername").html("That username is taken. Try another.");
                            } else {
                                $("#id_msgCheckUsername").html("OK. You can use this one.");
                            }
                        }
                    });
                });
            });
        </script>
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100" style="background-image: url(${pageContext.request.contextPath}/static/image/background1.jpg);  background-size: cover;">
                <div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">

                    <c:if test="${not empty err}">
                        <p class="error">${err}</p>
                    </c:if>
                    <f:errors path="name" cssClass="error"/>
                    <f:form action="registerProcess" modelAttribute="command" method="post" cssClass="login100-form validate-form flex-sb flex-w">
                        <span class="login100-form-title p-b-32">
                            Account Registration
                        </span>
                        <!--name-->
                        <f:errors path="name" cssClass="error"/>
                        <span class="txt1 p-b-11">
                            Name
                        </span>
                        <div class="wrap-input100 m-b-36">
                            <f:input cssClass="input100" path="name" />
                            <span class="focus-input100"></span>
                        </div>

                        <!--end name-->

                        <!--username-->
                        <f:errors path="loginName" cssClass="error"/>
                        <div class="success" id="id_msgCheckUsername"></div>
                        <span class="txt1 p-b-11">
                            Username
                        </span>
                        <div class="wrap-input100 m-b-36">

                            <button type="button" class="btn btn-danger" id="id_btnCheckUsername">Check username</button>

                            <f:input cssClass="input100" path="loginName" id="id_inputUsername"/>
                            <span class="focus-input100"></span>
                        </div>


                        <!--end username-->

                        <!--email-->
                        <f:errors path="email" cssClass="error"/>
                        <span class="txt1 p-b-11">
                            Email
                        </span>
                        <div class="wrap-input100 m-b-36">
                            <f:input cssClass="input100" path="email" />
                            <span class="focus-input100"></span>
                        </div>

                        <!--end email-->

                        <!--phone-->
                        <f:errors path="phone" cssClass="error"/>
                        <span class="txt1 p-b-11">
                            Phone
                        </span>
                        <div class="wrap-input100 m-b-36">
                            <f:input cssClass="input100" path="phone" />
                            <span class="focus-input100"></span>
                        </div>

                        <!--end phone-->

                        <!--Address-->
                        <f:errors path="address" cssClass="error"/>
                        <span class="txt1 p-b-11">
                            Address
                        </span>
                        <div class="wrap-input100 m-b-36">
                            <f:input cssClass="input100" path="address" />
                            <span class="focus-input100"></span>
                        </div>
                        <f:errors path="address" cssClass="error"/>
                        <!--end address-->

                        <!--password-->
                        <f:errors path="password" cssClass="error"/>
                        <span class="txt1 p-b-11">
                            Password
                        </span>
                        <div class="wrap-input100 m-b-12">
                            <span class="btn-show-pass">
                                <i class="fa fa-eye"></i>
                            </span>
                            <f:password cssClass="input100" path="password" />
                            <span class="focus-input100"></span>
                        </div>

                        <!--end password-->

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn" style="margin-right: 50px">
                                Register
                            </button>
                            <a href="${loginForm_url}" style="font-style: italic; font-size: 1.5em">Login here</a>

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
