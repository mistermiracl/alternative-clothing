<?php
namespace App\Controllers;

class ShopController extends ControllerBase
{

    public function checkoutAction()
    { 
        $this->session->remove('cartQty');
        $this->session->remove('cartTotal');
        $this->session->remove('cart');
        $this->response->redirect('/');
    }

    public function cartAction()
    { 
        $this->view->cart = $this->session->get('cart') ?: [];
    }

    public function addToCartAction()
    {
        if ($this->request->isPost()) {
            $this->view->disable();
            $id = $this->request->getQuery('id');

            $cart = $this->session->get('cart');
            $cartQty = (int)$this->session->get('cartQty');
            $cartTotal = (double)($this->session->get('cartTotal') ?: 0);

            $proQty = $this->request->getJsonRawBody(true)['qty'];

            $product = SearchController::PRODUCTS[$id];
            $proPrice = !empty($product['discountedPrice']) ? $product['discountedPrice'] : $product['price'];
            $product['qty'] = $proQty;
            $product['totalPrice'] = $proQty * $proPrice;
            $cart[$id] = $product;

            $this->session->set('cartQty', $cartQty + $proQty);
            $this->session->set('cartTotal', $cartTotal + ($proQty * $proPrice));

            $this->session->set('cart', $cart);

            $this->response->setJsonContent([
                'status' => 'OK',
                'qty' => $this->session->get('cartQty'),
                'total' => $this->session->get('cartTotal')
            ]);

            return $this->response;
        } /*else {
            $id = $this->request->getQuery('id');

            $cartQty = (int)$this->session->get('cartQty');
            $this->session->set('cartQty', $cartQty + 1);
            $this->session->set('cartTotal', );
        }*/
    }

    public function removeFromCartAction() {
        if($this->request->isPost()) {
            $this->view->disable();

            $cart = $this->session->get('cart');
            $cartQty = (int)$this->session->get('cartQty');
            $cartTotal = (double)($this->session->get('cartTotal') ?: 0);

            $toDelete = $cart[$this->request->getJsonRawBody(true)['id']];
            
            if($toDelete){
                $cartQty = $cartQty - $toDelete['qty'];
                $cartTotal = $cartTotal - $toDelete['totalPrice'];
                $this->session->set('cartQty', $cartQty);
                $this->session->set('cartTotal', $cartTotal);
                unset($toDelete);
                $this->session->set('cart', $cart);
            }

            $this->response->setJsonContent([
                'status' => 'OK',
                'qty' => $this->session->get('cartQty'),
                'total' => $this->session->get('cartTotal')
            ]);

            return $this->response;
        }
    }
}
