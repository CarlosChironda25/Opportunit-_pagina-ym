<?php

namespace App\Controllers;

use App\Models\HomeModel;

class Home extends BaseController
{
    public function initController(\CodeIgniter\HTTP\RequestInterface $request, \CodeIgniter\HTTP\ResponseInterface $response, \Psr\Log\LoggerInterface $logger)
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);
        header("Access-Control-Allow-Origin: * ");
        header("Access-Control-Allow-Methods: *");
        header("Access-Control-Allow-Headers: * ");
        $this->model = new HomeModel();
    }


    public function access_control($params = [])
    {
        if (empty(session('user_data'))) {
            return false;
        }
    }

    public function index()
    {
        if (!empty(session('user_data'))) {
            return redirect()->to(base_url('dashboard'));
        }

        $data = [];
        $post = $this->request->getPost();

        if (!empty($post)) {
            $data = $this->model->login($post);
            if ($data['st'] == 'success') {
                return redirect()->to('dashboard');
            }
        }

        $data['title']  = "Login";
        return view('index', $data);
    }


    public function dashboard()
    {
        if ($this->access_control() === false) {
            return redirect()->to(base_url());
        }

        $data['title']  = "Dashboard - " . session('user_data')['name'];
        $data['parent_link'] = "Dashboard";
        $data['active_link'] = "Dashboard";

        return view('dashboard', $data);
    }

    public function  logout()
    {
        if (!empty(session('user_data'))) {
            $session = session();
            $session->remove('user_data');

            return redirect()->to(base_url());
        }
    }

}
