<%@ page import="java.util.Date" %>
<%@ page import="java.util.Random" %>
<%@ include file = "../model/Database.jsp"%>
<%
    Integer user_id = Integer.parseInt((String)session.getAttribute("user_id"));
    Integer product_id = Integer.parseInt(request.getParameter("product_id"));
    Integer total_price = Integer.parseInt(request.getParameter("total_price"));
    Integer purchase_qty = Integer.parseInt(request.getParameter("purchase_qty"));
    String purchase_method = request.getParameter("purchase_method");
    String address = request.getParameter("address");
    
    Date purchaseDate = new Date();
    String date =  purchaseDate.getDate()<10 ? "0"+purchaseDate.getDate() : Integer.toString(purchaseDate.getDate());
    String month = (purchaseDate.getMonth() + 1)<10 ? "0"+(purchaseDate.getMonth() + 1) : Integer.toString((purchaseDate.getMonth() + 1));
    String year = (purchaseDate.getYear() + 1900)<10 ? "0"+(purchaseDate.getYear() + 1900) : Integer.toString((purchaseDate.getYear() + 1900));    

    Random rand = new Random();
    int num = 0;
    String randStr = "";
    for(int i=0; i < 10; i++){
        num = rand.nextInt(10);
        randStr+=Integer.toString(num);
    }

    String invoice = "INV/" + year + month + date+ "/" + randStr;
    try{
        String query = "INSERT INTO transactions (invoice, user_id, product_id, product_qty, total_amount, purchase_date, payment_type, address, trans_status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement stmt = connection.prepareStatement(query);
        stmt.setString(1, invoice);
        stmt.setInt(2, user_id);
        stmt.setInt(3, product_id);
        stmt.setInt(4, purchase_qty);
        stmt.setInt(5, total_price);
        stmt.setString(6, year + "-" + month + "-" + date);
        stmt.setString(7, purchase_method);
        stmt.setString(8, address);
        stmt.setString(9, "Pending");

        stmt.executeUpdate();

        response.sendRedirect("../transaction_history.jsp");
    }catch(Exception e){
        out.println(e);
    }
%>