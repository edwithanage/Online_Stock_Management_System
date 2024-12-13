
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Details</title>
    <link rel="stylesheet" href="CSS/All.css" /> <!-- Add your CSS file here -->
</head>
<body>
<a href="http://localhost:8090/Quality-Assurance/Search.jsp"> <button>Search Item detail</button></a>


    <table>
        <thead>
            <tr>
            <th>Customer ID</th>
                <th>Item Name</th>
                <th>Item Code</th>
                <th>Supplier</th>
                <th>Date</th>
                <th>Quantity</th>
                
            </tr>
        </thead>
        <tbody>
            <c:forEach var="row" items="${allAdmins}">
                <tr>
                <td>${row.id}</td>
                    <td>${row.name}</td>
                    <td>${row.code}</td>
                    <td>${row.supplier}</td>
                     <td>${row.date}</td>
                    <td>${row.quantity}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
