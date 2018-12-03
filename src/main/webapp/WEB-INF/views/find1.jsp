<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <title>查询</title>
    <meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0" name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    <meta name="full-screen" content="yes" />
    <meta name="x5-fullscreen" content="true" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">

    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        html, body {
            color: #333;
            margin: 0;
            height: 100%;
            font-family: "Myriad Set Pro", "Helvetica Neue", Helvetica, Arial, Verdana, sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            font-weight: normal;
        }

        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        a {
            text-decoration: none;
            color: #000;
        }

        a, label, button, input, select {
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
        }

        img {
            border: 0;
        }

        body {
            background: #fff;
            color: #666;
        }

        html, body, div, dl, dt, dd, ol, ul, li, h1, h2, h3, h4, h5, h6, p, blockquote, pre, button, fieldset, form, input, legend, textarea, th, td {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
            color: #08acee;
        }

        button {
            outline: 0;
        }

        img {
            border: 0;
        }

        button, input, optgroup, select, textarea {
            margin: 0;
            font: inherit;
            color: inherit;
            outline: none;
        }

        a {
            color: #666;
        }

        .clearfix::after {
            clear: both;
            content: ".";
            display: block;
            height: 0;
            visibility: hidden;
        }

        .clearfix {
        }

        .divHeight {
            width: 100%;
            height: 10px;
            background: #f5f5f5;
            position: relative;
            overflow: hidden;
        }

        .aui-flex-box {
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            flex: 1;
            min-width: 0;
            font-size: 14px;
            color: #333;
        }

        /* 必要布局样式css */

        .aui-flexView {
            width: 100%;
            height: 100%;
            margin: 0 auto;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-box-orient: vertical;
            -webkit-box-direction: normal;
            -webkit-flex-direction: column;
            -ms-flex-direction: column;
            flex-direction: column;
        }

        .aui-scrollView {
            width: 100%;
            height: 100%;
            -webkit-box-flex: 1;
            -webkit-flex: 1;
            -ms-flex: 1;
            flex: 1;
            overflow-y: auto;
            overflow-x: hidden;
            -webkit-overflow-scrolling: touch;
            position: relative;
            margin-top: 0;
        }

        .icon {
            width: 20px;
            height: 20px;
            display: block;
            border: none;
            float: left;
            background-size: 20px;
            background-repeat: no-repeat;
        }

        .aui-free-box {
            background: #11bf79;
            padding: 30px 18px 20px;
            width: 100%;
            height: auto;
        }

        .icon-search {
            position: absolute;
            right: 20px;
            top: 12px;
            background-image: url('data:image/png;base64,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');
        }

        .aui-free-search {
            width: 100%;
            height: 45px;
            line-height: 45px;
            background: #ffffff;
            box-shadow: 0 2px 4px #717171;
            border-radius: 3px;
            position: relative;
        }

        .aui-free-search input {
            background: none;
            border: none;
            display: block;
            width: 80%;
            font-size: 0.85rem;
            padding-left: 2.2rem;
        }
        .aui-free-search input {
            background: none;
            border: none;
            display: block;
            width: 80%;
            font-size: 0.85rem;
            padding-left: 2.2rem;
        }

        .aui-layout {
            position: relative;
            overflow: hidden;
            padding: 20px 0;
            font-family: "Adobe 宋体 Std L";
        }

        .aui-layout-item {
            width: 100%;
            position: relative;
            display: block;
            z-index: 0;
            padding: 0.32rem 0;
            padding-left: 2rem;
            font-size: 1rem;
            text-align: left;
            color: #71777d;
        }

        .aui-layout-icon {
            width: 45px;
            height: 45px;
            margin: 0 auto;
        }

        .aui-layout-icon img {
            width: 45px;
            height: 45px;
            display: block;
            border: none;
        }

        .aui-layout-text {
            color: #2b333b;
            font-size: 1.3rem;
            padding-top: 0.5rem;
        }

        .aui-layout-text em {
            color: #3a3b33;
            font-size: 1rem;
        }

        .aui-class-content {
            position: relative;
            overflow: hidden;
            background: #fff;
            padding: 15px 0;
        }

    </style>

</head>
<body onload="setTimeout(function(){window.scrollTo(0,1)},100);">

<section class="aui-flexView">
    <section class="aui-scrollView">
        <div class="aui-free-box">
            <div class="aui-free-search">
                <i class="icon icon-search" onclick="searchm()"></i>
                <input type="text" placeholder="请输入公司名称" onkeydown="onKeyDown(event)" id="search">
            </div>
        </div>
        <div class="aui-layout aui-class-content" id="showme">
            <span class="aui-layout-item">名称：<em>${name}</em></span>
            <span class="aui-layout-item">楼层：<em>${floor} 层</em></span>
            <span class="aui-layout-item">教室：<em>${room} 教室</em></span>
        </div>
    </section>
</section>


<script type="text/javascript">
function searchm() {
    window.location.href ="<%=basePath%>getcom?com="+$("#search").val();

}
</script>
</body>
</html>