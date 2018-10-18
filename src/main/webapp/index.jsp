<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 11:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<%  pageContext.setAttribute("path", request.getContextPath()); %>


<!DOCTYPE htm >
<html>
<head>
    <title>我的JavaEE系统</title>
    <style type="text/css">
        a {
            text-decoration: none;
            color: #fff;
            font-size: 14px;
        }

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: #5BC0DE;
            border-radius: 4px;
        }
    </style>
</head>
<body>
    <h1>Hello JavaEE</h1>
    <h3>
        <a href="${path }/admin/toAdminMain">进入用户管理页</a>
    </h3>
</body>
</html>
