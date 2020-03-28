<div class="header">
    <h1 class="header">
        DB Hardware Store
    </h1>
    </br>

    <div class="search">
        <form id="searchc" method="get" onsubmit="return validation()" action="search.jsp"/>
         Search: <input type="text" id="search" name="sea" size="21" minlength="2" value="" />
        <input type="submit" value="Go" />
        </form>
    </div>

    <div class="maxmin">
        <form id="minmax" method="get" onsubmit="return validation()" action="price.jsp"/>
        Min Price: <input type="text" id="s2" name="sea2" size="21" minlength="2" value="">
        Max Price: <input type="text" id="s3" name="sea3" size="21" minlength="2" value="">
        <input type="submit" value="Go" />
        </form>
    </form>

    </div>
    <ul>
        <li><a class="active" href='<%="products.jsp"%>'>Home</a></li>
        <li><a class="active" href='<%="about.jsp"%>'> About Us</a></li>
        <li><a class="active" href='<%="contact.jsp"%>'>Contact</a></li>
        <li style="float:right"><a href='<%="basket.jsp"%>'> Basket <img src="images/basket.png" alt="basket" style="width: 20px; height: 20px;"> </a></li>
    </ul>
</div>