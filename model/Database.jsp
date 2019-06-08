<%@ page import = "java.sql.*" %>

<%!
	// Change PORT, DBNAME if needed
	final String PORT = "3306";
	final String DBNAME = "Manganone";
	final String USER = "root";
	final String PASS = "";

	final String DRIVER = "com.mysql.jdbc.Driver";
	final String DBURL = String.format("jdbc:mysql://localhost:%s/%s", PORT, DBNAME);

	Connection connection;
	Statement statement;
%>

<%	
	// Uncomment this: 

	Class.forName(DRIVER);
	connection = DriverManager.getConnection(DBURL, USER, PASS);
	//statement = connection.createStatement();
%>

<!-- 
Update / Delete
String queryInsert = "insert into {1} ({2}, {...}) values ({3}, {...})";
String queryDelete = "delete from {1} where {2} = {3}";
statement.executeUpdate({queryInsert / queryDelete}); -> Return affected rows in integer 

Select
String querySelect = "select {* / {2}} from {1} (where ^ groupby ^ orderby ^ ...) {3}"
result = statement.executeQuery(querySelect);

while(result.next()){
	String x = result.getString({idx -> from 0});
	String y = result.getInt({idx -> from 0});
	{see https://docs.oracle.com/javase/7/docs/api/java/sql/ResultSet.html}
}

{1} : table name
{2} : column name
{3} : value
-->