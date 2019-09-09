<div class="holder mt-0">
    <div class="container">
        <ul class="breadcrumbs">
            <li><a href="/">Inicio</a></li>
            <li><span>Registrar</span></li>
        </ul>
    </div>
</div>
<div class="holder mt-0">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-sm-8 col-md-6">
                <h2 class="text-center">REGÍSTRATE</h2>
                <div class="form-wrapper">
                    <p>Crea una cuenta con nosotros y disfruta de nuestros beneficios como pago rapido, almacenar distintas direcciones, preferencias de contacto y carrito de compras persistente</p>
                    <form id="registerForm" action="" method="POST">
                        <div class="errors">
                            <ul>
                                <li>{{ flashSession.output() }}</li>
                            </ul>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group"><input name="name" type="text" class="form-control" placeholder="Nombre"></div>
                            </div>
                            <div class="col-sm-6">
                                <div class="form-group"><input name="surname" type="text" class="form-control" placeholder="Apellidos"></div>
                            </div>
                        </div>
                        <div class="form-group"><input name="email" type="email" class="form-control" placeholder="E-mail (Este sera tu usuario)"></div>
                        <div class="form-group"><input name="password" type="password" class="form-control" placeholder="Contraseña"></div>
                        <div class="form-group"><input name="confirmPassword" type="password" class="form-control" placeholder="Confirmar Contraseña"></div>
                        <div class="row">
                            <div class="col-sm-4">
                                <label for="birthdate">Fecha de nacimiento</label>
                            </div>
                            <div class="col-sm-8">
                                <input id="birthdate" name="birthdate" type="date" class="form-control">
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <input name="address" type="text" class="form-control" placeholder="Direccion">
                            </div>
                            <div class="col-sm-3">
                                <select name="district" class="form-control">
                                    <option hidden selected>Distrito</option>
                                    {% for dis in districts %}
                                        <option value="{{ dis.id }}|{{ dis.name }}">{{ dis.name }}</option>
                                    {% endfor %}
                                </select>
                            </div>
                            <div class="col-sm-3">
                                <select name="department" class="form-control" readonly>
                                    {% for dep in departments %}
                                        <option selected value="{{ dep.id }}|{{ dep.name }}">{{ dep.name }}</option>
                                    {% endfor %}
                                </select>
                            </div>
                        </div>
                        <div class="clearfix">
                            <input id="terms" name="terms" type="checkbox">
                            <label for="terms">Al registrarte aceptas estar de acuerdo con nuestros Terminos y condiciones, privacidad y politicas de cookies</label>
                        </div>
                        <div class="text-center"><button class="btn">Crear tu cuenta</button></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>