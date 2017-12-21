<?php 

class Login extends CI_Controller {
    
    public function index()
    {
        $this->load->library('form_validation');

        if ($this->input->post()) {
            $this->load->library('form_validation');
            $this->form_validation->set_rules('username', 'Username', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');
            $this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert">', '</div>');
            if ($this->form_validation->run() == TRUE) {
                echo "Loing";
                exit;
            }
        }

        $this->load->view('login/index');
    }

    public function logout()
    {
        
    }

}