<%@ page contentType="text/html; charset=utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html class="no-js">
<!--<![endif]-->
<head>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<meta name="author" content="www.frebsite.nl">
<meta name="viewport"
	content="width=device-width initial-scale=1.0 maximum-scale=1.0 user-scalable=yes">

<title id="basePageTitle"><tiles:insertAttribute name="title" /></title>

<link rel="stylesheet" href="<c:url value='/Styles/istyle.css'/>">
<link rel="stylesheet" href="<c:url value='/Styles/glyphicons.css' />">
<link rel="stylesheet" href="<c:url value='/Styles/base.css'/>">
<link rel="stylesheet" href="<c:url value='./Styles/common.css'/>">
<link rel="stylesheet" href="<c:url value='./Styles/main.css'/>">

<script type="text/javascript" src="<c:url value='/Scripts/jquery-1.9.1.min.js'/>"> </script>
<script type="text/javascript" src="<c:url value='/Scripts/highcharts.src.js'/>"> </script>
<script type="text/javascript" src="<c:url value='/Scripts/highcharts-more.js'/>"> </script>
<script type="text/javascript" src="<c:url value='/Scripts/data.js'/>"> </script>
<script type="text/javascript" src="<c:url value='/Scripts/index.js'/>"> </script>
<script type="text/javascript" src="<c:url value='/Scripts/js'/>"> </script>
<script type="text/javascript" src="<c:url value='/Scripts/main.js'/>"> </script>

</head>

<body class="o-page">

<!--[if lt IE 8 ]>
<div style="position:absolute;top:0;left:0;right:0;bottom:0;background-color:#E63A3A;z-index:99999;text-align:center">
    <h1 style="color:#fff;font-weight:normal;margin-top:250px;">抱歉，请使用IE8+浏览器！ 建议使用Chrome</h1>
</div>
<![endif]-->

	<div id="content_wrapper">
		<tiles:insertAttribute name="content" />
	</div>
</body>

</html>