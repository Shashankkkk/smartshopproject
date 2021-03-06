<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cts.smart_shop.bean.ProductBean"%>
<%@page import="java.util.List"%>

<html>
<head>
<meta charset="ISO-8859-1">

<title>ProductList</title>
<link rel="stylesheet" type="text/css" href="ProductList.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.18/datatables.min.css"/>

    <script type="text/javascript">
function handleSelect(elm)
{
window.location = elm.value;
}
</script>

</head>
<body>

<br> <br>
<select name="select-city" onchange="location = this.value;">
<option value="">Select-Sorting Type</option>
 <option value="SortServlet?basis=name">Name</option>
 <option value="SortServlet?basis=price">Price</option>
  <option value="SortServlet?basis=availability">Availability</option>
   <option value="SortServlet?basis=popularity">Popularity</option>
 </select>
 <br> 
<form action="SearchProductServlet" method="post">
<br>
<input type="text" name="Name">
<input type="submit">
</form>
<br> <br>
<table style="width:100%">
<tr>
<th> Product Name  </th>
<th> Product Image  </th>
<th> No. of Items  </th>
<th> Date of Manufacture  </th>
<th> Date of Expiry  </th>
<th> Rating  </th>
<th> Price  </th>
<th> Location  </th>
</tr>
<c:forEach  var="product"  items= "${products}">
                        <tr>
                          <td> 
                                	${product.product_Name}   
                          </td>
                          <td>
                           		 	<a href="ViewImageServlet?id=${product.product_Name}" >Show Image</a>
                          </td>
                          <td>
                            	 	${product.item}
                          </td>
                          <td>
                            		${product.dom}
                          </td>
                          <td>
                            		${product.doe}
                          </td>
                          <td>
                            		${product.rating}
                          </td>
                          <td>
                           			${product.product_price}
                           </td>
                           <td>
                           			${product.location}
                           </td>
                          
                        </tr>
                       </c:forEach>     
                       
                   </table>    
                  

</div>

</section>



    
<script>
function openmenu()
{
	document.getElementyId("side-menu").style.display="block";
	document.getElementyId("menu-btn").style.display="none";
	document.getElementyId("close-btn").style.display="block";
}
function closemenu()
{
	document.getElementyId("side-menu").style.display="none";
	document.getElementyId("menu-btn").style.display="block";
	document.getElementyId("close-btn").style.display="none";
}

</script>

</body>
</html>