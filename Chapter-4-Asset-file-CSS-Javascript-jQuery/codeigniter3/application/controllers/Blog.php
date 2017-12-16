<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function index()
	{
		$this->load->view('blog_view');
    }
    public function detail(){
        $this->load->view('blog_detail_view');
    }
    public function post(){
        $this->load->view('blog_post_view');
    }
    public function category(){
        $this->load->view('blog_cat_view');
    }
    public function comment(){
 
    }
}
