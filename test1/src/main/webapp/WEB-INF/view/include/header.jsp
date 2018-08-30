<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>

<s:url value="/logout" var="logout_url"/>
<s:url value="/registerForm" var="registerForm_url"/>
<s:url value="/user/saveContactForm" var="saveContactForm_url"/>
<s:url value="/user/clist" var="clist_url"/>
<s:url value="/admin/vlist" var="vlist_url"/>
<s:url value="/index" var="login_url"/>
<container>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Contact Management</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <c:if test="${empty sessionScope.USER}">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${login_url}">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${registerForm_url}">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Help</a>
                    </li>

                </ul>
            </c:if>
            <c:if test="${sessionScope.USER.role eq 2}">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${saveContactForm_url}">Add contact</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${clist_url}">Contact list</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${logout_url}">Logout</a>
                    </li>

                </ul>
            </c:if>
            <c:if test="${sessionScope.USER.role eq 1}">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${vlist_url}">User list</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="${logout_url}">Logout</a>
                    </li>
                </c:if>
        </div>
    </nav>
</container>