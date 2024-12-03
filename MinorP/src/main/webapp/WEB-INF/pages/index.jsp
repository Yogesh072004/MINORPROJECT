<%@page isELIgnored="false" %>

<!--<h1 style="color:red;text-align:center"><a href="report">Get Employee Data</a></h1>
<br><br>
<h1 style="color:red;text-align:center"><a href="report"><img alt="no image found" src="images/report.png"/></a></h1>
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>QR Code-based Smart Vehicle Parking</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <!-- Header -->
  <div id="header">
    <%@ include file="header.jsp" %>
</div>
<%
String resultmsg = (String) request.getAttribute("resultmsg"); // Fetch the flash attribute
if (resultmsg != null) {
%>
    <div>
        <h3 style="color:green; text-align:center;"><%= resultmsg %></h3>
    </div>
<%
}
%>



  <!-- Hero Section -->
  <div class="container text-center my-5">
    <img src="images/car.png" class="img-fluid rounded shadow-lg" alt="Smart Vehicle Parking">
    <h1 class="mt-4">QR Code-based Smart Vehicle Parking Management System</h1>
    <p class="text-muted">// Vehicle Parking //</p>
  </div>

  <!-- Footer -->
  <div id="footer"></div>

  <!-- JavaScript -->
 
 
  <div id="footer">
    <%@ include file="footer.jsp" %>
</div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
