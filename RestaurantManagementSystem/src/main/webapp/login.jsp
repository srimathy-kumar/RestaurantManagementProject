<%@ page import="com.RestaurantManagement.db.DbConnection"%>
<%@ page import="java.sql.*"%>

<%
String userid = request.getParameter("userName");
String pwd = request.getParameter("pass");
Connection con = DbConnection.init();
Statement stmt = con.createStatement();
ResultSet res;
String sql="select * from members where uname='" + userid + "' and password='" + pwd +"'";
res = stmt.executeQuery(sql);
if (res.next()) {
	session.setAttribute("userid", userid);
	response.sendRedirect("success.jsp");
} 
else {
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn3.iconfinder.com/data/icons/food-packaging-and-bottle/1200/food_packaging_color-16-512.png" />
	<title>BurgerVille</title>
	<link rel="stylesheet" href="w3.css" type="text/css">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://tse4.mm.bing.net/th?id=OIP.minEEuSuCW3ndoh400tl8wHaEo&pid=Api&P=0');
			background-repeat:no-repeat;
			background-size:cover;
		}

		.style1 {
			color: white;
			text-align: center;
		}
	</style>
</head>
<body><div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://cdn3.iconfinder.com/data/icons/food-packaging-and-bottle/1200/food_packaging_color-16-512.png" id="newstyle" height=45 width=45 alt="BurgerVille"> </div>
   						<div>BurgerVille</div>
   					</div>
   				</a>
	</div>
<p class="style1" style="font-size:20px;">
	!<br> 
	Wrong Username or Password.<br>
	 If you do not redirect within 5 seconds <a href="index.jsp">Click here</a>
	<script>
setTimeout(function()){
	window.location.href="index.jsp"
	}, 5000);
</script>
</p>
<%
}
%>
</body>
</html>