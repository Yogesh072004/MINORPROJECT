<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Login</title>
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
            <h2 class="text-center text-danger">// User Login //</h2>
            <h1 class="text-center mb-4">Login</h1>
    <form:form modelAttribute="user" name="frm" >
                
            
              <div class="mb-3">
                <label for="email" class="form-label">Email</label>
<form:input path="umail" class="form-control" placeholder="Enter your mail" />
              </div>
              <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <form:password path="pwd" class="form-control small-input" placeholder ="Enter Your Password"/>
              </div>
              <div class="d-grid">
                <input type="submit" class="btn btn-danger" value="LOGIN"></input>
              </div>
            </form:form>
            <div class="mt-3 text-center">
              <p>Don't have an account? <a href="userregister">Register here</a></p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="alert alert-danger" role="alert" style="display: ${error != null ? 'block' : 'none'};">
    ${error}
</div>

  <!-- Footer -->
  <div id="footer">
    <%@ include file="footer.jsp" %>
</div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
