<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Comment extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper(array('form', 'url'));
        $this->load->database();
        $this->load->model('comment_model');
    }

    public function create()
    {
        if ($this->input->post()) {
            $post_id = $this->input->post('post_id');
            $this->comment_model->create();
            redirect('post/detail/' . $post_id);
        }
    }
}