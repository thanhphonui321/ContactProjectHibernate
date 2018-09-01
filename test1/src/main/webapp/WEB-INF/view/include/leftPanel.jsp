
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<s:url value="/static/userRef" var="userRef_url"/>


<s:url value="/logout" var="logout_url"/> 


<aside id="left-panel" class="left-panel">
    <nav class="navbar navbar-expand-sm navbar-default">

        <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-menu" aria-controls="main-menu" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="./"><img src="${userRef_url}/images/logo.png" alt="Logo"></a>
            <a class="navbar-brand hidden" href="./"><img src="${userRef_url}/images/logo2.png" alt="Logo"></a>
        </div>
        <!--Neu la user thuong-->
        <c:if test="${sessionScope.USER.role eq 2}">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <h3 class="menu-title">Contact Management</h3><!-- /.menu-title -->
                    <li><a href="clist"> <i class="menu-icon fa fa-dashboard"></i>List Contact</a></li>
                    <li><a href="saveContactForm"> <i class="menu-icon fa fa-dashboard"></i>Add Contact</a></li>
                    <h3 class="menu-title">Account Management</h3><!-- /.menu-title -->
                    <li><a href="#"> <i class="menu-icon fa fa-dashboard"></i>Profile Edit</a></li>
                    <li><a href="${logout_url}"> <i class="menu-icon fa fa-dashboard"></i>Logout</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </c:if>
        <!--neu la admin-->
        <c:if test="${sessionScope.USER.role eq 1}">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <h3 class="menu-title">User Management</h3><!-- /.menu-title -->
                    <li><a href="vlist"> <i class="menu-icon fa fa-dashboard"></i>List User</a></li>
                    <li><a href="#"> <i class="menu-icon fa fa-dashboard"></i>Blocked User</a></li>
                    <h3 class="menu-title">Account Management</h3><!-- /.menu-title -->
                    <li><a href="#"> <i class="menu-icon fa fa-dashboard"></i>Profile Edit</a></li>
                    <li><a href="${logout_url}"> <i class="menu-icon fa fa-dashboard"></i>Logout</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </c:if>
    </nav>
</aside><!-- /#left-panel -->