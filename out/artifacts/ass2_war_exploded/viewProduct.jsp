<%@ page import="shop.Product"%>

<jsp:useBean id='db'
             scope='session'
             class='shop.ShopDB' />

<jsp:useBean id='basket'
             scope='session'
             class='shop.Basket' />



<html>
<head>
<title>My Shop</title>
    <link rel="stylesheet" href="css.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<jsp:include page="footer.jsp"/>

<%
    String pid = request.getParameter("pid");
    Product product = db.getProduct(pid);
    // out.println("pid = " + pid);
    if (product == null) {
        // do something sensible!!!
        out.println( product );
    }
    else {
        %>
        <div align="center">
        <h2> <%= product.title %>  by <%= product.artist %> </h2>
            <img height="50" width="50" src="<%= product.fullimage %>" />
        <p> <%= product.description %> </p>
            <p> <%= "&pound" + (product.price /100) + "." + String.format("%02d", product.price % 100) %></p>
            <p> <a href ='<%="basket.jsp?addItem=" + product.PID%>'><button type="button" onclick="">Add to Basket</button></a>
        </p>
        </div>
        <%
    }
%>
</body>
</html>

