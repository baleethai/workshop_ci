<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Comment_model extends CI_model {
    
    public function create()
    {
        $data = $this->input->post();
        $this->db->insert('comments', $data);
    }

    public function get_comment_by_post_id($id)
    {
        $query = $this->db->query('SELECT * FROM comments WHERE post_id = ' . $id);
        return $query->result();
    }
}