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
          <a class="nav-link custom-link" href="alogin">Administrator</a>
        </li>
        <li class="nav-item">
          <a class="nav-link custom-link" href="userlogin">Users</a>
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
