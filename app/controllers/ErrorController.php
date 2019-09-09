<?php

namespace App\Controllers;

class ErrorController extends ControllerBase 
{

    public function beforeExecuteRoute() {
        parent::beforeExecuteRoute();
        $this->view->redirectURL = $this->config->application->domain;        
    }

    public function error404Action() {
    }

    public function error500Action() {
    }

} 