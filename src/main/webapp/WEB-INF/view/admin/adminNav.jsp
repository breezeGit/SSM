<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 19:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/style.css" />
    <link rel="stylesheet" href="/statics/admin/css/zTreeStyle/zTreeStyle.css" type="text/css">
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/skin_/nav.css" />
    <script type="text/javascript" src="/statics/admin/js/jquery.js"></script>
    <script type="text/javascript" src="/statics/admin/js/global.js"></script>
    <title>底部内容页</title>
</head>

<body>
<div id="container">
    <div id="bd">
        <div class="sidebar">
            <div class="sidebar-bg"></div>
            <ul class="nav">
                <li class="nav-li">
                    <a href="javascript:;" class="ue-clear"><i class="nav-ivon"></i><span class="nav-text">新闻管理</span></a>
                    <ul class="subnav">
                        <li class="subnav-li" href="/admin/toNewsListPage" data-id="1"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">管理新闻</span></a></li>
                        <li class="subnav-li" href="/admin/toNewsEditPage" data-id="2"><a href="javascript:;" class="ue-clear"><i class="subnav-icon"></i><span class="subnav-text">编辑新闻</span></a></li>
                    </ul>
                </li>

            </ul>
            <div class="tree-list outwindow">
                <div class="tree ztree"></div>
            </div>
        </div>
        <div class="main">
            <div class="title">
                <i class="sidebar-show"></i>
                <ul class="tab ue-clear">

                </ul>
                <i class="tab-more"></i>
            </div>
            <div class="content">
            </div>
        </div>
    </div>
</div>

<div class="more-bab-list">
    <ul></ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-bl"></div>
</div>
</body>
<script type="text/javascript" src="/statics/admin/js/nav.js"></script>
<script type="text/javascript" src="/statics/admin/js/Menu.js"></script>
<script type="text/javascript" src="/statics/admin/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript">
    var menu = new Menu({
        defaultSelect: $('.nav').find('li[data-id="1"]')
    });

    // 左侧树结构加载
    var setting = {};

    var zNodes =[
        { name:"新闻管理",
            children: [
                { name:"管理新闻",icon:'/statics/admin/img/skin_/leftlist.png'},
                { name:"编辑新闻",icon:'/statics/admin/img/skin_/leftlist.png'}
            ]}
    ];

    $.fn.zTree.init($(".tree"), setting, zNodes);


    $('.sidebar h2').click(function(e) {
        $('.tree-list').toggleClass('outwindow');
        $('.nav').toggleClass('outwindow');
    });

    $(document).click(function(e) {
        if(!$(e.target).is('.tab-more')){
            $('.tab-more').removeClass('active');
            $('.more-bab-list').hide();
        }
    });
</script>
</html>
