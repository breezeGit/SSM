<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/22
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Album example for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <!--<link href="../../dist/css/bootstrap.min.css" rel="stylesheet">-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">


</head>

<body>

<header>
    <div class="collapse bg-dark" id="navbarHeader">
        <div class="container">
            <div class="row">
                <div class="col-sm-8 col-md-7 py-4">
                    <h4 class="text-white">About</h4>
                    <p class="text-muted">Add some information about the album below, the author, or any other
                        background context. Make it a few sentences long so folks can pick up some informative tidbits.
                        Then, link them off to some social networking sites or contact information.</p>
                </div>
                <div class="col-sm-4 offset-md-1 py-4">
                    <h4 class="text-white">Contact</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-white">Follow on Twitter</a></li>
                        <li><a href="#" class="text-white">Like on Facebook</a></li>
                        <li><a href="#" class="text-white">Email me</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="navbar navbar-dark bg-dark shadow-sm">
        <div class="container d-flex justify-content-between">
            <a href="#" class="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none"
                     stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2">
                    <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path>
                    <circle cx="12" cy="13" r="4"></circle>
                </svg>
                <strong>Album</strong>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader"
                    aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
        </div>
    </div>
</header>

<main role="main">
    <!--大封面-->
    <section class="jumbotron text-center">
        <div class="container">
            <h1 class="jumbotron-heading">Album example</h1>
            <p class="lead text-muted">Something short and leading about the collection below—its contents,
                the creator, etc. Make it short and sweet, but not too short so folks don't simply
                skip over it entirely.</p>
            <p>
                <a href="#" class="btn btn-primary my-2">Main call to action</a>
                <a href="#" class="btn btn-secondary my-2">Secondary action</a>
            </p>
        </div>
    </section>

    <!--新闻列表-->
    <div class="jumbotron bg-light">
        <div class="container">
            <c:forEach items="${newsList}" var="news">
                <div class="row">
                    <div class="col-md-1 m-auto text-success">
                        <h1>31</h1>
                    </div>

                    <div class="col-md-1">
                        <p>August</p>
                        <p>Friday</p>
                    </div>

                    <div class="col-md-3 m-auto">
                        <img class="card-img"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             >
                    </div>

                    <div class="col-md-6 m-auto">
                        <h2>${news.news_title}</h2>
                        <p>${news.news_content}</p>
                        <p><fmt:formatDate value="${news.news_date}" type="date" pattern="yyyy-MM-dd HH:mm"/></p>
                    </div>

                    <div class="col-md-1 m-auto">
                        <button type="button" class="btn btn-sm btn-primary my-2 m-auto">Read More</button>
                    </div>
                </div>
                <hr/>
            </c:forEach>
        </div>
    </div>

    <div class="album py-5 bg-light">
        <div class="container">

            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <img class="card-img-top"
                             src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540195274&di=8728cffe1739b686c8d56220e17d7251&imgtype=jpg&er=1&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F014a665a4fa0a7a8012180c566f6a7.jpg%401280w_1l_2o_100sh.jpg"
                             alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                                additional content. This content is a little bit longer.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                                    <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                                </div>
                                <small class="text-muted">9 mins</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</main>

<footer class="text-muted">
    <div class="container">
        <p class="float-right">
            <a href="#">Back to top</a>
        </p>
        <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
        <p>New to Bootstrap? <a href="../../">Visit the homepage</a> or read our <a href="../../getting-started/">getting
            started guide</a>.</p>
    </div>
</footer>

<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
        integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
        integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>
</body>
</html>

