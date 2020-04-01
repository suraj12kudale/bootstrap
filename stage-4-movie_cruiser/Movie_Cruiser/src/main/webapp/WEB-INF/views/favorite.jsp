<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
font-size:20px;
font-weight: bolder;
}
.title1{
font-size: 30px;
font-weight: bolder;
color: #df0c41;
margin-bottom: 20px;
margin-left: 20px;
margin-top: 20px;
}
.price{
    padding-top: 10px;
    font-size: 13px;
    text-align: right;
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
                    <a class="nav-link" style="color: white;" href="menu-item-list-customer.html"><i class="fas fa-tape" id="iconsize"></i> Movie List</a>
                </li>
                
            
        </ul>
        </div>
        </div>
    </nav>

    
    <div class="title1">Favorites <span class="badge badge-success">2</span></div>
   
    <div class="container-fluid">
        <div class="row">
        <c:forEach items="${inf}" var="temp">
            <div class="col-sm-3">
                <div class="card">
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
                        <a href="deleteItem?id=${temp.id}"  > <button type="button" class="btn float-right btn-danger" data-toggle="modal" data-target="#myModal">
                           <i class="material-icons">delete_forever</i> Remove
                           </button>   </a>
                       </div>
                        <div class="col-6">
                            
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
</body>


</html>