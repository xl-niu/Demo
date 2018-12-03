<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Index</title>
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0, minimum-scale=0.5, maximum-scale=2.0, user-scalable=yes"/>
    <script src="<c:url value="/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/js/screen.js"/>"></script>
    <script src="<c:url value="/js/index.js"/>"></script>
    <script src="<c:url value="/js/customProgress.js"/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/myBootstrap.css"/> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/base_css.css"/> "/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/progressStyle.css"/> "/>
    <%--<script src="<c:url value="/bootstrap-3.3.7-dist/js/bootstrap.min.js"/>"></script>--%>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-12 text-center"><h1><span class="title">${data.get("title")}</span>车间整体情况</h1></div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <ul>
                <li>车轮工段在制：车轮${data.get("clgd")}片</li>
                <li>喷漆间在制：车轮${data.get("pqj_l")}片、车轴${data.get("pqj_z")}根</li>
                <li>原材料库：车轮${data.get("ycl_l")}片、车轴${data.get("ycl_z")}根</li>
                <li>车轴工段在制：${data.get("czgd")}根</li>
                <li>制动盘组装：车轮${data.get("zdp")}片</li>
                <li>半成品库：车轮${data.get("bcp_l")}片、车轴${data.get("bcp_l")}根</li>
                <li>组装工段在制：车轮${data.get("zzgd_l")}片、车轴${data.get("zzgd_z")}根</li>
                <li>现场库：车轮${data.get("xck_l")}片、车轴${data.get("xck_z")}根</li>
                <li>成品库：轮对${data.get("cpk")}条</li>
            </ul>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="bacontainer">
                <div id="zzgd" class="zzgd gd" onclick="domclick(this)">组<br>装<br>工<br>段</div>
                <div id="clgd" class="clgd gd" onclick="domclick(this)">车&nbsp;&nbsp;轮&nbsp;&nbsp;工&nbsp;&nbsp;段</div>
                <div id="czgd" class="czgd gd" onclick="domclick(this)">车&nbsp;&nbsp;轴&nbsp;&nbsp;工&nbsp;&nbsp;段</div>
                <div id="yclk" class="yclk gd" onclick="domclick(this)">原<br>材<br>料<br>库</div>
                <div id="pqj" class="pqj gd" onclick="domclick(this)">喷&nbsp;&nbsp;漆&nbsp;&nbsp;间</div>
                <div id="bcpk" class="bcpk gd" onclick="domclick(this)">半&nbsp;&nbsp;成&nbsp;&nbsp;品&nbsp;&nbsp;库</div>
                <div id="cpk" class="cpk gd" onclick="domclick(this)">成&nbsp;&nbsp;品&nbsp;&nbsp;库</div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="foot_button">
                <div class="button1" >1车间</div>
                <div class="button2" >2车间</div>
            </div>
        </div>
    </div>
    <div id="progress"><span></span></div>
</div>
</body>
</html>
