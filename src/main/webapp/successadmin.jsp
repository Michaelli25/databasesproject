<%
    if ((session.getAttribute("user") == null)) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("user")%><br/>
<a href='logout.jsp'>Log out</a><br/>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
<a href='ticketsSold.jsp'>Most Active Flights</a><br/>
<a href='customerWithMostRevenue.jsp'>Customer With Most Revenue</a><br/>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
Add Customer:
<br>
<form action="updateRegister.jsp" method="POST">
    First Name: <input type="text" name="first_name"/> <br/>
    Last Name: <input type="text" name="last_name"/> <br/>
    Username: <input type="text" name="username"/> <br/>
    Password:<input type="password" name="password"/> <br/>
    <input type="submit" value="Submit"/>
</form>
<br>
Manage Customers:
<br>
	<form method="post" action="customers.jsp">
		Choose Customer 
		<select name="lastname">
			<option>omar</option>
			<option>john</option>
			<option>jane</option>
			<option>test</option>
		</select><br/>
		Update Customer Personal Info:<br/>
		<table>
		<tr>    
		<td>Change User Name</td><td><input type="text" name="username"></td>
		</tr>
		</table>
		<input type="submit" value="Update Customer">
	</form>
<br>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
Add Customer Rep:
<br>
<form action="updateEmpRegister.jsp" method="POST">
	First Name: <input type="text" name="first_name"/> <br/>
    Last Name: <input type="text" name="last_name"/> <br/>
    SSN: <input type="number" name="ssn"/> <br/>
    Username: <input type="text" name="username"/> <br/>
    Password:<input type="password" name="password"/> <br/>
    <input type="submit" value="Submit"/>
</form>
<br>
Manage Customer Representatives:
<br>
	<form method="post" action="customerreps.jsp">
		Choose Customer Rep
		<select name="firstname">
			<option>cus</option>
			<option>test</option>
		</select><br/>
		Update Customer Rep Personal Info:<br/>
		<table>
		<tr>    
		<td>Change User Name</td><td><input type="text" name="emp_username"></td>
		</tr>
		</table>
		<input type="submit" value="Update Customer Rep">
	</form>
<br>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
View Sales Report By Month:
<br>
	<form method="post" action="salesByMonth.jsp">
		Choose Month
		<select name="month">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
			<option>11</option>
			<option>12</option>
		</select><br/>
		<input type="submit" value="Choose month">
	</form>
<br>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
View Reservations By Customer:
<br>
	<form method="post" action="showResByName.jsp">
		<select name="entity">
			<option>omar</option>
			<option>john</option>
			<option>jane</option>
			<option>test</option>
		</select><br/>
		<input type="submit" value="Submit">
	</form>
<br>

View Reservations By Flight Number:
<br>
	<form method="post" action="showResByFlight.jsp">
		<select name="entity">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
			<option>11</option>
			<option>12</option>
			<option>13</option>
			<option>14</option>
			<option>15</option>
			<option>16</option>
		</select><br/>
		<input type="submit" value="Submit">
	</form>
<br>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
View Revenue Generated By Flight:
<br>
	<form method="post" action="showRevByFlight.jsp">
		<select name="entity">
			<option>1</option>
			<option>2</option>
			<option>3</option>
			<option>4</option>
			<option>5</option>
			<option>6</option>
			<option>7</option>
			<option>8</option>
			<option>9</option>
			<option>10</option>
			<option>11</option>
			<option>12</option>
			<option>13</option>
			<option>14</option>
			<option>15</option>
			<option>16</option>
		</select><br/>
		<input type="submit" value="Choose flight">
	</form>
<br>

View Revenue Generated By Customer:
<br>
	<form method="post" action="showRevByName.jsp">
		<select name="entity">
			<option>omar</option>
			<option>john</option>
			<option>jane</option>
			<option>test</option>
		</select><br/>
		<input type="submit" value="Choose name">
	</form>
<br>

View Revenue Generated By Airline:
<br>
	<form method="post" action="showRevByAirline.jsp">
		<select name="entity">
			<option>NY</option>
			<option>NW</option>
			<option>LA</option>
			<option>LO</option>
		</select><br/>
		<input type="submit" value="Choose airline">
	</form>
<br>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
View Flights by Airport:
<br>
	<form method="post" action="allFlights.jsp">
		Choose Airport
		<select name="airport">
			<option>LCY</option>
			<option>LAX</option>
			<option>JFK</option>
			<option>EWR</option>
		</select><br/>
		<input type="submit" value="Choose airport">
	</form>
<br>
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~<br/>
<%
    }
%>