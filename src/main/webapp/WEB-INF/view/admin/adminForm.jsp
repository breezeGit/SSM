<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% pageContext.setAttribute("path", request.getContextPath()); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/WdatePicker.css"/>
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/skin_/form.css"/>
    <title>基础信息</title>
</head>

<body>
<div id="container">
    <div id="hd">
    </div>
    <div id="bd">
        <div id="main">
            <h2 class="subfild">
                <span>基本信息</span>
            </h2>
            <div class="subfild-content base-info">
                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>文章标题</label>
                    <div class="kv-item-content">
                        <input type="text" placeholder="文章标题"/>
                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div>
                <div class="kv-item ue-clear time">
                    <label><span class="impInfo">*</span>发布时间</label>
                    <div class="kv-item-content">
                        <input type="text" placeholder="文章标题" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})"/>
                        <i class="time-icon"></i>
                    </div>
                    <span class="kv-item-tip error" style="display:none;">这是一个错误信息</span>
                </div>

                <div class="kv-item ue-clear">
                    <label>所在栏目</label>
                    <div class="kv-item-content">
                        <select>
                            <option>新闻资讯</option>
                            <option>新闻资讯</option>
                            <option>新闻资讯</option>
                        </select>
                    </div>
                    <span class="kv-item-tip success" style="display:none;">成功信息</span>
                </div>

                <div class="kv-item ue-clear">
                    <label>是否审核</label>
                    <div class="kv-item-content">
                    	<span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">是</span>
                        </span>
                        <span class="choose">
                            <span class="checkboxouter">
                                <input type="radio" name="need"/>
                                <span class="radio"></span>
                            </span>
                            <span class="text">否</span>
                        </span>

                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div>


                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>缩略图</label>
                    <div class="kv-item-content file">
                        <span class="text"></span>
                        <input type="file"/>
                        <input type="button" class="button normal long2" value="浏览.."/>
                    </div>
                    <span class="kv-item-tip">标题字数限制在35个字符</span>
                </div>
            </div>

            <h2 class="subfild">
                <span>备注资料</span>
            </h2>

            <div class="subfild-content remarkes-info">
                <div class="kv-item ue-clear">
                    <label><span class="impInfo">*</span>文章内容</label>
                    <div class="kv-item-content">
                        <textarea placeholder="文章内容" id="content" style="width:800px;height:240px;"></textarea>
                    </div>
                </div>
            </div>

            <div class="buttons">
                <input class="button" type="button" value="确认发布"/>
            </div>
        </div>
    </div>
</div>
</body>

</html>
