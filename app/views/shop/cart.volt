 <div class="holder mt-0">
    <div class="container">
        <ul class="breadcrumbs">
            <li><a href="index.html">Inicio</a></li>
            <li><span>Carrito</span></li>
        </ul>
    </div>
</div>
<div class="holder mt-0">
    <div class="container">
        <h1 class="text-center">Carrito de compras</h1>
        <div class="row">
            <div class="col-md-8">
                <div class="cart-table">
                    {% for key, item in cart %}
                        <div class="cart-table-prd" data-id="{{ item['id'] }}">
                            <div class="cart-table-prd-image"><a href="#"><img src="{{ item['img'] }}" alt=""></a></div>
                            <div class="cart-table-prd-name">
                                <h2><a href="#">{{ item['name'] }}</a></h2>
                            </div>
                            <div class="cart-table-prd-qty"><span>cantidad: </span> <b>{{ item['qty'] }}</b></div>
                            <div class="cart-table-prd-price"><span>precio: </span> <b>S/. {{ item['totalPrice'] }}</b></div>
                            <div class="cart-table-prd-action">
                                <a href="#" class="icon-pencil"></a> 
                                <a href="#" class="icon-cross"></a>
                            </div>
                        </div>
                    {% else %}
                        <div>Aun ho has agregado articulos en tu carrito</div>
                    {% endfor %}
                    <div class="cart-table-total">
                        <div class="row">
                            <div class="col-sm"><a href="#" class="btn btn--alt"><i class="icon-cross"></i><span>Limpiar carrito de compras</span></a></div>
                            <div class="col-sm-auto"><a href="/search" class="btn"><i class="icon-angle-left"></i><span>continuar comprando</span></a></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="sidebar-block">
                    <div style="display: none;" id="successPromo" class="text-success">Descuento Aplicado!</div>
                    <div style="display: none;" id="errorPromo" class="text-danger">Codigo Invalido</div>
                    <div class="card-total text-uppercase">Subtotal <span class="card-total-price" id="subtotalAmount">S/. {{ cartTotal }}</span></div><a href="checkout" class="btn btn--full btn--lg">PAGAR AHORA</a>
                </div>
                <div class="sidebar-block open">
                    <div class="sidebar-block_title"><span>APLICAR CODIGO DE DESCUENTO</span>
                        <div class="toggle-arrow"></div>
                    </div>
                    <div class="sidebar-block_content"><label class="text-uppercase">codigo:</label>
                        <div class="form-flex">
                            <div class="form-group"><input id="promoCode" type="text" class="form-control"></div><button id="applyPromoCode" type="submit" class="btn btn--form btn--alt">APLICAR</button>
                        </div>
                    </div>
                </div>
                <div class="sidebar-block collapsed">
                    <div class="sidebar-block_title"><span>COSTO DE ENVIO</span>
                        <div class="toggle-arrow"></div>
                    </div>
                    <div class="sidebar-block_content">
                        <label class="text-uppercase">Pais:</label>
                        <div class="form-group select-wrapper"><select class="form-control">
                                <option value="Peru">Peru</option>
                            </select></div>
                        <label class="text-uppercase">Departamento:</label>
                        <div class="form-group select-wrapper"><select class="form-control">
                                <option value="LIM">Lima</option>
                            </select></div>
                    </div>
                </div>
                <div class="sidebar-block collapsed">
                    <div class="sidebar-block_title"><span>COMENTARIO</span>
                        <div class="toggle-arrow"></div>
                    </div>
                    <div class="sidebar-block_content"><label class="text-uppercase">Escribe un comentario aqui:</label> <textarea class="form-control textarea--height-200"></textarea></div>
                </div>
            </div>
        </div>
    </div>
</div>