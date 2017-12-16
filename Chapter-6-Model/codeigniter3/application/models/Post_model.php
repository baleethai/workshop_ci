<?php 

class Post_model extends CI_model {
    public function get_posts()
    {
        $query = $this->db->get('posts');
        return $query->result();
    }
}