$(document).on('ready', function() {

    var PRODUCTS = {
        '1' : {
            'id' : 1,
            'img' : '/img/products/product-01.jpg',
            'name' : 'Glamor shoes',
            'price' : 34.00,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0001',
            'stock' : 39,
            'description' : 'Long top with print',
            'colors' : [
                '/img/products/product-01.jpg',
                '/img/products/product-01-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'cuero'
            ]
        },
        '2' : {
            'id' : 2,
            'img' : '/img/products/product-02.jpg',
            'name' : 'Long top with print',
            'price' : 20,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0002',
            'stock' : 39,
            'description' : 'Long top with print',
            'colors' : [
                '/img/products/product-02.jpg',
                '/img/products/product-02-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'seda'
            ]
        },
        '3' : {
            'id' : 3,
            'img' : '/img/products/product-03.jpg',
            'name' : 'Tie with texture',
            'price' : 70,
            'discountedPrice' : 34,
            'sale' : true,
            'discount' : 51,
            'sku' : '#0003',
            'stock' : 39,
            'description' : 'Tie with texture',
            'colors' : [
                '/img/products/product-03.jpg',
                '/img/products/product-03-2.jpg',
                '/img/products/product-03-3.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'seda'
            ]
        },
        '4' : {
            'id' : 4,
            'img' : '/img/products/product-04.jpg',
            'name' : 'Fashionable jacket',
            'price' : 280,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0004',
            'stock' : 0,
            'description' : 'Fashionable jacket',
            'colors' : {
            },
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'cuero', 'seda'
            ]
        },
        '5' : {
            'id' : 5,
            'img' : '/img/products/product-05.jpg',
            'name' : 'Checkered shirt',
            'price' : 200,
            'discountedPrice' : 75,
            'sale' : true,
            'discount' : 62,
            'sku' : '#0005',
            'stock' : 39,
            'description' : 'Checkered shirt',
            'colors' : [
                '/img/products/product-05.jpg',
                '/img/products/product-05-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'seda'
            ]
        },
        '6' : {
            'id' : 6,
            'img' : '/img/products/product-06.jpg',
            'name' : 'Louboutin',
            'price' : 11,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0006',
            'stock' : 39,
            'description' : 'Louboutin',
            'colors' : [
                '/img/products/product-06.jpg',
                '/img/products/product-06-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'cuero'
            ]
        },
        '7' : {
            'id' : 7,
            'img' : '/img/products/product-07.jpg',
            'name' : 'Long shirts',
            'price' : 160,
            'discountedPrice' : 110,
            'sale' : true,
            'discount' : 31,
            'sku' : '#0007',
            'stock' : 39,
            'description' : 'Long shirts',
            'colors' : [
                '/img/products/product-07.jpg',
                '/img/products/product-07-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'seda'
            ]
        },
        '8' : {
            'id' : 8,
            'img' : '/img/products/product-08.jpg',
            'name' : 'Office bag',
            'price' : 300,
            'discountedPrice' : 210,
            'sale' : true,
            'discount' : 30,
            'sku' : '#0008',
            'stock' : 39,
            'description' : 'Office bag',
            'colors' : [
                '/img/products/product-08.jpg',
                '/img/products/product-08-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'cuero'
            ]
        },
        '9' : {
            'id' : 9,
            'img' : '/img/products/product-09.jpg',
            'name' : 'Office shirt',
            'price' : 78,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0009',
            'stock' : 39,
            'description' : 'Office shirt',
            'colors' : [
                '/img/products/product-09.jpg',
                '/img/products/product-09-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'seda'
            ]
        },
        '10' : {
            'id' : 10,
            'img' : '/img/products/product-10.jpg',
            'name' : 'Flip Flops Easy',
            'price' : 240,
            'discountedPrice' : 122,
            'sale' : true,
            'discount' : 29,
            'sku' : '#0010',
            'stock' : 39,
            'description' : 'Flip Flops Easy',
            'colors' : [
                '/img/products/product-10.jpg',
                '/img/products/product-10-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'sintetico'
            ]
        },
        '11' : {
            'id' : 11,
            'img' : '/img/products/product-11.jpg',
            'name' : 'Leather belt',
            'price' : 87,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0011',
            'stock' : 39,
            'description' : 'Leather belt',
            'colors' : [
                '/img/products/product-11.jpg',
                '/img/products/product-11-2.jpg'
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'cuero'
            ]
        },
        '12' : {
            'id' : 12,
            'img' : '/img/products/product-12.jpg',
            'name' : 'Headscarf',
            'price' : 5,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0012',
            'stock' : 39,
            'description' : 'Headscarf',
            'colors' : [
            ],
            'sizes' : [
                's',
                'm'
            ],
            'materials' : [
                'lana'
            ]
        },
        '13' : {
            'id' : 13,
            'img' : '/img/products/product-13.jpg',
            'name' : 'Purse with flowers',
            'price' : 34,
            'discountedPrice' : 0,
            'sale' : false,
            'discount' : 0,
            'sku' : '#0013',
            'stock' : 39,
            'description' : 'Purse with flowers',
            'colors' : [
            ],
            'sizes' : [
                's'
            ],
            'materials' : [
                'cuero'
            ]
        },
        '14' : {
            'id' : 14,
            'img' : '/img/products/product-14.jpg',
            'name' : 'Knitted sweater',
            'price' : 260,
            'discountedPrice' : 190,
            'sale' : true,
            'discount' : 23,
            'sku' : '#0014',
            'stock' : 39,
            'description' : 'Knitted sweater',
            'colors' : [
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'lana'
            ]
        },
        '15' : {
            'id' : 15,
            'img' : '/img/products/product-15.jpg',
            'name' : 'Dress with print',
            'price' : 75,
            'discountedPrice' : 15,
            'sale' : true,
            'discount' : 78,
            'sku' : '#0015',
            'stock' : 39,
            'description' : 'Dress with print',
            'colors' : [
            ],
            'sizes' : [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' : [
                'seda'
            ]
        },
    };

    $('.form-date-group > input').on('focus', function(e) {
        this.blur();
        e.preventDefault();
    });

    $(".prd-action button.btn").on('click', function(){
        //var productCount = $('.search-product-count');
        //var filterCount = $('#filterCount');
        var cartQty = $('#cartQty');
        var cartTotal = $('#cartTotal');

        var proQty = parseFloat($('.qty-input').val()) > 0 ? parseFloat($('.qty-input').val()) : 1;

        fetch('/shop/addToCart?id='+this.dataset.id, {
            method: 'POST',
            body: JSON.stringify({
                qty: proQty
            }),
            headers: {
                'content-type': 'application/json'
            }
        })
        .then(res => res.json())
        .then(data => {
            console.log(data);
            cartQty.text(data.qty);
            cartTotal.text(data.total);

            var product = PRODUCTS[this.dataset.id];

        var modalString = `<div class="modal-header">
        <div class="modal-header-title"><i class="icon icon-check-box"></i><span>!Articulo agregado al carrito!</span>
        </div>
    </div>
    <div class="modal-content">
        <div class="modal-body">
            <div class="modalchk-prd">
                <div class="row h-font">
                    <div class="modalchk-prd-image col"><a href="product.html"><img src="${product.img}"
                                alt="Glamor shoes"></a></div>
                    <div class="modalchk-prd-info col">
                        <h2 class="modalchk-title"><a href="product.html">${product.name}</a></h2>
                        <div class="modalchk-price">S/. ${product.price}</div>
                        <div class="prd-options"><span class="label-options">Tallas: </span><span
                                class="prd-options-val">${product.sizes.join(", ")}</span></div>
                        <div class="prd-options"><span class="label-options">Qty:</span><span
                                class="prd-options-val">1</span></div>
                    </div>
                    <div class="modalchk-prd-actions col">
                        <h3 class="modalchk-title">Hay <span class="custom-color">${data.qty}</span> articulos en tu carrito</h3>
                        <div class="prd-options"><span class="label-options">Total:</span><span
                                class="modalchk-total-price">S/. ${data.total}</span></div>
                        <div class="modalchk-custom"><img src="/img/payment/guaranteed.png" alt="Guaranteed"></div>
                        <div class="modalchk-btns-wrap"><a href="/shop/cart" class="btn">Pagar ahora</a> <a
                                href="#" class="btn btn--alt" data-fancybox-close>continuar comprando</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>`;

    $('#modalCheckOut').html(modalString);

        });

    });

    $('.modalchk-btns-wrap .btn').on('click', function() {
        if(location.href.indexOf('product') >= 0) {
            location.href = '/search';
        }
    });

    $('#applyPromoCode').on('click', function() {
        if($('#promoCode').val() === '44c7be48226ebad5dca8216674cad62b') {
            var total = parseFloat($('#cartTotal').text());
            $('#subtotalAmount').text('S/. ' + (total - 50));
            $('#errorPromo').hide();
            $('#successPromo').show();
        } else {
            $('#successPromo').hide();
            $('#errorPromo').show();
        }
    });

    $('.cart-table-prd .icon-cross').on('click', function() {
        var el = $(this).parent().parent();
        var cartQty = $('#cartQty');
        var cartTotal = $('#cartTotal');
        fetch('/shop/removeFromCart', {
            method: 'POST',
            body: JSON.stringify({
                id: el[0].dataset.id
            }),
            headers: {
                'content-type': 'application/json'
            }
        })
        .then(res => res.json())
        .then(data => {
            console.log(data);
            cartQty.text(data.qty);
            cartTotal.text(data.total);
        });

        el.remove();
    });
});