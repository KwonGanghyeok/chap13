<%@page import="chap13.board.BoardDataBean"%>
<%@page import="chap13.board.BoardDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="chap13.board.BoardDBBean" %>
<%@ page import="chap13.board.BoardDataBean" %>
<%

//	sub = ㄴㅇㄻㄴㅇㄹ BoardDataBean [num=0, writer=null, email=null, subject=ㄴㅇㄻㄴㅇㄹ, passwd=null, reg_date=null, readcount=0, ref=0, re_step=0, re_level=0, content=null, ip=null] writePro.jsp
//	request.getParameter(주소줄에 있는 데이터 값을 가져오는 함수)
	String subject = request.getParameter("subject");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	String password = request.getParameter("password");
	
	System.out.println("subject = "+subject);
	System.out.println("name = "+name);
	System.out.println("email = "+email);
	System.out.println("content = "+content);
	System.out.println("password = "+password);

	BoardDBBean bdb = BoardDBBean.getInstance();
	bdb.insertDetailArticle(name, subject, email, content, password);
	
	BoardDataBean dataBean = new BoardDataBean();
	dataBean.setContent(content);
	dataBean.setWriter(name);
	dataBean.setEmail(email);
	dataBean.setPasswd(password);
	dataBean.setSubject(subject);
//	dataBean.setSubject();
	
//	out.println("sub = "+sub);
//	out.println(dataBean);

	bdb.insertArticle(dataBean);
	out.println("writePro.jsp");
	
%>