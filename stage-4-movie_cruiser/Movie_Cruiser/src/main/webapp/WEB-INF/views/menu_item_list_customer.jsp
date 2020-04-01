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
font-size: 20px;
font-weight: bolder;
}
.price{
    padding-top: 10px;
    font-size: 12px;
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
    position: absolute;
  left: 0;
  bottom: 0;
    width: 100%;
    background-color: black;
    height:40px;
color: white;
margin-top: 10px;
padding-left: 10px;

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

.addFav{
    font-size: 25px;
    margin-top: 7px;
    
}

.addCart{
    margin-top: 7px;
}
 a {
color: red;
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
                    <a class="nav-link" style="color: white;" href="showPage"><i class="fas fa-tape" id="iconsize"></i> Movie List</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" style="color: white;" href="showfavorite"><i class="material-icons" id="iconsize">favorite</i> Watch List</a>
                </li>
                
            
        </ul>
        </div>
        </div>
    </nav>
    
    
      <div class="jumbotron text-center topBack">
              </div>
    <div class="container-fluid">
        <div class="row">
        <c:forEach items="${inf}" var="temp">
            <div class="col-sm-3">
                <div class="card">
                  <!-- <img class="card-img-top" src="https://i.pinimg.com/originals/6a/9b/5c/6a9b5ce9fcb33ac22279436dfe1b07ba.png" alt="Image1"> -->
                    <div class="card-body">
                    <div class="card-title title">
                        <div class="row">
                            <div class="col-7"><label> ${temp.title} </label></div>
                        
                        <div class="col-5">
                            <div class="price">${temp.boxOffice}</div>
                        </div>
                        </div>
                    </div>
                    <div class="card-text">
                     <div class="row">
                        <div class="col-6 text-title">
                           <div><label class="statusActive">Active</label> <label> ${temp.genre} </label></div>
                        </div>
                        <div class="col-6 text-title">
                           <div class="float-right">
                            <div>
                               <i class="far fa-clock"></i> Launch
                            </div>    
                            <div>  ${temp.dateOfLaunch}  </div>
                            </div>
                            </div> 
                     </div>           
                     <div class="row">
                        <div class="col-6 addCart">
                            <button type="button" class="btn btn-primary" >
                                View
                              </button>
                     </div>
                        <div class="col-6">
                            <div class="addFav float-right">
                          <a href="favorite?id=${temp.id}">
                          <i onclick="myFunction(this)" class="fa fa-heart" ></i>
                          </a>
                        </div>
                     </div>
                     </div>
                      
                </div>
                </div>
           </div>
            </div>
          
           </c:forEach>    
               
            </div>
            </div>

    <footer class="page-footer">
     <div class="footer-copyright">
        Copyright 2020
     </div>   
    </footer>
    <script>
        function myFunction(x) {
            if(x.classList.contains("fa-heart")){
            x.classList.remove("fa-heart");
          x.classList.toggle("fa-check-circle");
            }
            
        }
        </script>
</body>
</html>