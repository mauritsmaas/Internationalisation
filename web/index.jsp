<%--
  Created by IntelliJ IDEA.
  User: MauritsMaas
  Date: 7-3-2018
  Time: 13:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <!--TEST gijs-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <a class="navbar-brand" href="#">
            <img src="./res/img/logo2.png" width="80" alt="">
            Internationalisation</a>

        <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
            <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Universities <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Blog</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Sign in</a>
                </li>
            </ul>
        </div>
    </nav>

    <main>

    </main>

    <footer class="footer">
        <div class="container">
            <span class="text-muted">Team ice inc. all rights reserved.</span>
        </div>
    </footer>

    <script type="text/javascript" src="./res/jquery/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="./res/bootstrap-4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
