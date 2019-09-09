<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta content="IE=edge" http-equiv="X-UA-Compatible">
    <meta content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1" name="viewport">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta content="" name="description">
    <meta content="oz" name="author">
    <title>Alternative Clothing</title>
    <link href="/img/favicon.ico" rel="shortcut icon" type="image/x-icon">
    <link as="font" crossorigin="anonymous" href="/fonts/icomoon/fonts/icomoon543e.ttf?x9i9xv" rel="preload" type="font/ttf">
    <!-- Vendor CSS -->
    <link href="/css/plugins.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/style-light.css" rel="stylesheet">
    <!-- Custom styles from me -->
    <link href="/css/styles.css" rel="stylesheet">
    <!--icon font-->
    <link href="/fonts/icomoon/icomoon.css" rel="stylesheet">
    <!--custom font-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
</head>

<body class="{{ isHome ? 'home-page' : '' }} is-dropdn-click has-slider">
    <div class="body-preloader">
        <div class="loader-wrap">
            <div class="dots">
                <div class="dot one"></div>
                <div class="dot two"></div>
                <div class="dot three"></div>
            </div>
        </div>
    </div>
    {% include "partials/header.volt" %}
    <div class="page-content">
        {{ content() }}
    </div>
    {% include "partials/footer.volt" %}
    <a class="back-to-top js-back-to-top compensate-for-scrollbar" href="#" title="Scroll To Top"><i class="icon icon-angle-up"></i></a>
    {#{% include "partials/quickview_modal.volt" %}#}
    {% include "partials/remove_add_modals.volt" %}
    {% include "partials/checkout_modal.volt" %}
    {#{% include "partials/news_modal.volt" %}#}
    <script src="/js/plugins.js"></script>
    <script src="/js/app.js"></script>
    <script src="/js/main.js"></script>
</body>

</html>