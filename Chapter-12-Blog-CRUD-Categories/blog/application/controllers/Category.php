<?php

class Category extends CI_Controller {

    public function __construct()
	{
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->helper(array('form', 'url'));
        $this->load->model('category_model');
    }
    
    public function create()
    {
        if ($this->input->post()) {
            $this->category_model->create();
            redirect('blog');
        }
        $data['categories'] = $this->category_model->get_categories();
        $this->load->view('category/create', $data);
    }
}