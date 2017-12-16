<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Post extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->database();
        $this->load->model(array('post_model', 'category_model'));
    }

    public function index()
    {
        $posts = $this->post_model->get_posts();
        $data['posts'] = $posts;
        $data['title'] = 'All Post';
        $this->load->view('posts/index', $data);
    }

    public function create()
    {
        if ($this->input->post()) {
            $this->post_model->create();
            redirect('post');
        }

        $data['categories'] = $this->category_model->get_categories();
        $this->load->view('posts/create', $data);
    }

    public function edit($id)
    {
        if ($this->input->post()) {
            $this->post_model->edit($id);
            redirect('post');
        }

        $data['categories'] = $this->category_model->get_categories();
        $data['post'] = $this->post_model->get_post_by_id($id);
        $this->load->view('posts/edit', $data);
    }

    public function delete($id)
    {
        $this->post_model->delete($id);
        redirect('post');
    }
}