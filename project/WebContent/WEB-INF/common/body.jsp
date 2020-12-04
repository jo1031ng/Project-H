<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"><style>
html,body,h1,h2,h3,h4,h5 {font-family: "RobotoDraft", "Roboto", sans-serif}
.w3-bar-block .w3-bar-item {padding: 16px}
</style>

	<nav class="w3-sidebar w3-bar-block w3-collapse w3-white w3-animate-left w3-card" style="z-index:3;width:320px;" id="mySidebar">
  		
  		<a href="#" onclick="w3_close()" title="Close Sidemenu" 
 		 class="w3-bar-item w3-button w3-hide-large w3-large">Close <i class="fa fa-remove"></i></a>
  		<a id="myBtn" onclick="myFunc('Demo1')" href="#" class="w3-bar-item w3-button">developer<i class="fa fa-caret-down w3-margin-left"></i></a>
  		<div id="Demo1" class="w3-hide w3-animate-left">
      		<div class="w3-container">
  				<a href="#" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey">
        				<p>c/c++</p>
    			</a>
  			</div>
  			<div class="w3-container">
  				<a href="#" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey">
        				<p>java</p>
    			</a>
  			</div>
  			<div class="w3-container">
  				<a href="#" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey">
        				<p>python</p>
    			</a>
  			</div>
  			<div class="w3-container">
  				<a href="#" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey">
        				<p>기타등등</p>
    			</a>
  			</div>
  		</div>
  		<a href="#" id="myBtn" onclick="myFunc('Demo2')" class="w3-bar-item w3-button">resume<i class="fa fa-caret-down w3-margin-left"></i></a>
  		<div id="Demo2" class="w3-hide w3-animate-left">
      		<div class="w3-container">
  				<a href="#" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey">
        				<p>이력서</p>
    			</a>
  			</div>
  			<div class="w3-container">
  				<a href="#" class="w3-bar-item w3-button w3-border-bottom test w3-hover-light-grey">
        				<p>서류</p>
    			</a>
  			</div>
  		</div>
  		<a href="#" id="myBtn" onclick="myFunc('Demo3')" class="w3-bar-item w3-button">project<i class="fa fa-caret-down w3-margin-left"></i></a>
	
	</nav>
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="Close Sidemenu" id="myOverlay"></div>


<div class="w3-main" style="margin-left:320px;">
	<i class="fa fa-bars w3-button w3-white w3-hide-large w3-xlarge w3-margin-left w3-margin-top" onclick="w3_open()"></i>


	<div id="board" class="w3-container person">
  		<hr>
  		<p>대충 body</p>
  		<hr>
  		<div style="display:block;"><h1>1</h1></div>
  		<div style="display:block;"><h1>2</h1></div>
  		<div style="display:block;"><h1>3</h1></div>
  		<div style="display:block;"><h1>4</h1></div>
  		<div style="display:block;"><h1>5</h1></div>
  		<div style="display:block;"><h1>6</h1></div>
  		<div style="display:block;"><h1>7</h1></div>
	</div>
</div>


<script>
var openInbox = document.getElementById("myBtn");
openInbox.click();

function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}

function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

function myFunc(id) {
  var x = document.getElementById(id);
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show"; 
    x.previousElementSibling.className += " w3-white";
  } else { 
    x.className = x.className.replace(" w3-show", "");
    x.previousElementSibling.className = 
    x.previousElementSibling.className.replace(" w3-white", "");
  }
}
var openTab = document.getElementById("firstTab");
openTab.click();
</script>