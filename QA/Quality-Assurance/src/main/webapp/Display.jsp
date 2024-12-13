<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register Page</title>
    <link rel="stylesheet" href="CSS/Display.css" />
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Customer ID</th>
                <th>Item Name</th>
                <th>Item Code</th>
                <th>Supplier</th>
                <th>Date</th>
                <th>Quantity</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="cus" items="${cusDetails}">
                <tr>
                    <td>${cus.id}</td>
                    <td>${cus.name}</td>
                    <td>${cus.code}</td>
                    <td>${cus.supplier}</td>
                    <td>${cus.date}</td>
                    <td>${cus.quantity}</td>
                    <td>
                        <c:url value="Update.jsp" var="cusupdate">
                            <c:param name="id" value="${cus.id}"/>
                            <c:param name="name" value="${cus.name}"/>
                            <c:param name="code" value="${cus.code}"/>
                            <c:param name="supplier" value="${cus.supplier}"/>
                            <c:param name="date" value="${cus.date}"/>
                            <c:param name="quantity" value="${cus.quantity}"/>
                        </c:url>
                        <a href="${cusupdate }"><button name="update" >Update Details</button></a>
                        
                        <c:url value="Delete.jsp" var="cusdelete">
                            <c:param name="id" value="${cus.id}"/>
                            <c:param name="name" value="${cus.name}"/>
                            <c:param name="code" value="${cus.code}"/>
                            <c:param name="supplier" value="${cus.supplier}"/>
                            <c:param name="date" value="${cus.date}"/>
                            <c:param name="quantity" value="${cus.quantity}"/>
                        </c:url>
                        <a href="${cusdelete }"><button name="delete">Delete</button></a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
