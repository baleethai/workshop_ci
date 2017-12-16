<?php

class Post_model extends CI_model {
    public function get_posts()
    {
        $query = $this->db->get('posts');
        return $query->result();
    }

    public function create()
    {
        $data = $this->input->post();

        // Upload Image
        $filename = time();
        $config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'gif|jpg|png';
        $config['max_size'] = '100';
        $config['max_width']  = '1024';
        $config['max_height']  = '768';
        $config['overwrite'] = TRUE;
        $config['encrypt_name'] = FALSE;
        $config['remove_spaces'] = TRUE;
        $config['file_name'] = $filename;
        if ( ! is_dir($config['upload_path']) ) die("THE UPLOAD DIRECTORY DOES NOT EXIST");
        $this->load->library('upload', $config);
        if ( ! $this->upload->do_upload('userfile')) {
            echo 'error';
        } else {
            $result_upload = $this->upload->data();
            $data['image'] = $result_upload['file_name'];
        }

        $this->db->insert('posts', $data);
    }

    public function edit($id)
    {
        $data = $this->input->post();
        print_r($this->input->post('userfile')); exit;
        // Upload Image
        if ($this->input->post('userfile')) {
            $filename = time();
            $config['upload_path'] = './uploads/';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = '100';
            $config['max_width']  = '1024';
            $config['max_height']  = '768';
            $config['overwrite'] = TRUE;
            $config['encrypt_name'] = FALSE;
            $config['remove_spaces'] = TRUE;
            $config['file_name'] = $filename;
            if ( ! is_dir($config['upload_path']) ) die("THE UPLOAD DIRECTORY DOES NOT EXIST");
            $this->load->library('upload', $config);
            if ( ! $this->upload->do_upload('userfile')) {
                echo 'error';
            } else {
                $result_upload = $this->upload->data();
                $data['image'] = $result_upload['file_name'];
            }
        }

        echo "<pre>";
        var_dump($data);
        exit;


        $this->db->where('id', $id);
        $this->db->update('posts', $data);
    }

    public function get_post_by_id($id)
    {
        $query = $this->db->query('SELECT * FROM posts WHERE id = ' . $id);
        return $query->row();
    }

    public function delete($id)
    {
        $this->db->where('id', $id);
        $this->db->delete('posts');
    }
}