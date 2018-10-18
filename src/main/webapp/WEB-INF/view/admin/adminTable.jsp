<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/11
  Time: 19:52
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
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/WdatePicker.css" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/skin_/table.css" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/jquery.grid.css" />
    <link rel="stylesheet" type="text/css" href="/statics/admin/css/bootstrap.min.css" />


    <title>表格</title>
</head>

<body style="overflow:-Scroll;overflow-x:hidden">
<div id="container">
    <div id="hd"></div>
    <div id="bd">
        <div id="main">
            <div class="search-box ue-clear">
                <div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time"  checked="checked" value="1"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" value="2" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" value="3" />
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" value="0"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                        </div>
                    </div>
                    <%--<div class="kv-item ue-clear">--%>
                        <%--<label>选择类型:</label>--%>
                        <%--<div class="kv-item-content">--%>
                            <%--<select>--%>
                                <%--<option>全部</option>--%>
                                <%--<option>全部</option>--%>
                                <%--<option>全部</option>--%>
                            <%--</select>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                </div>
                <div class="search-button">
                    <input class="button" type="button" value="搜索一下" id="btnSearch"/>
                </div>


            </div>


            <div class="table">

                <table class="table" id="news_table">
                    <thead class="ui-table-thead">
                    <tr>
                        <th scope="col" class="text-center">编号</th>
                        <th scope="col" class="text-center">标题</th>
                        <th scope="col" class="text-center">内容</th>
                        <th scope="col" class="text-center">发布时间</th>
                        <th scope="col" class="text-center">图片</th>
                        <th scope="col" class="text-center">操作</th>
                    </tr>
                    </thead>
                    <tbody>

                    </tbody>

                </table>

            </div>
            <hr />
            <!-- 分页 -->
            <div class="row" id="news_pagenation">
                <div class="col-md-6" align="center" id="page_xinxi"></div>
                <div class="col-md-6" align="center" id="page_fenyetiao"></div>
            </div>
        </div>

        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="/statics/admin/js/jquery.js"></script>
<script type="text/javascript" src="/statics/admin/js/global.js"></script>
<script type="text/javascript" src="/statics/admin/js/jquery.select.js"></script>
<script type="text/javascript" src="/statics/admin/js/core.js"></script>
<script type="text/javascript" src="/statics/admin/js/jquery.pagination.js"></script>
<script type="text/javascript" src="/statics/admin/js/jquery.grid.js"></script>
<script type="text/javascript" src="/statics/admin/js/WdatePicker.js"></script>
<script type="text/javascript" src="/statics/admin/js/adminTable.js"></script>
</html>

