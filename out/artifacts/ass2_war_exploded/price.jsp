<%@ page import="shop.Product"%>
<%@ page import="java.util.Collection" %>

<jsp:useBean id='db'
             scope='session'
             class='shop.ShopDB' />



<html>
<head>
    <title>My Shop</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css.css">
</head>
<body>

<jsp:include page="header.jsp"/>
<jsp:include page="footer.jsp"/>




<%
    String s2 = request.getParameter("sea2");
    int s22 = Integer.parseInt(s2);
    String s3 = request.getParameter("sea3");
    int s33 = Integer.parseInt(s3);
    String q2 = "Select * from PRODUCT where PRICE >=" + s22 + "AND PRICE <= " + s33;
    Collection list = db.getProductCollection(q2);
%>

<table>
    <tr>
        <th> Title </th> <th> Price </th> <th> Picture </th>
    </tr>
    <%
        for (Product product : db.getProductCollection(q2)) {
            // now use HTML literals to create the table
            // with JSP expressions to include the live data
            // but this page is unfinished - the thumbnail
            // needs a hyperlink to the product description,
            // and there should also be a way of selecting
            // pictures from a particular artist
    %>
    <tr>
        <td> <%= product.title %> </td>
        <td> <%= "&pound" + (product.price /100) + "." + String.format("%02d", product.price % 100) %> </td>
        <td> <a href = '<%="viewProduct.jsp?pid="+product.PID%>'> <img height="50" width="50" src="<%= product.thumbnail %>"/> </a> </td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
