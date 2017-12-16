<?php


class Post extends CI_Controller {
    public function index()
    {
        $this->load->helper('url');
        $this->load->database();
        $this->load->model('post_model');
        
        $posts = $this->post_model->get_posts();
        $data['posts'] = $posts;
        $data['title'] = 'All Post';
        $this->load->view('posts/index', $data);
    }
}