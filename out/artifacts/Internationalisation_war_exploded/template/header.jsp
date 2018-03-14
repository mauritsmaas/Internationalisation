<html>
<head>
    <title>Internationalisation</title>
    <link rel="stylesheet" href="./res/bootstrap-4.0.0/css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="./res/bootstrap-4.0.0/css/bootstrap-reboot.css">
    <link rel="stylesheet" href="./res/bootstrap-4.0.0/css/bootstrap.css">
    <style>
        html {
            position: relative;
            min-height: 100%;
        }
        body {
            /* Margin bottom by footer height */
            margin-bottom: 60px;
        }
        .footer {
            position: absolute;
            bottom: 0;
            width: 100%;
            /* Set the fixed height of the footer here */
            height: 60px;
            line-height: 60px; /* Vertically center the text there */
            background-color: #f5f5f5;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">
        <img src="./res/img/logo2.png" width="80" alt="">
        Internationalisation</a>

    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
        <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item">
                <a class="nav-link" href="index.jsp">Map</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="universities.jsp">Universities</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="blog.jsp">Blog</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="about.jsp">About</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="contact.jsp">Contact</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="signin.jsp">Sign in</a>
            </li>
            <li class="nav-item">
                <button class="btn" onclick="logout()">Logout</button>
            </li>
        </ul>
    </div>
</nav>