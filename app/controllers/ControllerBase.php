<?php

namespace App\Controllers;

use Phalcon\Mvc\Controller;

/**
 * @property Phalcon\Config $config
 */
class ControllerBase extends Controller
{
    protected $prop = 2;
    private const PROTECTED_PAGES = [
        
    ];

    public function beforeExecuteRoute() {
        //TODO: Validate if user is logged in
        $this->view->isHome = false;
        
        if(!empty($this->session->get('loggedUser'))) {
            $this->view->isLoggedIn = true;
        } else {
            $this->view->isLoggedIn = false;
        }

        $this->view->cartQty = $this->session->get('cartQty') ?: 0;
        $this->view->cartTotal = $this->session->get('cartTotal') ?: 0;
    }
}
