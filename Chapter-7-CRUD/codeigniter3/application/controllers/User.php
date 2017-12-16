<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class User extends CI_Controller {


    function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper('url');
        $this->load->model('user_model');
    }

    public function index()
    {
        $this->load->model('user_model');
        
        $users = $this->user_model->get_users();
        $data['users'] = $users;
        $this->load->view('users/index', $data);
    }

    public function create()
    {
        if ($this->input->post()) {
            $this->load->library('encryption');
            $data = $this->input->post();
            $this->user_model->create($data);
            redirect('user');
        }
        
        $this->load->view('users/create');
    }

    public function edit($id)
    {
        if ($this->input->post())
        {
            $this->user_model->edit($id);
            redirect('user');
        }

        $data['user'] = $this->user_model->get_user_by_id($id);
        $this->load->view('users/edit', $data);
    }

    public function delete($id)
    {
        $this->user_model->delete($id);
        redirect('user');
    }

    public function encryption()
    {
        $this->load->library('encryption');
        $key = bin2hex($this->encryption->create_key(16));
        echo $key;
    }
}