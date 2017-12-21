<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {

	public function index()
	{
		$this->load->view('blog/index');
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
