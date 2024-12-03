<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Registration</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .small-input {
      width: 75%;
    }
    
    .btn-login {
      color: white;
      background-color: #28a745; /* Green color */
      padding: 0.5rem 1rem;
      border: none;
      border-radius: 5px;
      text-decoration: none;
      display: inline-block;
    }
    .btn-login:hover {
      background-color: #218838; /* Darker green on hover */
    }
  </style>
</head>
<body>
  <!-- Header -->
  <div id="header">
    <%@ include file="header.jsp" %>
  </div>
  

  <div class="container my-5">
    <h1 class="text-danger text-center">Register User</h1>
    <form:form modelAttribute="user" name="frm" >
      
      <table class="table table-bordered table-hover" align="center">
        <tr>
          <td>USER Name:</td>
          <td><form:input path="uname" class="form-control small-input" /></td>
        </tr>
        <tr>
          <td>USER Password:</td>
          <td><form:password path="pwd" class="form-control small-input" /></td>
        </tr>
        <tr>
          <td>USER Email:</td>
          <td><form:input path="umail" class="form-control small-input" /></td>
        </tr>
        <tr>
          <td>Phone Number:</td>
          <td><form:input path="pno" class="form-control small-input" /></td>
        </tr>
        <tr>
          <td>DOB:</td>
          <td><form:input path="dob" type="date" class="form-control small-input"/></td>
        </tr>
        
       
     <tr>
    <td>Select Country:</td>
    <td>
      <form:select path="country" class="form-control small-input">
        <form:options items="${countriesinfo}" />
      </form:select>
    </td>
  </tr>
  <tr>
          <td>Address:</td>
          <td><form:textarea path="address" class="form-control small-input"></form:textarea></td>
        </tr>
        
        <tr>
          <td colspan="2" class="text-center"><input type="submit" value="Register" class="btn btn-primary" /></td>
        </tr>
         
      </table>
    </form:form>
    <h6 style="text-align:center"><a href="userlogin" class="btn-login">Login</a></h6>
  </div>

  <!-- Footer -->
  <div id="footer">
    <%@ include file="footer.jsp" %>
  </div>
</body>
</html>
