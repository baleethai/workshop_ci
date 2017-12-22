<?php 

class Login extends CI_Controller {
    
    public function __construct()
	{
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->helper(array('form', 'url'));
        $this->load->model('post_model');
    }

    public function index()
    {
        $this->load->library('form_validation');

        if ($this->input->post()) {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('username', 'Username', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');
            $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');
            if ($this->form_validation->run() == TRUE) {
                $data = $this->input->post();
                $this->session->set_userdata('logged_in', 1);
                $this->session->set_userdata('username', $data['username']);
                redirect('blog');
            }
        }

        $this->load->view('login/index');
    }

    public function logout()
    {
        $this->load->library('session');
        $this->session->unset_userdata('logged_in', '');
        $this->session->unset_userdata('username', '');
        redirect('blog');
    }

}