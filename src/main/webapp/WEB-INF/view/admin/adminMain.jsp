<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 19:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%  pageContext.setAttribute("path", request.getContextPath()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/style.css" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/skin_/main.css" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/jquery.dialog.css" />
    <script type="text/javascript" src="/statics/admin/js/jquery.js"></script>
    <script type="text/javascript" src="/statics/admin/js/global.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $("#mainIframe").attr('src','/admin/toNavPage');
        })
    </script>
    <title>后台管理</title>
</head>

<body>
<div id="container">
    <div id="hd">
        <div class="hd-top">
            <h1 class="logo">

            </h1>

        </div>
        <div class="hd-bottom">
            <i class="home"><a href="javascript:;"></a></i>
            <div class="nav-wrap">
                <ul class="nav ue-clear">
                    <li><a href="javascript:;">平台管理</a></li>
                    <li><a href="/news/getAllNews">数据中心</a></li>
                    <li><a href="javascript:;">表单管理</a></li>
                    <li><a href="javascript:;">流程管理</a></li>
                    <li><a href="javascript:;">个人设置</a></li>
                </ul>
            </div>
            <%--<div class="nav-btn">--%>
                <%--<a href="javascript:;" class="nav-prev-btn"></a>--%>
                <%--<a href="javascript:;" class="nav-next-btn"></a>--%>
            <%--</div>--%>
        </div>
    </div>
    <div id="bd">
        <iframe width="100%" height="100%" id="mainIframe" frameborder="0"></iframe>
    </div>


</div>


</body>
<script type="text/javascript" src="/statics/admin/js/core.js"></script>
<script type="text/javascript" src="/statics/admin/js/jquery.dialog.js"></script>
<script type="text/javascript">
    $("#bd").height($(window).height()-$("#hd").outerHeight()-26);

    $(window).resize(function(e) {
        $("#bd").height($(window).height()-$("#hd").outerHeight()-26);

    });

    $('.exitDialog').Dialog({
        title:'提示信息',
        autoOpen: false,
        width:400,
        height:200
    });

    $('.exit').click(function(){
        $('.exitDialog').Dialog('open');
    });

    $('.exitDialog input[type=button]').click(function(e) {
        $('.exitDialog').Dialog('close');

        if($(this).hasClass('ok')){
            window.location.href = "login.html"	;
        }
    });

    (function(){
        var totalWidth = 0, current = 1;

        $.each($('.nav').find('li'), function(){
            totalWidth += $(this).outerWidth();
        });

        $('.nav').width(totalWidth);

        function currentLeft(){
            return -(current - 1) * 93;
        }

        $('.nav-btn a').click(function(e) {
            var tempWidth = totalWidth - ( Math.abs($('.nav').css('left').split('p')[0]) + $('.nav-wrap').width() );
            if($(this).hasClass('nav-prev-btn')){
                if( parseInt($('.nav').css('left').split('p')[0])  < 0){
                    current--;
                    Math.abs($('.nav').css('left').split('p')[0]) > 93 ? $('.nav').animate({'left': currentLeft()}, 200) : $('.nav').animate({'left': 0}, 200);
                }
            }else{

                if(tempWidth  > 0)	{

                    current++;
                    tempWidth > 93 ? $('.nav').animate({'left': currentLeft()}, 200) : $('.nav').animate({'left': $('.nav').css('left').split('p')[0]-tempWidth}, 200);
                }
            }
        });



        $.each($('.skin-opt li'),function(index, element){
            if((index + 1) % 3 == 0){
                $(this).addClass('third');
            }
            $(this).css('background',$(this).attr('attr-color'));
        });

        $('.setting-skin').click(function(e) {
            $('.skin-opt').show();
        });

        $('.skin-opt').click(function(e) {
            if($(e.target).is('li')){
                alert($(e.target).attr('attr-color'));
            }
        });

        $('.hd-top .user-info .more-info').click(function(e) {
            $(this).toggleClass('active');
            $('.user-opt').toggle();
        });

        $('.logo-icon').click(function(e) {
            $(this).toggleClass('active');
            $('.system-switch').toggle();
        });

        hideElement($('.user-opt'), $('.more-info'), function(current, target){

            $('.more-info').removeClass('active');
        });

        hideElement($('.skin-opt'), $('.switch-bar'));

        hideElement($('.system-switch'), $('.logo-icon'), function(current, target){

            $('.logo-icon').removeClass('active');
        });



    })();



</script>

</html>
