<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!doctype html>
<html>
<head>
<style>
.htrack{
color:white;
background-color: #ff3300;
font: size 30;
padding-top: 10px;
padding-left: 20px;
}
.benefit{
background-color:#33cccc;
}
.log{
background-color:#9999FF;
}

.material-icons {
	   vertical-align: middle;
}
#iconsize{
    font-size:18px;
    }

.image{
    width: 100%;
}
.title{
font-size: 35px;
font-weight: bolder;
margin-left: 10px;
}
.price{
    font-size: 15px;
    text-align: right;
    padding-right: 20px;
    color: red;
}
.delivery{
    text-align: right;
}
p{
    padding-top: 20px;
}
.logo{
    height: 40px;
    width: 50px;
    padding-left: 10px;
}
.free{
    font-size: 12px;
    color: white;
    background-color:#079494;
}
div{
    padding-top: 10px;
}
footer{
    text-align: left;
  bottom: 0px;
  position: relative;
    width: 100%;
    background-color: #ff3300;
    height:40px;
color: white;
margin-top: 10px;
padding-left: 10px;
}

.text-title{
    font-size: 12px;
}

.topBack{
    background-image:url("backFood.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}
.findfood{
    color: white;
    float: left;
}
.btn.save{
    background-color: orangered;
    color: white;
}
</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
    </script>    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
    </script> 
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/> 

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
    <nav class="navbar navbar-dark htrack">
       <div class="navbar-brand title"><img class="logo" src="truyum-logo-light.png"> truYum</div>

       <div class="navbar-expand-md">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>   
        </button>
       <div class="collapse navbar-collapse" id="collapsibleNavbar">  
            <ul class="navbar-nav active">
                <li class="nav-item">
                    <a class="nav-link" style="color: white;" href="menu-item-list-admin"><i class="fas fa-pizza-slice" id="iconsize"></i> Menu Items</a>
                </li>
                
        </ul>
        </div>
        </div>
    </nav>
    
    <form:form action="edit-menu-item-success" method="post" modelAttribute="editItem">
    <div class="title">Edit Menu Item</div>
    <div class="container-fluid">
        <div class="form-row">
        <div class="col-sm-6">
              <form:label path="id"  for="id">Item ID</form:label>
              <form:input path="id"  class="form-control" id="id" value="${itemId}" required="required" />
          </div> 
          <div class="col-sm-6">
              <form:label path="name"   for="title">Item Name</form:label>
              <form:input path="name"  type="text" class="form-control" id="title" required="required" />
          </div> 
        </div>
        
        <div class="form-row">
          <div class="col-sm-3">
              <form:label path="price"  for="price">Price</form:label>
              <form:input path="price"  type="text" class="form-control" id="price" required="required" />
          </div>
          <div class="col-sm-3">
              <form:label path="dateOfLaunch"  for="dateOfLaunch">Date of Launch</form:label>
              <form:input path="dateOfLaunch"  type="text" class="form-control" id="dateOfLaunch" required="required" />
          </div>
          <div class="col-sm-3">
            <form:label path="category"  for="category">Category</form:label>
            <form:select path="category" id="category" class="form-control" items="${categoryList}">
              
            </form:select>
          </div>
          <div class="col-sm-3">
            <form:label path="active" for="active">Active</form:label>
            <br>
            <div class="form-check-inline">
                <form:label path="active" class="form-check-label">
                 <form:radiobutton path="active" class="form-check-input" id="active" name="active" value="yes" />Yes
            </form:label></div>
            <div class="form-check-inline">
                <form:label path="active" class="form-check-label">
            <form:radiobutton path="active" class="form-check-input" id="active" name="active" value="no" />No
            </form:label></div>
              
          </div>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <div class="form-check-inline">
                    <form:label path="freeDelivery"  class="form-check-label"> 
                <form:checkbox path="freeDelivery"  class="form-check-input" id="freeDelivery"  />Free Delivery
                    </form:label></div>
            </div>
        </div>
        <div class="row">
          <div class="col-sm-3">
         <input type="Submit" name="submit" class="btn save" value="Save" type="submit">
      </div></div>
      </div>
    </form:form>  
    <footer class="page-footer">
     <div class="footer-copyright">
        Copyright 2020
     </div>   
    </footer>
</body>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script> 
<script> 
  $('#dateOfLaunch').datepicker({ 
    uiLibrary: 'bootstrap4', 
    format: 'dd/mm/yyyy' 
  }); 
</script> 

</html>