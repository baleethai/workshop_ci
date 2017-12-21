<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function index()
	{
        $this->load->database();
        $this->load->model('post_model');
        $data['posts'] = $this->post_model->get_posts();
		$this->load->view('blog_view', $data);
    }
    
    public function detail() {
        $this->load->view('blog_detail_view');
    }

    public function post(){
        $this->load->helper('form');

        if ($this->input->post()) {
            $this->load->model('post_model');
            exit;
        }

        $this->load->view('blog_post_view');
    }
    public function category(){
        $this->load->view('blog_cat_view');
    }
    public function comment(){
 
    }
}
