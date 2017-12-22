<?php

class Category_model extends CI_model {

    public function get_categories()
    {
        $this->db->order_by('id', 'DESC');
        $query = $this->db->get('categories');
        return $query->result();
    }

    public function create()
    {
        $data = $this->input->post();
        $this->db->insert('categories', $data);
    }

    public function edit($id)
    {
        $data = $this->input->post();
        $this->db->where('id', $id);
        $this->db->update('categories', $data);
    }

    public function get_post_by_id($id)
    {
        $query = $this->db->query('SELECT * FROM categories WHERE id = ' . $id);
        return $query->row();
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('categories');
    }
}