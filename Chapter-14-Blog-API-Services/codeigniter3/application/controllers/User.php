<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
        $this->load->helper(array('form', 'url'));
        $this->load->model('user_model');
    }

    public function index()
    {        
        $users = $this->user_model->get_users();
        $params['users'] = $users;
        $this->load->view('users/index', $params);
    }

    public function create()
    {
        if ($this->input->post()) {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
            $this->form_validation->set_rules('password', 'Password', 'required');
            if ($this->form_validation->run() == TRUE) {
                $this->load->library('encryption');
                $data = $this->input->post();
                $this->user_model->create($data);      
                redirect('user');
            }
        }

        $this->load->view('users/create');
    }

    public function edit($id)
    {
        if ($this->input->post()) {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('name', 'Name', 'required');
            $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
            if ($this->form_validation->run() == TRUE) {
                $this->user_model->edit($id);
                redirect('user');
            }  
        }

        $this->load->helper(array('form', 'url'));
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