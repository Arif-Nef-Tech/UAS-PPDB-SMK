<?php

class M_slide extends CI_Model
{
    public function ambil_id_slide($id)
    // Mengambil data slide yang sudah di input berdasarkan ID 
    {
        return $this->db->get_where('tbl_slide', ['id' => $id])->row_array();
    }

    public function tampil_data()
    // Menampilkan data slide di table slide
    {
        return $this->db->get('tbl_slide')->result_array();
    }

    public function proses_edit_slide()
    // Proses pengeditan slide yang sudah di input
    {
        $data = [
            "judul" => $this->input->post('judul', TRUE),
            "text"  => $this->input->post('text', TRUE),
            "gambar"  => $this->input->post('gambar', TRUE)
        ];

        $this->db->where('id', $this->input->post('id'));
        $this->db->update('tbl_slide', $data);
    }

    public function hapus_slide($id)
    // Fungsi untuk menghapus slide
    {
        $this->db->where('id', $id);
        $this->db->delete('tbl_slide');
    }

    public function updateFile($id, $data)
    // Fungsi update slide yang sudah di edit
    {
        $this->db->where('id', $id);
        return $this->db->update('tbl_slide', $data);
    }
}
