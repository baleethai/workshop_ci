<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('url', 'form'));
        $this->load->library('session');
    }

    public function index()
    {

        if (isset($this->session->userdata['logged_in'])) {
            redirect('login/success');
        }

        if ($this->input->post()) {
            $data = $this->input->post();
            
            if ($this->check_database($data) == FALSE) {
                redirect('login');
            }

            $this->session->set_userdata('logged_in', $data['email']);
            redirect('login/success');
        }
        $this->load->view('login/index');
    }

    public function check_database($data)
    {
        $this->load->library('encryption');
        $this->load->database();
        $this->db->where('email', $data['email']);
        $this->db->where('password', $this->encryption->decrypt($data['password']));
        
        $this->db->from('users');
        $query = $this->db->get();
        return $query->num_rows() == 1 ? TRUE : FALSE;
    }

    public function success()
    {
        $this->load->view('login/success');
    }

    public function logout()
    {
        $this->session->unset_userdata('logged_in', '');
        redirect('login');
    }
}