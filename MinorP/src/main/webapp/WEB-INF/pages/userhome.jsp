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
  <nav class="navbar navbar-expand-lg navbar-dark bg-danger">
  <div class="container">
    <img alt="CAR PARKING" src="images/icon.jpeg" width="60" height="50">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav ms-auto">
        <li class="nav-item">
          <a class="nav-link custom-link" href="./">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link custom-link" href="ps">Parking Slots</a>
        </li>
        <li class="nav-item">
          <a class="nav-link custom-link" href="bps">Book Parking Slot</a>
        </li>
        <li class="nav-item">
          <a class="nav-link custom-link" href="yb">Your Bookings</a>
        </li>
        <li class="nav-item">
          <a class="nav-link custom-link" href="logout">Logout</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>

<style>
  /* Add transitions for smooth effect */
  .custom-link {
    position: relative;
    color: white;
    transition: color 0.3s ease, background-color 0.3s ease;
  }

  /* Hover effect */
  .custom-link:hover {
    color: #ffcc00; /* Gold color on hover */
    text-decoration: none;
    background-color: rgba(255, 255, 255, 0.2);
    border-radius: 5px;
  }

  /* Active link effect */
  .custom-link:active {
    color: #ffd700; /* Lighter gold */
    background-color: rgba(255, 255, 255, 0.4);
  }

  /* Optional underline animation */
  .custom-link::after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 0;
    height: 2px;
    background: #ffcc00; /* Match the hover color */
    transition: width 0.3s ease;
  }

  .custom-link:hover::after {
    width: 100%;
  }
</style>
  
      <div>
        <h3 style="color:red; text-align:center;">USER HOME</h3>
    </div>




  <!-- Hero Section -->
  <div class="container text-center my-5">
    <img src="images/car.png" class="img-fluid rounded shadow-lg" alt="Smart Vehicle Parking">
    <h1 class="mt-4">QR Code-based Smart Vehicle Parking Management System</h1>
    <p class="text-muted">// Vehicle Parking //</p>
  </div>

  
 
 
  <div id="footer">
    <%@ include file="footer.jsp" %>
</div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
