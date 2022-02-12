<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" type="image/png" href="/assets/anh/anh_avatar.png"/>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
          integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css"
          integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="/assets/css/header_footer.css">
    <link rel="stylesheet" href="/assets/css/base.css">

    <script src="/assets/js/main.js"></script>
    <title>Get High 4rum</title>
</head>
<body>

<div id="header">
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarAdmin" aria-controls="navbarAdmin" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="/user">
                <img class="logo__image" src="/assets/anh/anh_avatar.png" alt="Avatar Image">
            </a>

            <div class="collapse navbar-collapse" id="navbarAdmin">
                <ul class="navbar-nav ml-auto">

                    <c:if test="${account == null}">
                        <li class="nav-item">
                            <a class="nav-link" href="/login?action=registerGet">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/login?action=loginGet">Login</a>
                        </li>
                    </c:if>

                    <c:if test="${account != null}">
                        <li class="nav-item">
                            <span class="nav-link"><c:out value="${account.getUsername()}"></c:out></span>
                        </li>
                    </c:if>

                    <li class="nav-item dropdown d-sm-block d-md-none d-lg-none">
                        <a class="nav-link dropdown-toggle" href="#" id="smallerscreenmenu" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"> Posts </a>
                        <div class="dropdown-menu" aria-labelledby="smallerscreenmenu">
                            <a class="dropdown-item" href="${pageContext.request.contextPath}/admin?action=displayAllPost<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>">All posts</a>
                            <c:forEach items="${categoryList}" var="category">
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/admin?action=displayPostById_category&id=${category.getId_category()}<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>">
                                        ${category.getName_category()}
                                </a>
                            </c:forEach>
                        </div>
                    </li>

                    <c:if test="${account != null}">
                        <li class="nav-item dropdown d-sm-block d-md-none d-lg-none">
                            <a class="nav-link dropdown-toggle" href="#" id="profilemenu" data-toggle="dropdown"
                               aria-haspopup="true" aria-expanded="false"> Profile </a>
                            <div class="dropdown-menu" aria-labelledby="profilemenu">
                                <a class="dropdown-item" href="/login?action=logout">Logout</a>
                            </div>
                        </li>
                    </c:if>


                </ul>
            </div>
        </div>
    </nav>
</div>
<div id="body" class="m-4">
    <div class="container">
        <div class="row" id="body-row">
            <div id="sidebar-container" class="col-lg-3 col-md-4 sidebar-expanded d-none d-md-block d-lg-block">
                <ul class="list-group">
                    <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                        <small>MAIN MENU</small>
                    </li>

                    <a href="${pageContext.request.contextPath}/admin<c:if test="${account != null}">?account_id=${requestScope['account'].getId_account()}</c:if>" class="bg-dark list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-start align-items-center">
                            <span class="fas fa-tasks fa-fw mr-3"></span>
                            <span class="menu-collapsed">Home</span>
                        </div>
                    </a>

                    <a href="#submenu1" data-toggle="collapse" aria-expanded="false"
                       class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
                        <div class="d-flex w-100 justyfy-content-start align-items-center">
                            <span class="far fa-newspaper mr-3"></span>
                            <span class="menu-collapsed">Post</span>
                            <span class="fas fa-angle-down ml-auto"></span>
                        </div>
                    </a>
                    <div id="submenu1" class="collapse sidebar-submenu">
                        <a href="${pageContext.request.contextPath}/admin?action=displayAllPost<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>" class="list-group-item list-group-item-action bg-dark text-white">
                            <span class="menu-collapsed">All Post</span>
                        </a>
                        <c:forEach items="${categoryList}" var="category">
                            <a href="${pageContext.request.contextPath}/admin?action=displayPostById_category&id=${category.getId_category()}<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>" class="list-group-item list-group-item-action bg-dark text-white">
                                <span class="menu-collapsed"><c:out value="${category.getName_category()}"></c:out></span>
                            </a>
                        </c:forEach>
                    </div>

                    <a href="#submenu2" data-toggle="collapse" aria-expanded="false"
                       class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
                        <div class="d-flex w-100 justyfy-content-start align-items-center">
                            <span class="far fa-newspaper mr-3"></span>
                            <span class="menu-collapsed">Category</span>
                            <span class="fas fa-angle-down ml-auto"></span>
                        </div>
                    </a>
                    <div id="submenu2" class="collapse sidebar-submenu">
                        <a href="${pageContext.request.contextPath}/admin?action=displayCategory<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>" class="list-group-item list-group-item-action bg-dark text-white">
                            <span class="menu-collapsed">All Category</span>
                        </a>
                        <a href="${pageContext.request.contextPath}/admin?action=createGet_Category<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>" class="list-group-item list-group-item-action bg-dark text-white">
                            <span class="menu-collapsed">Create New</span>
                        </a>
                    </div>

                    <c:if test="${account != null}">
                        <a href="#submenu3" data-toggle="collapse" aria-expanded="false"
                           class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
                            <div class="d-flex w-100 justify-content-start align-items-center">
                                <span class="fas fa-user fa-fw mr-3"></span>
                                <span class="menu-collapsed">Profile</span>
                                <span class="fas fa-angle-down ml-auto"></span>
                            </div>
                        </a>
                        <div id='submenu3' class="collapse sidebar-submenu">
                            <a href="/login?action=logout" class="list-group-item list-group-item-action bg-dark text-white">
                                <span class="menu-collapsed">Logout</span>
                            </a>
                        </div>
                    </c:if>

                </ul>
            </div>

            <div class="col-lg-9 offset-lg-3 col-md-12">
                <h1 class="display-4">Get High 4rum</h1>
                <div class="card">
                    <h5 class="card-header font-weight-light"> All Category </h5>
                    <div class="card-body row">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Description</th>
                                    <th colspan="2">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${categoryList}" var="account">
                                    <tr>
                                        <td>${account.getId_category()}</td>
                                        <td>${account.getName_category()}</td>
                                        <td>${account.getDescription()}</td>
                                        <td>
                                            <button type="button" class="btn btn-outline-danger">
                                                <a href="${pageContext.request.contextPath}/admin?action=editGet_Category&id=${account.getId_category()}<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>">Edit</a>
                                            </button>
                                        </td>
                                        <td>
                                            <button type="button" class="btn btn-outline-danger">
                                                <a href="${pageContext.request.contextPath}/admin?action=deleteCategory&id=${account.getId_category()}<c:if test="${account != null}">&account_id=${requestScope['account'].getId_account()}</c:if>">Delete</a>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                    </div>
                </div>

            </div>
        </div>

    </div>
</div>

<div id="footer">

</div>

</body>

</html>
