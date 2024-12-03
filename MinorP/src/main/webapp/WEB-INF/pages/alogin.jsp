<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Administrator Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
  <!-- Header -->
  <div id="header">
  <%@ include file="header.jsp" %>
  </div>
  

  <!-- Login Section -->
  <div class="container my-5">
    <div class="row justify-content-center">
      <div class="col-md-6">
        <div class="card shadow">
          <div class="card-body">
            <h2 class="text-center text-danger">// Administrator //</h2>
            <h1 class="text-center mb-4">Administrator Login</h1>
            <form>
              <div class="mb-3">
                <label for="username" class="form-label">Name</label>
                <input type="text" class="form-control" id="username" placeholder="Enter your name" required>
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control" id="password" placeholder="Enter your password" required>
              </div>
              <div class="d-grid">
                <button type="submit" class="btn btn-danger">Login</button>
              </div>
            </form>
            
          </div>
        </div>
      </div>
    </div>
  </div>

  

  <div id="footer">
    <%@ include file="footer.jsp" %>
</div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
