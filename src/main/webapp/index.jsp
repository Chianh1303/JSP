<%@ page import="org.example.baitapbuoi2.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
  <%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("John Doe", "1990-01-01", "123 Main St", "https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/474069oiI/anh-bia-facebook-troll_075106945.jpg"));
    customers.add(new Customer("Jane Doe", "1995-02-02", "456 Main St", "https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/474069oiI/anh-bia-facebook-troll_075106945.jpg"));
    customers.add(new Customer("Jane Doe", "1995-02-02", "789 Main St", "https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/474069oiI/anh-bia-facebook-troll_075106945.jpg"));
    customers.add(new Customer("Jane Doe", "1995-02-02", "91011 Main St", "https://img.tripi.vn/cdn-cgi/image/width=700,height=700/https://gcs.tripi.vn/public-tripi/tripi-feed/img/474069oiI/anh-bia-facebook-troll_075106945.jpg"));

    request.setAttribute("customers", customers);
  %>
  <h1 style="text-align: center;">Danh sách khách hàng</h1>
  <table>
    <tr>
      <th>name</th>
      <th>birthday</th>
      <th>address</th>
      <th>urlImage</th>
    </tr>
  <c:forEach var="customer" items="${customers}"  >
    <tr>
      <td>${customer.name}</td>
      <td>${customer.birthday}</td>
      <td>${customer.address}</td>
      <td><img src="${customer.urlImage}" alt="Customer Image"></td>
    </tr>
    </c:forEach>
  </table>
</body>
</html>