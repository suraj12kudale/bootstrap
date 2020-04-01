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
margin-bottom: 20px;
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
.statusInactive{
background-color: red;
border-radius: 5px;
color: white;
padding: 1px;
}
.text-title{
    font-size: 12px;
}
.findfood{
    color: white;
    float: left;
}
.msg{
    color: #ca1010;
    background-color:#ffd0d0 ;
    height: 50px;
    border-radius: 3px;
    padding-top: 10px;
    padding-left: 10px;
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
       <div class="navbar-brand title">    Movie Cruiser</div>

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
    <div class="container">
        <div class="row d-flex justify-content-center">
            <div class="w-100"></div>
            <div class="col-sm-6">
                <div class="title">Watch List</div>
                <div  class="msg">
                    No item in Watch List. Use <i class="material-icons">favorite_border</i> option in Movie List.
                </div>
                
                
            </div>
        </div>

    </div>

    

      
    <footer class="page-footer">
     <div class="footer-copyright">
        Copyright 2020
     </div>   
    </footer>
</body>


</html>