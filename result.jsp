<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Coupon Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<div class="container">

<%
Boolean success = (Boolean) request.getAttribute("success");

if(success != null && success) {
%>

<div class="success-box">
    <h2>Coupon Applied Successfully!</h2>
    <p>Discount: <%= request.getAttribute("discount") %>%</p>
    <p>Final Price: Rs. <%= request.getAttribute("finalPrice") %></p>
</div>

<%
} else {
%>

<div class="error-box">
    <p><%= request.getAttribute("message") %></p>
</div>

<%
}
%>

<a href="index.jsp">
    <button>Go Back</button>
</a>

</div>

</body>
</html>