<%-- 
    Document   : dashboard_user2
    Created on : Aug 28, 2018, 10:48:04 PM
    Author     : nguyenducthanh
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
        <!--het leftpanel-->
        <!--rightpanel-->

            <!--header va tieu de-->
            <!--het header va tieu de-->


                <!--content-->
                <div class="form-inline">
                    <form class="search-form" action="searchContact" method="get">
                        <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search" name="searchValue" value="${param.searchValue}" >
                        <button><i class="fa fa-search"></i></button>
                        <!--<input type="submit" value="Search" />-->   
                    </form>
                </div>
                <c:if test="${param.act eq 'saved'}">
                    <p class="success">Save contact successfully</p>
                </c:if>
                <c:if test="${param.act eq 'deleted'}">
                    <p class="success">Delete contact successfully</p>
                </c:if>
                <c:if test="${not empty err}">
                    <p class="success">${err}</p>
                </c:if>

                <c:if test="${not empty listContact}">
                    <div style="overflow-x:auto;"> 
                        <table class="table table-striped table_scroll">
                            <thead>
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Address</th>
                                    <th>
                                        <a href="#" id="id_submitFormDelelteAll">DELETE</a>
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                            <form action="multipleDelete" method="post" id="id_FormDeleteAll">
                                <c:forEach items="${listContact}" var="row" varStatus="counter">
                                    <tr>
                                        <s:url value="/user/prepare_edit" var="edit_link">
                                            <s:param name="contactId" value="${row.contactId}"/>
                                        </s:url>
                                        <th scope="row"><a href="${edit_link}">${counter.count}</a>
                                        </th>
                                        <td>
                                            ${row.name}
                                        </td>
                                        <td>
                                            ${row.phone}
                                        </td>
                                        <td>
                                            ${row.email}
                                        </td>
                                        <td>
                                            ${row.address}
                                        </td>
                                        <td><input type="checkbox" name="mulDelValue" value="${row.contactId}"/></td>
                                    </tr>
                                </c:forEach>
                            </form>
                            </tbody>
                        </table>
                    </div>
                </c:if>

                <c:if test="${empty listContact}">
                    <h3>No contact found</h3>
                </c:if>      
                ${sessionScope.USER.name}
                <!--het content-->


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