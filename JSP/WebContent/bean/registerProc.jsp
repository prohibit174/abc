<%@page import="kosta.bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="member" class="kosta.bean.Member"></jsp:useBean>
<jsp:setProperty property="*" name="member" />
<%
	MemberDao dao = MemberDao.getInstance();
	int re = dao.insertMember(member);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(re > 0){
		response.sendRedirect("memberList.jsp");
	}else{
		out.println("실패");
	}
%>
</body>
</html>