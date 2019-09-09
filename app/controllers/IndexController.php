<?php

namespace App\Controllers;

use App\Models\Department;

class IndexController extends ControllerBase
{

    public function beforeExecuteRoute()
    {
        parent::beforeExecuteRoute();
        $this->view->isHome = true;
    }

    public function indexAction()
    {
    }

}

