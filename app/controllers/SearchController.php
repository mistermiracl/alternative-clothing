<?php
namespace App\Controllers;

class SearchController extends ControllerBase
{

    public const PRODUCTS = [
        '1' => [
            'id' => 1,
            'img' => '/img/products/product-01.jpg',
            'name' => 'Glamor shoes',
            'price' => 34.00,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0001',
            'stock' => 39,
            'description' => 'Long top with print',
            'colors' => [
                '/img/products/product-01.jpg',
                '/img/products/product-01-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'cuero'
            ] 
        ],
        '2' => [
            'id' => 2,
            'img' => '/img/products/product-02.jpg',
            'name' => 'Long top with print',
            'price' => 20,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0002',
            'stock' => 39,
            'description' => 'Long top with print',
            'colors' => [
                '/img/products/product-02.jpg',
                '/img/products/product-02-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'seda'
            ] 
        ],
        '3' => [
            'id' => 3,
            'img' => '/img/products/product-03.jpg',
            'name' => 'Tie with texture',
            'price' => 70,
            'discountedPrice' => 34,
            'sale' => true,
            'discount' => 51,
            'sku' => '#0003',
            'stock' => 39,
            'description' => 'Tie with texture',
            'colors' => [
                '/img/products/product-03.jpg',
                '/img/products/product-03-2.jpg',
                '/img/products/product-03-3.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'seda'
            ] 
        ],
        '4' => [
            'id' => 4,
            'img' => '/img/products/product-04.jpg',
            'name' => 'Fashionable jacket',
            'price' => 280,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0004',
            'stock' => 0,
            'description' => 'Fashionable jacket',
            'colors' => [
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'cuero', 'seda'
            ] 
        ],
        '5' => [
            'id' => 5,
            'img' => '/img/products/product-05.jpg',
            'name' => 'Checkered shirt',
            'price' => 200,
            'discountedPrice' => 75,
            'sale' => true,
            'discount' => 62,
            'sku' => '#0005',
            'stock' => 39,
            'description' => 'Checkered shirt',
            'colors' => [
                '/img/products/product-05.jpg',
                '/img/products/product-05-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'seda'
            ] 
        ],
        '6' => [
            'id' => 6,
            'img' => '/img/products/product-06.jpg',
            'name' => 'Louboutin',
            'price' => 11,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0006',
            'stock' => 39,
            'description' => 'Louboutin',
            'colors' => [
                '/img/products/product-06.jpg',
                '/img/products/product-06-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'cuero'
            ]
        ],
        '7' => [
            'id' => 7,
            'img' => '/img/products/product-07.jpg',
            'name' => 'Long shirts',
            'price' => 160,
            'discountedPrice' => 110,
            'sale' => true,
            'discount' => 31,
            'sku' => '#0007',
            'stock' => 39,
            'description' => 'Long shirts',
            'colors' => [
                '/img/products/product-07.jpg',
                '/img/products/product-07-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'seda'
            ] 
        ],
        '8' => [
            'id' => 8,
            'img' => '/img/products/product-08.jpg',
            'name' => 'Office bag',
            'price' => 300,
            'discountedPrice' => 210,
            'sale' => true,
            'discount' => 30,
            'sku' => '#0008',
            'stock' => 39,
            'description' => 'Office bag',
            'colors' => [
                '/img/products/product-08.jpg',
                '/img/products/product-08-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'cuero'
            ] 
        ],
        '9' => [
            'id' => 9,
            'img' => '/img/products/product-09.jpg',
            'name' => 'Office shirt',
            'price' => 78,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0009',
            'stock' => 39,
            'description' => 'Office shirt',
            'colors' => [
                '/img/products/product-09.jpg',
                '/img/products/product-09-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'seda'
            ]
        ],
        '10' => [
            'id' => 10,
            'img' => '/img/products/product-10.jpg',
            'name' => 'Flip Flops Easy',
            'price' => 240,
            'discountedPrice' => 122,
            'sale' => true,
            'discount' => 29,
            'sku' => '#0010',
            'stock' => 39,
            'description' => 'Flip Flops Easy',
            'colors' => [
                '/img/products/product-10.jpg',
                '/img/products/product-10-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'sintetico'
            ] 
        ],
        '11' => [
            'id' => 11,
            'img' => '/img/products/product-11.jpg',
            'name' => 'Leather belt',
            'price' => 87,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0011',
            'stock' => 39,
            'description' => 'Leather belt',
            'colors' => [
                '/img/products/product-11.jpg',
                '/img/products/product-11-2.jpg'
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'cuero'
            ] 
        ],
        '12' => [
            'id' => 12,
            'img' => '/img/products/product-12.jpg',
            'name' => 'Headscarf',
            'price' => 5,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0012',
            'stock' => 39,
            'description' => 'Headscarf',
            'colors' => [
            ],
            'sizes' => [
                's',
                'm'
            ],
            'materials' => [
                'lana'
            ] 
        ],
        '13' => [
            'id' => 13,
            'img' => '/img/products/product-13.jpg',
            'name' => 'Purse with flowers',
            'price' => 34,
            'discountedPrice' => 0,
            'sale' => false,
            'discount' => 0,
            'sku' => '#0013',
            'stock' => 39,
            'description' => 'Purse with flowers',
            'colors' => [
            ],
            'sizes' => [
                's'
            ],
            'materials' => [
                'cuero'
            ] 
        ],
        '14' => [
            'id' => 14,
            'img' => '/img/products/product-14.jpg',
            'name' => 'Knitted sweater',
            'price' => 260,
            'discountedPrice' => 190,
            'sale' => true,
            'discount' => 23,
            'sku' => '#0014',
            'stock' => 39,
            'description' => 'Knitted sweater',
            'colors' => [
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'lana'
            ] 
        ],
        '15' => [
            'id' => 15,
            'img' => '/img/products/product-15.jpg',
            'name' => 'Dress with print',
            'price' => 75,
            'discountedPrice' => 15,
            'sale' => true,
            'discount' => 78,
            'sku' => '#0015',
            'stock' => 39,
            'description' => 'Dress with print',
            'colors' => [
            ],
            'sizes' => [
                'xs',
                's',
                'm',
                'l',
                'xl'
            ],
            'materials' => [
                'seda'
            ] 
        ],
    ];

    public function indexAction() {
        
    }

    public function productAction() {
        
    }

}