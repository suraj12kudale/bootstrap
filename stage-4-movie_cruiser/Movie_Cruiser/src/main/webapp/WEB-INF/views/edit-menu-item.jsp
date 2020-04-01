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
background-color: black;
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
margin-left: 20px;
}

.price{
    padding-top: 10px;
    font-size: 13px;
    color: #685e5e;
}
.delivery{
    text-align: right;
}
p{
    padding-top: 20px;
}
.logo{
    height: 60px;
    width: 60px;
    padding-left: 10px;
}
.free{

    font-size: 12px;
    color: white;
    background-color:#079494;
}

footer{
    text-align: left;
    position: relative;
  left: 0;
  bottom: 0;
    width: 100%;
    background-color: black;
    height:40px;
color: white;
margin-top: 10px;
padding-left: 10px;

}
.btn.save{
    background-color: black;
    color: white;
}
.statusActive{
    background-color: green;
    border-radius: 5px;
    padding: 1px;
    color: white;
}
.text-title{
    font-size: 12px;
}
.findfood{
    color: white;
    float: left;
}

div{
    margin-top: 10px;
}

</style>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src= "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> 
    </script>    
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"> 
    </script> 
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css"/> 


</head>
<body>
    <nav class="navbar navbar-dark htrack">
       <div class="navbar-brand title">
    Movie Cruiser</div>

       <div class="navbar-expand-md">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>   
        </button>
       <div class="collapse navbar-collapse" id="collapsibleNavbar">  
            <ul class="navbar-nav active">
                <li class="nav-item">
                    <a class="nav-link" style="color: white;" href="menu-item-list-admin.html"><i class="fas fa-tape" id="iconsize"></i> Movie List</a>
                </li>
                
            
        </ul>
        </div>
        </div>
    </nav>
    
    <form:form action="edit-menu-item-success" method="post" modelAttribute="editMovie">
    <div class="title">Edit Movie Details</div>
    <div class="container-fluid">
        <div class="form-row">
          <div class="col-sm-3">
          	<form:label path="id" for="id">ID</form:label>
          	<form:input path="id" class="form-control" id="id" value="${Movieid} "/>
          	</div>
          <div class="col-sm-9">
          	
              <form:label path="title"  for="title">Title</form:label>
              <form:input path="title" type="text" class="form-control" id="title" required="required" />
          </div> 
        </div>
        
        <div class="form-row">
          <div class="col-sm-3">
              <form:label path="boxOffice" for="price">Box-Office</form:label>
              <form:input path="boxOffice" type="text" class="form-control" id="price" required="required" />
          </div>
          <div class="col-sm-3">
              <form:label path="dateOfLaunch" for="dateOfLaunch">Date of Launch</form:label>
              <form:input path="dateOfLaunch" type="text" class="form-control" id="dateOfLaunch" required="required" />
          </div>
          <div class="col-sm-3">
            <form:label path="genre"  for="genre">Genre</form:label>
            <form:select path="genre" id="genre" class="form-control" items="${genreList}">

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
       <div class="form-row">
        <div class="col-sm-3">
            <form:label path="hasTeaser" for="active">Has Teaser</form:label>
            <br>
            <div class="form-check-inline">
                <form:label path="hasTeaser" class="form-check-label">
                 <form:radiobutton path="hasTeaser" class="form-check-input" id="active" name="active" value="yes" />Yes
            </form:label></div>
            <div class="form-check-inline">
                <form:label path="hasTeaser" class="form-check-label">
            <form:radiobutton  path="hasTeaser" class="form-check-input" id="active" name="active" value="no" />No
            </form:label></div>
              
          </div>
       </div>
        <div class="row">
          <div class="col-sm-3">
         <input name="submit" class="btn save" value="Save" type="submit" />
      </div></div>
      </div>
      
</form:form>  
    <footer class="page-footer">
     <div class="footer-copyright">
        Copyright 2020
     </div>   
    </footer>
</body>

</html>