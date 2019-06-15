<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*, java.util.*" errorPage="" %>

<%
    session.invalidate();

    Cookie[] cookies = request.getCookies();

    for(int i=0; i<cookies.length; i++){
        if(cookies[i].getName().equals("id")){
            cookies[i].setMaxAge(0);
            cookies[i].setPath("/");
            response.addCookie(cookies[i]);
            break;
        }
    }

    response.sendRedirect("../index.jsp");
%>