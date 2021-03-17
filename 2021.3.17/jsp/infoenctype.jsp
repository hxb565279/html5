<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setCharacterEncoding("UTF-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>信息显示</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
<body>
	<%
		int len = request.getContentLength();
		byte buffer[] = new byte[len];
		InputStream in = request.getInputStream();
		int total = 0;
		int once = 0;
		while ((total < len) && (once >= 0)) {
			once = in.read(buffer, total, len);
			total += once;
		}
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		baos.write(buffer);
		String str = baos.toString();
		baos.close();
		out.println(str);
	%>
</body>
</html>
