<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="icon" type="image/png" href="https://cdn3.iconfinder.com/data/icons/food-packaging-and-bottle/1200/food_packaging_color-16-512.png" />
	<title>BurgerVille | Menu Management</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
		rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
		crossorigin="anonymous">
	<style>
		body{
			font-family: "Lato", sans-seriff;
			background-image: url('https://tse4.mm.bing.net/th?id=OIP.minEEuSuCW3ndoh400tl8wHaEo&pid=Api&P=0');
			background-repeat:no-repeat;
			background-size:cover;
		}

		.nav-style1{
			font-size:18px;
			font-weight:normal;
		}

		.nav-style1:hover{
			font-weight:bolder;
		}

		ul.tab{
			list-style-type: none;
			margin:0;
			padding:0;
			overflow: hidden;
		}

		ul.tab li{
			float:left;
		}

		ul.tab li a{
			display:inline-block;
			text-align:center;
			padding:14px 16px;
			text-decoration: none;
			transition: 0.3s;
			font-size: 17px;
		}

		.nav1{
			font-size:30px;
		}
		.tabcontent{
			display:none;
			padding: 6px 12px;
			border-top: none;
		}
	
		.menustyle{
			background-color: #613613; 
        	color: white; 
        	border: none; 
        	border-radius: 10px; 
        	width: 150px;
        	height:40px; 
        	font-size:16px;
        }
        .menustyle:hover{
	 		background-color: white; 
    		color: #613613; 
    		border: 2px solid #613613; 
   		}
   		.hrStyle{
   			margin-bottom: 50px;
   			color:white;
   		}
	</style>
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark bf-bold fw-bolder"
			style="background-color: #613613">
			<div class="d-flex">
				<a class="navbar-brand fw-bolder nav1" href="#">
   					<div class="d-flex"> 
   						<div><img src="https://cdn3.iconfinder.com/data/icons/food-packaging-and-bottle/1200/food_packaging_color-16-512.png" id="newstyle" height=45 width=45 alt="BurgerVille"> </div>
   						<div>BurgerVille</div>
   					</div>
   				</a>
			</div>
			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list" class="nav-link nav-style1 text-white">List Items</a></li>
				<li><a href="logout.jsp" class="nav-link  nav-style1 text-white">Log Out</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="row">
		<div class="container">
			<h3 class="text-center fw-bold text-white">List of Items</h3>
			<hr class="hrStyle">
			<div class="container d-flex justify-content-center mb-3">
				<div class="mx-5">
					<a href="<%=request.getContextPath()%>/new" class="btn btn-primary menustyle fw-bold">Add New Items</a>
				</div>
				<div class="mx-5">
					<a href="<%=request.getContextPath()%>/list" class="btn btn-primary menustyle fw-bold">List Items</a>
				</div>
			</div>
			<br>
			<c:if test="${listItem!=null}">
			<table class="table table-bordered text-white" style="border:2px solid white">
				<thead  style="font-size:24px;">
					<tr>
						<th class="text-white fw-bold">ID</th>
						<th class="text-white fw-bold">Food Name</th>
						<th class="text-white fw-bold">Price</th>
						<th class="text-white fw-bold">Actions</th>
					</tr>
				</thead>
				<tbody>			
					<c:forEach var="item" items="${listItem}">
						<tr>
							<td><c:out value="${item.id}" /></td>
							<td><c:out value="${item.name}" /></td>
							<td><c:out value="${item.price}" /></td>
							<td><a style="text-decoration:none" href="edit?id=<c:out value='${item.id}'/>">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;<a
								style="text-decoration:none" href="delete?id=<c:out value='${item.id}'/>">Delete</a></td>
						</tr>
					</c:forEach>  
						
				</tbody>
			</table>
			</c:if>
		</div>
	</div>
</body>
<footer>
	<div class="jumbotron text-center" style="margin-bottom: 0;margin-top:400px;">
		<p class="text-white mt-3">Made with love by BurgerVille</p>
	</div>
</footer>

</html>