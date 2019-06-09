<%@ include file = "../model/Database.jsp"%>

<%
    String email = request.getParameter("user_email");
    String password = request.getParameter("user_password");
    String remember = request.getParameter("user_remember");

    if(email.equals("")){
        //out.println("email is empty");
        response.sendRedirect("../login.jsp?err=1");
    }
    else if(password.equals("")){
        //out.println("password is empty");
        response.sendRedirect("../login.jsp?err=2");
    }
    else{
        String passCheck = "SELECT * FROM user WHERE user_email = '"+ email +"' AND user_password = '"+ password +"'";
        Statement st = connection.createStatement();
        ResultSet rs = st.executeQuery(passCheck);

        if(rs.next()){
            int user_id = rs.getInt("user_id");

            session.setAttribute("user_id", user_id+"");

            if(remember != null){
                if(remember.equals("on")){
                    //set cookies on
                    Cookie newCookie = new Cookie("id", user_id+"");
                    newCookie.setMaxAge(900);
                    newCookie.setPath("/");
                    response.addCookie(newCookie);
                    out.println("cookies set");
                }
            }
            //out.println("login success");
            response.sendRedirect("../index.jsp");
        }
        else{
            //out.println("incorrect password");
            response.sendRedirect("../login.jsp?err=3");
        }
    }
%>