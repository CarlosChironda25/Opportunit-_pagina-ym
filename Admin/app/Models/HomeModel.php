<?php

namespace App\Models;

use CodeIgniter\Model;

class HomeModel extends Model
{
    public function login($post)
    {
        $msg = [];
        $db = $this->db;
        $get_data = $db->table('users')
            ->select('id, name, password, email, profile_img, type, is_active')
            ->where(array("email" => $post['username']))
            ->orWhere(array("contact" => $post['username']))
            ->where(array("is_deleted" => 0))
            ->get(1)->getRow();

        if (!empty($get_data)) {
            if ($get_data->is_active == 1) {
                $msg = ["st" => "failed", "msg" => "Your account is blocked, Please Contact admin"];
            } else {
                if (password_verify($post['password'], $get_data->password)) {
                    /**
                     * login successfull
                     * generate sesson
                     */
                    unset($get_data->password);
                    unset($get_data->is_active);
                    $session_data['user_data'] = (array) $get_data;
                    $session_data['user_data']['is_logged'] = 1;
                    $session = session();
                    $session->set($session_data);
                    $msg = ["st" => "success", "msg" => "Login Successfull."];
                } else {
                    $msg = ["st" => "failed", "msg" => "Login Failed!! Please check credential!!"];
                }
            }
        } else {
            $msg = ["st" => "failed", "msg" => "Invalid Username or Password!!"];
        }

        return $msg;
    }

    public function  get_profile()
    {
        $id = session('user_data')['id'];
        $db = $this->db;
        return $db->table('users')
            ->select('id, name, email, profile_img, type, contact')
            ->where('id', $id)
            ->get(1)->getRowArray();
    }
}
