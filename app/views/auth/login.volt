<div class="holder mt-0">
    <div class="container">
        <ul class="breadcrumbs">
            <li><a href="/">Inicio</a></li>
            <li><span>Ingresar</span></li>
        </ul>
    </div>
</div>
<div class="holder mt-0">
    <div class="container">
        <div class="row justify-content-around">
            <div class="col-sm-6 col-md-4">
                <div id="loginForm">
                    <h2 class="text-center">INGRESAR</h2>
                    <div class="form-wrapper">
                        <p>Si ya estas registrado, por favor ingresa.</p>
                        <form action="" method="POST">
                            <div class="errors">
                                <ul>
                                    <li>{{ flashSession.output() }}</li>
                                </ul>
                            </div>
                            <div class="form-group"><input type="email" class="form-control" name="username" placeholder="Usuario"></div>
                            <div class="form-group"><input type="password" class="form-control" name="password" placeholder="Contraseña"></div>
                            <p class="text-uppercase"><a href="#" class="js-toggle-forms">¿Olvidaste tu contrseña?</a></p>
                            <div class="clearfix"><input id="rememberMe" name="rememberMe" type="checkbox"><label for="rememberMe">Recuerdame</label></div><button type="submit" class="btn">Ingresar</button>
                        </form>
                    </div>
                </div>
                <div id="recoverPasswordForm" class="d-none">
                    <h2 class="text-center">RECUPERA TU CONTRASEÑA</h2>
                    <div class="form-wrapper">
                        <p>Te enviaremos con las indicaciones para recuperar tu contraseña</p>
                        <form action="#">
                            <div class="form-group"><input type="text" class="form-control" placeholder="Your Name"></div>
                            <div class="form-group"><input type="password" class="form-control" placeholder="Password"></div>
                            <div class="btn-toolbar"><a href="#" class="btn btn--alt js-toggle-forms">Cancelar</a><button class="btn ml-1">Enviar</button></div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="col-divider"></div>
            <div class="col-sm-6 col-md-4 mt-3 mt-sm-0">
                <h2 class="text-center">REGÍSTRATE</h2>
                <div class="form-wrapper">
                    <p>Al crear un cuenta con nosotros, seras capaz de moverte mas rapido en proceso de compra, guardar distintas direcciones de envio, ver y monitorear tus ordenes y más.</p><a href="/auth/register" class="btn">crear una cuenta</a>
                </div>
            </div>
        </div>
    </div>
</div>