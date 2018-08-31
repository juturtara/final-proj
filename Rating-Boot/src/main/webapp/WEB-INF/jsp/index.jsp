<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Rating</title>

<style>
body{

background-color:lightblue;
}
.rating {
    width: 300px;
    height: 34px;
    background-color: #f6f3f3;
}
 
.rating label {
    text-indent: -100px;
    width: 40px !important;
    height: 30px;
    overflow: hidden;
    cursor: pointer;
}
 
.label {
    float: left;
    padding-top: 3px;
}
         
input[type="radio"] {
    padding-right: 4px;
    position: absolute;
    left: 440px;
    margin-top: 10px;
}
                 
input[type="radio"], .rating label.stars {
    float: right;
    line-height: 30px;
    height: 30px;
}
 
span + input[type=radio] + label, legend + input[type=radio] + label {
    clear: right;
    margin-right: 80px;
    counter-reset: checkbox;
}
 
.rating input[type="radio"]:required + label:after {
    content: '';
    position: absolute;
    left: 440px; 
    min-height: 10px;
    margin-top: -36px;
    text-align: right;
    background: #6cbf00;
    padding: 10px 10px;
    display: block;
    width: 50px;
}

 
.rating label.stars {
    background: transparent url('../img/star_off.jpg') no-repeat center center;
}
 
.rating label.stars:hover ~ label.stars, 
.rating label.stars:hover, 
.rating input[type=radio][name=stars]:checked ~ label.stars {
    background-image: url('../img/star.jpg');
    counter-increment: checkbox;
}
 
.rating input[type=radio][name=stars]:required + label.stars:after {
    content: counter(checkbox) " stars!";
}
</style>

</head>
<form action="/addrating" method="post">
<body>
<h2 align="center">RATINGS</h2><br>
<table align="center">

<tr>
<td>PRODUCT NAME: <input type="text" name="p_name" placeholder="Enter Product Name" required="required"/><br></td>
</tr>
<tr>
<td>PRODUCT ID: <input type="number" name="p_id" placeholder="Enter Product ID" required="required"/><br></td>
</tr>
<tr>
<td>MERCHANT ID: <input type="number" name="m_id" placeholder="Enter Merchant ID" required="required"/><br></td>
</tr>
</table>

<p align="center">Please rate this Product:</p>
    <fieldset style="width: 300px; margin: 0px auto;" class="rating" >     
        <input type="radio" name="stars" id="4_stars" value="5" >
        <label class="stars" for="4_stars">4 stars</label>
        <input type="radio" name="stars" id="3_stars" value="4" >
        <label class="stars" for="3_stars">3 stars</label>
        <input type="radio" name="stars" id="2_stars" value="3" >
        <label class="stars" for="2_stars">2 stars</label>
        <input type="radio" name="stars" id="1_stars" value="2" >
        <label class="stars" for="1_stars">1 star</label>
        <input type="radio" name="stars" id="0_stars" value="1" required>
        <label class="stars" for="0_stars">0 star</label>
        <span  class="label"> Rating: </span>
    </fieldset><br>
  <div style="text-align:center">
    <input type="submit" value="Submit" ></input>
    </div> 
    <br>
     <center><a href="/show">Show Ratings</a></center>  
</body>

</form>

</html>