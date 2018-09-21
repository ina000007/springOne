<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/spring-css/resources/css/mainContent.css" rel="stylesheet">
<link href="/spring-css/resources/css/frtDesc.css" rel="stylesheet">
<link href="/spring-css/resources/css/notify.css" rel="stylesheet">
<jsp:include page="header.jsp"></jsp:include>
</head>

<style>

#snackbar {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: #333;
	color: #fff;
	text-align: center;
	border-radius: 2px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	right: 5%;
	top: 15px;
	font-size: 17px;
}

#snackbar1 {
	visibility: hidden;
	min-width: 250px;
	margin-left: -125px;
	background-color: #333;
	color: #fff;
	text-align: center;
	border-radius: 2px;
	padding: 16px;
	position: fixed;
	z-index: 1;
	right: 5%;
	top: 15px;
	font-size: 17px;
}

#snackbar.show {
	visibility: visible;
	
}
#snackbar1.show1 {
	visibility: visible;
	right: 25%;
	top: 60%;
}

</style>

<body>
	<div id="snackbar"></div>
	<div id="snackbar1"> Order Placed Successfully...Thank You </div>
	<%!String name;%>
	<%
		name = "/spring-css/resources/img/" + request.getAttribute("name").toString().toLowerCase() + ".png";
	%>
	<div class="container midContent" style="height: 70%">
		<div class="split left">
			<div class="centered">
				<img src=<%=name%> alt="guava" style="width: 150px">
			</div>
		</div>

		<div class="split right">
			<bold>
			<p style="size: 30px" id="fname">${name}</p>
			</bold>
			<p class="wrap">
			<h5>${desc}</h5>
			</p>
			<h5>MRP: ${prc}</h5>
			<h5>QTY</h5>
			<h5>
				<button onclick="myFunction(1,${prc})">add</button>
				<input type="number" id="myNumber" value="1">
				<button onclick="myFunction('-1',${prc})">sub</button>
			</h5>
			<div>
				<button onclick="ordPlc()">Order</button>
			</div>
		</div>

	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script>
function myFunction(val,amt) {
    var cnt = document.getElementById("myNumber").value;
    cnt = parseInt(cnt) +parseInt(val);
    if(cnt>0){
    	document.getElementById("myNumber").value = cnt ;
    	document.getElementById("cartVal").text = "Total:"+(cnt*parseInt(amt));
    	}
    else{
    	document.getElementById("myNumber").value = "1"
    	document.getElementById("cartVal").value = "Total:"+amt;;
    }
    notification(amt);
}
function notification(amt) {
	var cnt = document.getElementById("myNumber").value;
	var name =  document.getElementById("fname").innerHTML;    
    document.getElementById("snackbar").innerHTML = name+"<br>Rs.	"+amt+" <br>Qty		"+cnt+" <br>Total Amount	 "+(cnt*parseInt(amt));
    var x = document.getElementById("snackbar");
    x.className = "show";
    setTimeout( function() { 
    		x.className = x.className.replace("show", ""); 
    	}, 3000);
}

function ordPlc(){
	/* document.getElementById("snackbar1").innerHTML = ""; */
    var x = document.getElementById("snackbar1");
    x.className = "show1";
    setTimeout(function(){ x.className = x.className.replace("show1", ""); }, 3000);
}
</script>
</body>


</html>