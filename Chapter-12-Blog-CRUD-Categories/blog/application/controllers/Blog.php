<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

    public function __construct()
	{
        parent::__construct();
        $this->load->database();
        $this->load->library('session');
        $this->load->helper(array('form', 'url'));
        $this->load->model(array('post_model', 'category_model'));
    }

	public function index()
	{
        $data['categories'] = $this->category_model->get_categories();
        $data['posts'] = $this->post_model->get_posts();
		$this->load->view('blog/index', $data);
    }

    public function create()
    {
        if ($this->input->post()) {
            $this->post_model->create();
            redirect('blog');
        }
        $data['categories'] = $this->category_model->get_categories();
        $this->load->view('blog/create', $data);
    }

    public function edit($id)
    {
        if ($this->input->post()) {
            $this->post_model->edit($id);
            redirect('blog');
        }

        $data['categories'] = $this->category_model->get_categories();
        $data['post'] = $this->post_model->get_post_by_id($id);
        $this->load->view('blog/edit', $data);
    }


    public function detail($id)
    {
        $data['categories'] = $this->category_model->get_categories();
        $data['post'] = $this->post_model->get_post_by_id($id);
        $this->load->view('blog/detail', $data);
    }

    public function delete($id)
    {
        $this->post_model->delete($id);
        redirect('blog');
    }
    
}
