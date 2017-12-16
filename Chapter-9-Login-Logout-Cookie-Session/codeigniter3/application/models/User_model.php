<?php

class User_model extends CI_Model {

    public function get_users()
    {
        $query = $this->db->get('users');
        return $query->result();
    }

    public function create($data)
    {
        $data['password'] = $this->encryption->encrypt($data['password']);
        $this->db->insert('users', $data);
    }

    public function edit($id)
    {
        $data = $this->input->post();
        $this->db->where('id', $id);
        $this->db->update('users', $data);
    }

    public function get_user_by_id($id)
    {
        $query = $this->db->query('SELECT * FROM users WHERE id = ' . $id);
        return $query->row();
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('users');
    }

    public function get_total()
    {
        return $this->db->count_all("users");
    }

    public function get_current_page_records($limit, $start)
    {
        var_dump($limit, $start);
        $this->db->limit($limit, $start);
        $query = $this->db->get('users');
        if ($query->num_rows() > 0) {
            foreach($query->result() as $row) {
                $data[] = $row;
            }
            return $data;
        }
        return false;
    }
}