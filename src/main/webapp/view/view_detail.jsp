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
    <link rel="stylesheet" href="/assets/css/view_home.css">
    <link rel="stylesheet" href="/assets/css/view_detail.css">

    <script src="/assets/js/main.js"></script>
    <script src="//cdn.ckeditor.com/4.17.2/basic/ckeditor.js"></script>

    <title>Get High 4rum</title>
</head>
<body>

<div id="header">
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                    data-target="#navbarAdmin" aria-controls="navbarAdmin" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="#">
                <img class="logo__image" src="/assets/anh/anh_avatar.png" alt="Avatar Image">
            </a>

            <div class="collapse navbar-collapse" id="navbarAdmin">
                <ul class="navbar-nav ml-auto">

                    <li class="nav-item">
                        <a class="nav-link" href="#top">Register</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#top">Login</a>
                    </li>

                    <li class="nav-item dropdown d-sm-block d-md-block d-lg-none">
                        <a class="nav-link dropdown-toggle" href="#" id="smallerscreenmenu" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"> Posts </a>
                        <div class="dropdown-menu" aria-labelledby="smallerscreenmenu">
                            <a class="dropdown-item" href="#top">News</a>
                            <a class="dropdown-item" href="#top">Culinary</a>
                            <a class="dropdown-item" href="#top">Tourism</a>
                            <a class="dropdown-item" href="#top">F17 Voz</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown d-sm-block d-md-block d-lg-none">
                        <a class="nav-link dropdown-toggle" href="#" id="profilemenu" data-toggle="dropdown"
                           aria-haspopup="true" aria-expanded="false"> Profile </a>
                        <div class="dropdown-menu" aria-labelledby="profilemenu">
                            <a class="dropdown-item" href="#top">My Posts</a>
                            <a class="dropdown-item" href="#top">Logout</a>
                        </div>
                    </li>

                    <li class="nav-item dropdown d-sm-block d-md-block d-lg-none">
                        <form class="nav-link d-flex">
                            <input class="form-control mr-2" type="text" placeholder="Search">
                            <button class="btn btn-light ml-2" type="button" href="">Search</button>
                        </form>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</div>
<div id="body" class="m-4">
    <div class="container">
        <div class="row" id="body-row">
            <div id="sidebar-container" class="col-lg-3 sidebar-expanded d-none d-md-none d-lg-block">
                <ul class="list-group">
                    <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                        <small>MAIN MENU</small>
                    </li>

                    <a href="/user" class="bg-dark list-group-item list-group-item-action">
                        <div class="d-flex w-100 justify-content-start align-items-center">
                            <span class="fas fa-tasks fa-fw mr-3"></span>
                            <span class="menu-collapsed">Home</span>
                        </div>
                    </a>

                    <a href="#submenu2" data-toggle="collapse" aria-expanded="false"
                       class="bg-dark list-group-item list-group-item-action flex-column align-items-start">
                        <div class="d-flex w-100 justify-content-start align-items-center">
                            <span class="fas fa-user fa-fw mr-3"></span>
                            <span class="menu-collapsed">Profile</span>
                            <span class="fas fa-angle-down ml-auto"></span>
                        </div>
                    </a>
                    <div id='submenu2' class="collapse sidebar-submenu">
                        <a href="/user?action=displayPostById_Account" class="list-group-item list-group-item-action bg-dark text-white">
                            <span class="menu-collapsed">My Posts</span>
                        </a>
                        <a href="/user?action=createGet_Post" class="list-group-item list-group-item-action bg-dark text-white">
                            <span class="menu-collapsed">New Post</span>
                        </a>
                        <a href="#" class="list-group-item list-group-item-action bg-dark text-white">
                            <span class="menu-collapsed">Logout</span>
                        </a>
                    </div>

                    <div class="bg-dark list-group-item d-flex w-100 justify-content-start align-items-center">
                        <span class="search__icon fas fa-search fa-fw mr-3"></span>

                        <form action="/user?action=searchPostByTitleOrCategory" method="post" class="d-flex">
                            <button class="btn btn-light mr-lg-3 mr-md-2" type="submit" >Search</button>
                            <input class="form-control" name="search" type="text" placeholder="Search">
                        </form>
                    </div>
                </ul>
            </div>

            <div class="col-lg-9 col-md-12">
                <h2 class="display-4">Get High 4rum</h2>
                <div class="card" >
                    <div class="card-header font-weight-light">
                        <div class="row">
                            <div class="col-lg-8">
                                <p class="font-weight-light">Author: <span class="font-weight-light">${post.getAuthor()}</span></p>
                            </div>
                            <div class="col-lg-4 text-right small">
                                <p class="font-weight-light">Date Created: <span class="font-weight-light">${post.getDate_created()}</span> </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-8">
                                <h5 class="font-weight-light">Title: <span class="font-weight-light">${post.getTitle()}</span></h5>
                            </div>
                            <div class="col-lg-4 text-right small">
                                <p class="font-weight-light">Category: <span class="font-weight-light">${post.getCategory()}</span> </p>
                            </div>
                        </div>

                    </div>
                    <div class="card-body">
                        <div class="card__post row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                <p>${post.getContent()}</p>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="card" >
                    <h5 class="card-header font-weight-light">Comment</h5>
                    <div class="card-body">

                        <div class="card__post row">
                            <div class="col-lg-10 col-md-8 col-sm-12">
                                    <p class="font-weight-light">Lorem Ipsum is simply dummy text of the printing and typesetting industry  Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
                            </div>
                            <div class="col-lg-2 col-md-4 col-sm-12">
                                <span class="font-weight-light align-middle comment_username">Tác giả</span>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="card" >
                    <h5 class="card-header font-weight-light">New Comment</h5>
                    <div class="card-body">

                        <form action="" method="POST">

                            <div class="form-group">
                                <label for="new_comment"></label>
                                <textarea name="content" id="new_comment"></textarea>
                                <script>CKEDITOR.replace('content');</script>
                            </div>

                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">
                                    Create
                                </button>
                                <button class="btn btn-default">
                                    Cancel
                                </button>
                            </div>
                        </form>

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
