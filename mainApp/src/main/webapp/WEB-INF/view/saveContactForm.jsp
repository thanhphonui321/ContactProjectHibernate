<%-- 
    Document   : dashboard_user2
    Created on : Aug 28, 2018, 10:48:04 PM
    Author     : nguyenducthanh
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" %>
<s:url value="/registerForm" var="registerForm_url"/>
<s:url value="/static/userRef" var="userRef_url"/>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>User dashboard</title>
        <meta name="description" content="Contact Management">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="apple-icon.png">
        <link rel="shortcut icon" href="favicon.ico">

        <link rel="stylesheet" href="${userRef_url}/assets/css/normalize.css">
        <link rel="stylesheet" href="${userRef_url}/assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="${userRef_url}/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="${userRef_url}/assets/css/themify-icons.css">
        <link rel="stylesheet" href="${userRef_url}/assets/css/flag-icon.min.css">
        <link rel="stylesheet" href="${userRef_url}/assets/css/cs-skin-elastic.css">
        <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
        <link rel="stylesheet" href="${userRef_url}/assets/scss/style.css">
        <link href="${userRef_url}/assets/css/lib/vector-map/jqvmap.min.css" rel="stylesheet">

        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <!--my Css-->
        <link href="${pageContext.request.contextPath}/static/css/style.css" rel="stylesheet" type="text/css"/>
        <script>
        </script>
    </head>
    <body>
        <!--leftPanel-->
        <jsp:include page="include/leftPanel.jsp"/>  
        <!--het leftpanel-->
        <!--rightpanel-->
        <div id="right-panel" class="right-panel">

            <!--header va tieu de-->
            <jsp:include page="include/header.jsp"/>  
            <!--het header va tieu de-->


            <div class="content mt-3">
                <!--content-->
                <c:if test="${not empty err}">
                    <p class="error">${err}</p>
                </c:if>
                <f:form action="saveContactProcess" modelAttribute="command" method="post">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="id_name">Name</label>
                            <f:input path="name" cssClass="form-control" id="id_name" placeholder="Name"/>
                            <f:errors path="name" cssClass="error"/>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="id_phone">Phone</label>
                            <f:input path="phone" cssClass="form-control" id="id_phone" placeholder="Phone"/>
                            <f:errors path="phone" cssClass="error"/>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="id_email">Email</label>
                            <f:input path="email" cssClass="form-control" id="id_email" placeholder="Email"/>
                            <f:errors path="email" cssClass="error"/>
                        </div> 
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="id_address">Address</label>
                            <f:textarea path="address" rows="3" cssClass="form-control" id="id_address" placeholder="Address"/>

                        </div> 
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <label for="id_Remark">Remark</label>
                            <f:textarea path="remark" rows="3" cssClass="form-control" id="id_remark" placeholder="Remark"/>
                        </div> 
                    </div>
                    <button type="submit" class="btn btn-primary">Save</button>
                </f:form>
                <!--het content-->
            </div>


        </div>
        <!--het rightpanel-->

        <script src="${userRef_url}/assets/js/vendor/jquery-2.1.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
        <script src="${userRef_url}/assets/js/plugins.js"></script>
        <script src="${userRef_url}/assets/js/main.js"></script>


        <script src="${userRef_url}/assets/js/lib/chart-js/Chart.bundle.js"></script>
        <script src="${userRef_url}/assets/js/dashboard.js"></script>
        <script src="${userRef_url}/assets/js/widgets.js"></script>
        <script src="${userRef_url}/assets/js/lib/vector-map/jquery.vmap.js"></script>
        <script src="${userRef_url}/assets/js/lib/vector-map/jquery.vmap.min.js"></script>
        <script src="${userRef_url}/assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
        <script src="${userRef_url}/assets/js/lib/vector-map/country/jquery.vmap.world.js"></script>
        <script>
            (function ($) {
                "use strict";

                jQuery('#vmap').vectorMap({
                    map: 'world_en',
                    backgroundColor: null,
                    color: '#ffffff',
                    hoverOpacity: 0.7,
                    selectedColor: '#1de9b6',
                    enableZoom: true,
                    showTooltip: true,
                    values: sample_data,
                    scaleColors: ['#1de9b6', '#03a9f5'],
                    normalizeFunction: 'polynomial'
                });
            })(jQuery);
        </script>
        <!--my Script-->
        <script src="${userRef_url}/myJs/myJs.js">

        </script>


    </body>
</html>