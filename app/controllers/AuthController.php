<?php
namespace App\Controllers;

use App\Models\User;
use App\Models\Department;
use App\Models\Address;

class AuthController extends ControllerBase 
{

    public function loginAction() {

        if($this->request->isPost()) {

            $username = $this->request->getPost('username');
            $password =$this->request->getPost('password');

            if(!empty($username) && !empty($password)) {
                $user = User::findFirst([
                    'email = :email: AND password = :password:',
                    'bind' => [
                        'email' => $username,
                        'password' => $password
                    ]
                ]);

                if($user) {
                    if($user->active == 1) {
                        $this->session->set('loggedUser', $user);
                        $this->session->set('isLoggedUser', !empty($this->session->get('loggedUser')));
                        $this->session->set('cart', []);
                        $this->session->set('cartQty', 0);
                        $this->session->set('cartTotal', 0);
                        $this->response->redirect('/');
                    } else {
                        $this->flashSession->error('Su usuario a sido suspendido');
                    }
                } else {
                    $this->flashSession->error('Usuario y/o Contraseña invalidos');
                }
            } else {
                $this->flashSession->error('Debe llenar ambos campos');
            }
        }

    }

    //I COPIED THE PHP.INI FILE FROM PRODUCTION THATS WHY ITS FUCKED UP
    public function registerAction() {
        if($this->request->isPost()) {
            $user = new User($this->request->getPost());
            $department = $this->request->getPost("department");
            $district = $this->request->getPost("district");
            $address_text = $this->request->getPost("address");
            if($user->isValid() && isset($department) && isset($district) && isset($address_text)) {
                if($user->password === $this->request->getPost("confirmPassword")) {
                    $user->active = 1;
                    $user->time_of_creation = date("Y-m-d");
                    $department = explode('|', $department);
                    $district = explode('|', $district);
                    $department_name = $department[1];
                    $district_name = $district[1];
                    $composite_address = "$address_text $district_name, $department_name, Peru";
                    $composite_address = urlencode($composite_address);
                    $gmaps_response = json_decode(file_get_contents("https://maps.googleapis.com/maps/api/geocode/json?address=$composite_address&key=AIzaSyBrdhhxSqqIQgfq60Tq-ByRDY2WYfh9qpM"));
                    
                    $lat = 0;
                    $lng = 0;
                    if($gmaps_response->status === 'OK') {
                        $lat = $gmaps_response->results[0]->geometry->location->lat;
                        $lng = $gmaps_response->results[0]->geometry->location->lng;
                    }

                    $address = new Address();
                    $address->address_text = $address_text;
                    $address->department_id = $department[0];
                    $address->district_id = $district[0];
                    $address->latitude = $lat;
                    $address->longitude = $lng;
                
                    $address->User = $user;

                    //Save both records
                    if(!$address->save()) {
                        /*var_dump($user->getMessages());
                        var_dump($address->getMessages());
                        die;*/
                    }

                    $this->response->redirect("/auth/login");
                    return true;
                } else {
                    $this->flashSession->error("Las contraseñas deben coincidir");
                }
            } else {
                $this->flashSession->error("Debe llenar todos los campos");
            }
        }
        
        $this->view->departments = Department::find();
        $this->view->districts = $this->view->departments[0]->District;
    }

    public function profileAction() {
        
    }

    public function logoutAction(){
        $this->session->remove('loggedUser');
        $this->session->remove('isLoggedUser');
        $this->session->remove('cartQty');
        $this->session->remove('cartTotal');
        $this->session->remove('cart');
        //WHY IS BASE URI EMPTY HERE, BUT NOT IN AWS?
        //die($this->config->application->baseUri);
        $this->response->redirect('/');
    }
}