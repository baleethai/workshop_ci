<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->database();
        $this->load->model('category_model');
    }

    public function index()
    {
        $categories = $this->category_model->get_categories();
        $data['categories'] = $categories;
        $data['title'] = 'All Category';
        $this->load->view('categories/index', $data);
    }

    public function create()
    {
        if ($this->input->post()) {
            $this->category_model->create();
            redirect('category');
        }

        $this->load->view('categories/create', $data);
    }

    public function edit($id)
    {
        if ($this->input->post()) {
            $this->category_model->edit($id);
            redirect('category');
        }

        $data['category'] = $this->category_model->get_category_by_id($id);
        $this->load->view('categories/edit', $data);
    }

    public function delete($id)
    {
        $this->category_model->delete($id);
        redirect('category');
    }
}