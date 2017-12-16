<?php

class User extends CI_Controller {
    public function index()
    {
        $this->load->helper('url');
        $this->load->database();
        $this->load->model('user_model');
        
        $users = $this->user_model->get_users();
        $data['users'] = $users;

        $this->load->view('users/index', $data);
    }
}