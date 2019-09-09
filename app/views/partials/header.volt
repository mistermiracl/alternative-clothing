{% set isLoggedUser = not(session.get('isLoggedUser') is empty) ? session.get('isLoggedUser') : false %}
{% set loggedUser = session.get('loggedUser')  %}
<header class="hdr global_width hdr-style-7 hdr_sticky minicart-icon-style-5 hdr-mobile-style2">
    <!-- Mobile Menu -->
    <div class="mobilemenu js-push-mbmenu">
        <div class="mobilemenu-content">
            <div class="mobilemenu-close mobilemenu-toggle">CERRAR</div>
            <div class="mobilemenu-scroll">
                <div class="mobilemenu-search"></div>
                <div class="nav-wrapper show-menu">
                    <div class="nav-toggle"><span class="nav-back"><i class="icon-arrow-left"></i></span> <span class="nav-title"></span></div>
                    <ul class="nav nav-level-1">
                        <li><a href="/search">Nuevos Productos</a><span class="arrow"></span>
                            <ul class="nav-level-2">
                                <li><a href="/search?type=shoes" title="">Zapatos</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?type=shoes">Tacos</a></li>
                                        <li><a href="/search?type=shoes">Botas</a></li>
                                        <li><a href="/search?type=shoes">Pantuflas</a></li>
                                        <li><a href="/search?type=shoes">Zapatillas</a></li>
                                    </ul>
                                </li>
                                <li><a href="/search?type=tops" title="">Tops</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?type=tops">Vestidos</a></li>
                                        <li><a href="/search?type=tops">Polos</a></li>
                                        <li><a href="/search?type=tops">Abrigos</a></li>
                                        <li><a href="/search?type=tops">Chompas</a></li>
                                    </ul>
                                </li>
                                <li><a href="/search?type=bottoms" title="">Bottoms</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?type=bottoms">Jeans</a></li>
                                        <li><a href="/search?type=bottoms">Pantalones</a></li>
                                        <li><a href="/search?type=bottoms">Trajes</a></li>
                                        <li><a href="/search?type=bottoms">Medias</a></li>
                                    </ul>
                                </li>
                                <li><a href="/search?type=accesories" title="">Accessories</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?type=accesories">Sunglasses</a></li>
                                        <li><a href="/search?type=accesories">Hats</a></li>
                                        <li><a href="/search?type=accesories">Watches</a></li>
                                        <li><a href="/search?type=accesories">Jewelry</a></li>
                                        <li><a href="/search?type=accesories">Belts</a></li>
                                    </ul>
                                </li>
                                <li><a href="/search?type=bags" title="">Bags</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?type=bags">Handbags</a></li>
                                        <li><a href="/search?type=bags">Backpacks</a></li>
                                        <li><a href="/search?type=bags">Luggage</a></li>
                                        <li><a href="/search?type=bags">wallets</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="">Categorias</a><span class="arrow"></span>
                            <ul class="nav-level-2">
                                <li>
                                    <a href="/search?gen=men" title="">Hombre</a>
                                </li>
                                <li>
                                    <a href="/search?gen=women" title="">Mujer</a>
                                </li>
                                <li>
                                    <a href="">Por Color</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?color=red">Rojo</a></li>
                                        <li><a href="/search?color=black">Negro</a></li>
                                        <li><a href="/search?color=white">Blanco</a></li>
                                        <li><a href="/search?color=green">Verde</a></li>
                                        <li><a href="/search?color=purple">Violeta</a></li>
                                        <li><a href="/search?color=blue">Azul</a></li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="">Por Estilo</a><span class="arrow"></span>
                                    <ul class="nav-level-3">
                                        <li><a href="/search?type=tops">Tops y Polos</a></li>
                                        <li><a href="/search?type=bottoms">Pantalones y Buzos</a></li>
                                        <li><a href="/search?type=shoes">Zapatos / Zapatillas</a></li>
                                        <li><a href="/search?type=accesories">Accesorios</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="mobilemenu-bottom">
                    <div class="mobilemenu-currency"></div>
                    <div class="mobilemenu-language"></div>
                    <div class="mobilemenu-settings"></div>
                </div>
            </div>
        </div>
    </div>
    <!-- /Mobile Menu -->
    <div class="hdr-mobile show-mobile">
        <div class="hdr-content">
            <div class="container">
                <!-- Menu Toggle -->
                <div class="menu-toggle"><a href="#" class="mobilemenu-toggle"><i class="icon icon-menu"></i></a></div>
                <!-- /Menu Toggle -->
                <div class="logo-holder"><a href="/" class="logo"><img src="/img/short_logo.png" srcset="/img/short_logo.png" alt=""></a></div>
                <div class="hdr-mobile-right">
                    <div class="hdr-topline-right links-holder"></div>
                    <div class="minicart-holder"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="hdr-desktop hide-mobile">
        <div class="hdr-content">
            <div class="container">
                <div class="hdr-content-left links-holder">
                    <!-- Header Account -->
                    <div class="dropdn dropdn_account @@classes">
                        <a href="{{ isLoggedUser ? '#' : '/auth/login' }}" class="dropdn-link"><i class="icon icon-{{ isLoggedUser ? 'person' : 'lock' }}"></i><span>{{ isLoggedUser ? 'Bienvenido <b>' ~ loggedUser.name ~ ' ' ~ loggedUser.surname ~ '</b>' : 'Ingresar' }}</span></a>
                        {% if isLoggedUser %}
                            <div class="dropdn-content">
                                <div class="container">
                                    <div class="dropdn-close">CERRAR</div>
                                    <ul>
                                        <li><a href="/auth/profile"><i class="icon icon-person-fill"></i><span>Perfil</span></a></li>
                                        <li><a href="/shop/cart"><i class="icon icon-check-box"></i><span>Pagar Ahora</span></a></li>
                                        <li><a href="/auth/logout"><span><i class="icon icon-return"></i>Salir</span></a></li>
                                    </ul>
                                </div>
                            </div>
                        {% endif %}
                    </div>
                    <!-- /Header Account -->
                    <!-- Header Search -->
                    <div class="dropdn dropdn_search hide-mobile @@classes">
                        <a href="#" class="dropdn-link"><i class="icon icon-search2"></i><span>Buscar</span></a>
                        <div class="dropdn-content">
                            <div class="container">
                                <form action="#" class="search">
                                    <button type="submit" class="search-button"><i class="icon-search2"></i></button> <input type="text" class="search-input" placeholder="palabra clave">
                                    <div class="search-popular js-search-autofill"><span class="search-popular-label">Busquedas Populares:</span> <a href="#">Jeans</a> <a href="#">Polos</a> <a href="#">Zapatillas</a></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- /Header Search -->
                </div>
                <div class="logo-holder"><a href="/" class="logo"><img src="/img/short_logo.png" srcset="/img/short_logo.png" alt=""></a></div>
                <div class="hdr-content-right">
                    {#<div class="links-holder">
                        <!-- Header Wishlist -->
                        <div class="dropdn dropdn_wishlist @@classes"><a href="account-wishlist.html" class="dropdn-link"><i class="icon icon-heart-1"></i><span>Wishlist</span></a></div>
                        <!-- /Header Wishlist -->
                    </div>#}
                    <div class="minicart-holder">
                        <div class="minicart minicart-js"><a href="/shop/cart" class="minicart-link"><i class="icon icon-handbag"></i> <span id="cartQty" class="minicart-qty">{{ cartQty }}</span> <span class="minicart-title">Carrito de Compras</span> <span class="minicart-total">Total S/. <span id="cartTotal">{{ cartTotal }}</span></span></a>
                            <div class="minicart-drop">
                                <div class="container">
                                    <div class="minicart-drop-close">CLOSE</div>
                                    <div class="minicart-drop-content">
                                        <h3>Recently added items:</h3>
                                        <div class="minicart-prd">
                                            <div class="minicart-prd-image"><a href="#"><img src="/img/products/product-placeholder.png" data-srcset="/img/products/xsmall/product-05.jpg" class="lazyload" alt=""></a></div>
                                            <div class="minicart-prd-name">
                                                <h5><a href="#">canverse</a></h5>
                                                <h2><a href="#">Checkered shirt</a></h2>
                                            </div>
                                            <div class="minicart-prd-qty"><span>qty:</span> <b>1</b></div>
                                            <div class="minicart-prd-price"><span>price:</span> <b>$ 75.00</b></div>
                                            <div class="minicart-prd-action"><a href="#" class="icon-heart js-label-wishlist"></a> <a href="/search/product" class="icon-pencil"></a> <a href="#" class="icon-cross js-product-remove"></a></div>
                                        </div>
                                        <div class="minicart-prd">
                                            <div class="minicart-prd-image"><a href="#"><img src="/img/products/product-placeholder.png" data-srcset="/img/products/xsmall/product-02.jpg" class="lazyload" alt=""></a></div>
                                            <div class="minicart-prd-name">
                                                <h5><a href="#">canverse</a></h5>
                                                <h2><a href="#">Long top with print</a></h2>
                                            </div>
                                            <div class="minicart-prd-qty"><span>qty:</span> <b>1</b></div>
                                            <div class="minicart-prd-price"><span>price:</span> <b>$ 20.00</b></div>
                                            <div class="minicart-prd-action"><a href="#" class="icon-heart js-label-wishlist"></a> <a href="/search/product" class="icon-pencil"></a> <a href="#" class="icon-cross js-product-remove"></a></div>
                                        </div>
                                        <div class="minicart-prd">
                                            <div class="minicart-prd-image"><a href="#"><img src="/img/products/product-placeholder.png" data-srcset="/img/products/xsmall/product-14.jpg" class="lazyload" alt=""></a></div>
                                            <div class="minicart-prd-name">
                                                <h5><a href="#">saucany</a></h5>
                                                <h2><a href="#">Knitted sweater</a></h2>
                                            </div>
                                            <div class="minicart-prd-qty"><span>qty:</span> <b>1</b></div>
                                            <div class="minicart-prd-price"><span>price:</span> <b>$ 199.00</b></div>
                                            <div class="minicart-prd-action"><a href="#" class="icon-heart js-label-wishlist"></a> <a href="/search/product" class="icon-pencil"></a> <a href="#" class="icon-cross js-product-remove"></a></div>
                                        </div>
                                        <div class="minicart-drop-total">
                                            <div class="float-right"><span class="minicart-drop-summa"><span>Cart Subtotal:</span> <b>$ 294.00</b></span>
                                                <!--<div class="minicart-drop-btns-wrap"><a href="checkout.html" class="btn"><i class="icon-check-box"></i><span>checkout</span></a> <a href="cart.html" class="btn btn--alt"><i class="icon-handbag"></i><span>view cart</span></a></div>-->
                                            </div>
                                            <div class="float-left"><a href="/shop/cart" class="btn btn--alt"><i class="icon-handbag"></i><span>view cart</span></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="nav-holder">
            <div class="hdr-nav">
                <div class="container">
                    <!--mmenu-->
                    <ul class="mmenu mmenu-js">
                    <li class="mmenu-item--mega"><a href="/search">Categorias<span class="menu-label menu-label--color4">OFERTA</span></a>
                            <div class="mmenu-submenu">
                                <div class="mmenu-submenu-inside">
                                    <div class="container">
                                        <div class="mmenu-right width-25">
                                            <!--banners grid from the editor Banner21 --> <a href="/search/product" class="bnr-wrap">
                                                <div class="bnr bnr21 bnr--style-1-1 bnr--left bnr--bottom bnr-hover-scale" data-fontratio="2.63"><img src="/img/menu/mega-banner.jpg" alt=""> <span class="bnr-caption" style="padding: 8% 8%;"><span class="bnr-text-wrap"><span class="bnr-text5">try<br>to be 1-st</span> <span class="btn-decor btn-decor--xs bnr-btn">shop new arrivals<span class="btn-line"></span></span></span></span></div>
                                            </a>
                                            <!--banners grid from the editor -->
                                        </div>
                                        <div class="mmenu-cols column-5">
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search?gen=men">Hombre</a></h3>
                                                <h3 class="submenu-title"><a href="/search?gen=woman">Mujer</a></h3>
                                                <h3 class="submenu-title"><a href="/search?state=sale">En Oferta</a></h3>
                                            </div>
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">Por Color</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search?color=red"><span class="color" style="background-color: #ff0000;"></span><span>Rojo</span></a></li>
                                                    <li><a href="/search?color=black"><span class="color" style="background-color: #000000;"></span><span>Negro</span></a></li>
                                                    <li><a href="/search?color=white"><span class="color" style="background-color: #ffffff;"></span><span>Blanco</span></a></li>
                                                    <li><a href="/search?color=green"><span class="color" style="background-color: #15c979;"></span><span>Verde</span></a></li>
                                                    <li><a href="/search?color=purple"><span class="color" style="background-color: #d81f5e;"></span><span>Violeta</span></a></li>
                                                    <li><a href="/search?color=orange"><span class="color" style="background-color: #ff9f15;"></span><span>Naranja</span></a></li>
                                                    <li><a href="/search?color=blue"><span class="color" style="background-color: #2196f3;"></span><span>Azul</span></a></li>
                                                </ul><a href="/search" class="submenu-view-more">View More</a>
                                            </div>
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">Por estilo</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search?type=tops">Tops</a></li>
                                                    <li><a href="/search?type=bottoms">Bottoms</a></li>
                                                    <li><a href="/search?type=shoes">Zapatos / Zapatillas</a></li>
                                                    <li><a href="/search?type=accesories">Accesorios</a></li>
                                                </ul><a href="/search" class="submenu-view-more">View More</a>
                                            </div>
                                        </div>
                                        <div class="mmenu-bottom">
                                            <div class="custom-text"><span>FREE</span> STANDARD DELIVERY ON ORDERS OVER $ 150</div>
                                            <div class="custom-text"><span>100%</span> money back guarantee</div>
                                            <div class="custom-text"><span>24/7</span> customer support</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="mmenu-item--mega"><a href="/search">Nuevas Prendas</a>
                            <div class="mmenu-submenu mmenu-submenu-with-sublevel">
                                <div class="mmenu-submenu-inside">
                                    <div class="container">
                                        <div class="mmenu-right width-20">
                                            <h4 class="text-center submenu-title">Featured</h4>
                                            <div class="prd-carousel-menu" data-slick='{"slidesToShow": 1, "slidesToScroll": 1, "arrows": true}'>
                                                <div class="prd-sm"><a href="/search" class="prd-img"><img src="/img/products/product-placeholder.png" data-srcset="/img/products/product-11-2.jpg" class="lazyload" alt=""></a>
                                                    <div class="prd-info">
                                                        <h2 class="prd-title"><a href="/search">Leather belt</a></h2>
                                                        <div class="prd-price">
                                                            <div class="price-new">$ 90.00</div>
                                                            <div class="price-old">$ 150.00</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="prd-sm"><a href="/search" class="prd-img"><img src="/img/products/product-placeholder.png" data-srcset="/img/products/product-06-2.jpg" class="lazyload" alt=""></a>
                                                    <div class="prd-info">
                                                        <h2 class="prd-title"><a href="/search">Louboutin</a></h2>
                                                        <div class="prd-price">
                                                            <div class="price-new">$ 110.00</div>
                                                            <div class="price-old">$ 210.00</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="prd-sm"><a href="/search" class="prd-img"><img src="/img/products/product-placeholder.png" data-srcset="/img/products/product-08-2.jpg" class="lazyload" alt=""></a>
                                                    <div class="prd-info">
                                                        <h2 class="prd-title"><a href="/search">Office bag</a></h2>
                                                        <div class="prd-price">
                                                            <div class="price-new">$ 210.00</div>
                                                            <div class="price-old">$ 310.00</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mmenu-cols column-5">
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">shoes</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search">Boots</a></li>
                                                    <li><a href="/search">Flats</a></li>
                                                    <li><a href="/search">Sneakers & Athletic</a></li>
                                                    <li><a href="/search">Clogs & Mules</a></li>
                                                </ul><a href="/search" class="submenu-view-more">View More</a>
                                                <div class="submenu-img"><a href="/search"><img src="/img/placeholder.png" data-src="/img/menu/category-img-01.jpg" class="lazyload" alt=""></a></div>
                                            </div>
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">tops</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search">Dresses</a></li>
                                                    <li><a href="/search">Shirts & Tops</a></li>
                                                    <li><a href="/search">Coats & Outerwear</a></li>
                                                    <li><a href="/search">Sweaters</a></li>
                                                </ul>
                                                <div class="submenu-img"><a href="/search"><img src="/img/placeholder.png" data-src="/img/menu/category-img-02.jpg" class="lazyload" alt=""></a></div>
                                            </div>
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">bottoms</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search">Jeans</a></li>
                                                    <li><a href="/search">Pants</a></li>
                                                    <li><a href="/search">slippers</a></li>
                                                    <li><a href="/search">suits</a></li>
                                                    <li><a href="/search">socks</a></li>
                                                </ul><a href="/search" class="submenu-view-more">View More</a>
                                                <div class="submenu-img"><a href="/search"><img src="/img/placeholder.png" data-src="/img/menu/category-img-03.jpg" class="lazyload" alt=""></a></div>
                                            </div>
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">accessories</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search">Sunglasses</a></li>
                                                    <li><a href="/search">Hats</a></li>
                                                    <li><a href="/search">Watches</a></li>
                                                    <li><a href="/search">Jewelry</a></li>
                                                    <li><a href="/search">Belts</a></li>
                                                </ul><a href="/search" class="submenu-view-more">View More</a>
                                                <div class="submenu-img"><a href="category.html"><img src="/img/placeholder.png" data-src="/img/menu/category-img-04.jpg" class="lazyload" alt=""></a></div>
                                            </div>
                                            <div class="mmenu-col">
                                                <h3 class="submenu-title"><a href="/search">bags</a></h3>
                                                <ul class="submenu-list">
                                                    <li><a href="/search">Handbags</a></li>
                                                    <li><a href="/search">Backpacks</a></li>
                                                    <li><a href="/search">Luggage</a></li>
                                                    <li><a href="/search">wallets</a></li>
                                                </ul><a href="/search" class="submenu-view-more">View More</a>
                                                <div class="submenu-img"><a href="/search"><img src="/img/placeholder.png" data-src="/img/menu/category-img-05.jpg" class="lazyload" alt=""></a></div>
                                            </div>
                                        </div>
                                        <div class="mmenu-bottom">
                                            <div class="custom-text"><span>FREE</span> STANDARD DELIVERY ON ORDERS OVER $ 150</div>
                                            <div class="custom-text"><span>100%</span> money back guarantee</div>
                                            <div class="custom-text"><span>24/7</span> customer support</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <!--/mmenu-->
                </div>
            </div>
        </div>
    </div>
    <div class="sticky-holder compensate-for-scrollbar">
        <div class="container">
            <div class="row"><a href="#" class="mobilemenu-toggle show-mobile"><i class="icon icon-menu"></i></a>
                <div class="col-auto logo-holder-s"><a href="index.html" class="logo"><img src="/img/short_logo.png" srcset="/img/short_logo.png" alt=""></a></div>
                <!--navigation-->
                <div class="prev-menu-scroll icon-angle-left prev-menu-js"></div>
                <div class="nav-holder-s"></div>
                <div class="next-menu-scroll icon-angle-right next-menu-js"></div>
                <!--//navigation-->
                <!--FILLED DINAMICALLY WITH JAVASCRIPT-->
                <div class="col-auto minicart-holder-s"></div>
            </div>
        </div>
    </div>
</header>