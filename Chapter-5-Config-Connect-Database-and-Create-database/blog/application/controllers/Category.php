<?php

class Category extends CI_Controller {
    
    public function index()
    {
        $this->load->view('category/index');
    }
    
    public function create()
    {
        $this->load->view('category/create');
    }
}