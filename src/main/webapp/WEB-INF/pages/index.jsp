<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/spring-css/resources/css/mainContent.css">
<!-- <link rel="stylesheet" type="text/css" href="/src/main/webapp/css/mainContent.css">-->
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<form action="dataPass" class="frtSelcfrm">
		<div class="midContent">
			<table class="frtTbl">
				<h3>Select Any fruit:</h3>
				<tr>
					<td class="wrap"><a id="nishant" href="addFrt/id?id=1">
							<img src="resources/img/guava.png"  alt="guava" style="width: 150px">
							<input type="hidden" name="guavaMrp" value="150">
					</a></td>
					<td class="wrap"><a  href="addFrt/id?id=2">	
							<img src="resources/img/mango.png"  alt="mango" style="width: 150px">
							<input type="hidden" name="mangoMrp" value="250">
					</a></td>
					<td class="wrap"><a href="addFrt/id?id=3">
							<img src="resources/img/pineapple.png"  alt="pineapple" style="width: 150px">
							<input type="hidden" name="pineappleMrp" value="350"></td>
					</a></td>
				</tr>
				<tr>
					<td class="wrap">&nbspPrice for guava per kg is rs.150 &nbsp<input
						type="hidden" name="guavaMrp" value="150"></td>
					<td class="wrap">&nbspPrice for Mango per kg is rs.250 &nbsp<input
						type="hidden" name="mangoMrp" value="250"></td>
					<td class="wrap">&nbspPrice for pineapple per kg is rs.350 &nbsp<input
						type="hidden" name="pineappleMrp" value="350"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>
