<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function index()
	{
        $this->load->database();
        $this->load->model('post_model');
        $data['posts'] = $this->post_model->get_posts();
		$this->load->view('blog/index', $data);
    }

    public function create()
    {
        $this->load->view('blog/create');
    }

    public function detail()
    {
        $this->load->view('blog/detail');
    }
    
}
