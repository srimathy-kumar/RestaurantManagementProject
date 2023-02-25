<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="https://cdn3.iconfinder.com/data/icons/food-packaging-and-bottle/1200/food_packaging_color-16-512.png" />
<title>BurgerVille | Error</title>
<style>
body{
		font-family: "Lato", sans-seriff;
		background-image: url('https://tse4.mm.bing.net/th?id=OIP.minEEuSuCW3ndoh400tl8wHaEo&pid=Api&P=0');
		background-repeat:no-repeat;
		background-size:cover;
	}
</style>
</head>
<body>
<div class="text-center">
<h1>Error</h1>
<h2>
<%= exception.getMessage() %><br>
</h2>
</div>
</body>
</html>