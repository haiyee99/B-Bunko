<%@ include file = "../model/Database.jsp" %>

<%
    String name = request.getParameter("user_name");
    String email = request.getParameter("user_email");
    String password = request.getParameter("user_password");
    String confPassword = request.getParameter("user_confirm");
    String agree = request.getParameter("user_terms"); //kalo ga dicentang, null. kalo dicentang, on

    if(name.equals("")){
        //out.println("nama kosong");
        response.sendRedirect("../register.jsp?err=1");
    }
    else if(email.equals("")){
        //out.println("email kosong");
        response.sendRedirect("../register.jsp?err=2");
    }
    else if(password.equals("") || confPassword.equals("")){
        //out.println("password kosong");
        response.sendRedirect("../register.jsp?err=3");
    }
    else if(!password.equals(confPassword)){
        //out.println("password beda");
        response.sendRedirect("../register.jsp?err=4");
    }
    else if(password.length() < 8){
        //out.println("password length < 8");
        response.sendRedirect("../register.jsp?err=5");
    }
    else if(agree == null){
        //out.println("agree tidak null");
        response.sendRedirect("../register.jsp?err=6");
    }
    else{
        //cek email yang ada di database
        String emailCheck = "SELECT * FROM user WHERE user_email = '"+ email +"'";
        Statement stCheck = connection.createStatement();
        ResultSet rs = stCheck.executeQuery(emailCheck);

        if(rs.next()){
            //out.println("email udh ada di database");
            response.sendRedirect("../register.jsp?err=7");
        }
        else{
            //masukkin ke database
            String insertRegister = "INSERT INTO user (user_name, user_email, user_password) VALUES (?,?,?)";
            PreparedStatement stInsert = connection.prepareStatement(insertRegister);

            stInsert.setString(1,name);
            stInsert.setString(2,email);
            stInsert.setString(3,password);

            stInsert.executeUpdate();

            //out.println("register success");
            response.sendRedirect("../login.jsp");
        }
    }
%>