<?php

class M_jurusan extends CI_Model
{

    public function proses_tambah()
    // Function tambah jurusan
    {
        $data = [
            "jurusan" => $this->input->post('jurusan', TRUE)
        ];
        $this->db->insert('jurusan', $data);
    }

    public function proses_edit()
    // Function edit jurusan
    {
        $data = [
            "jurusan" => $this->input->post('jurusan', TRUE)
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('jurusan', $data);
    }

    public function hapus($id)
    // Function hapus
    {
        $this->db->where('id', $id);
        $this->db->delete('jurusan');
    }
}
