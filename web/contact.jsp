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
</body>


</html>