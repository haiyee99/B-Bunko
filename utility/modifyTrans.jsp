<%@ include file="../model/Database.jsp" %>
<%
        Integer trans_id = Integer.parseInt(request.getParameter("trans_id"));

        try{
            String query = "UPDATE transactions SET trans_status = ? WHERE trans_id = ? ";

            PreparedStatement stmt = connection.prepareStatement(query);
            stmt.setString(1, "Cancel");
            stmt.setInt(2, trans_id);
        
            stmt.executeUpdate();

            response.sendRedirect("../transaction_history.jsp");
        }catch(Exception e){
            out.println(e);
        }
%>