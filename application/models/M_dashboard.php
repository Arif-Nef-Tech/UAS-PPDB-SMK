<?php


class M_dashboard extends Ci_Model
{
    public function tampil_data()
    // Function untuk menampilkan data jadwal
    {
        return $this->db->get('jadwal')->row_array();
    }
    
    public function tampil_data_berita()
    // Function untuk menampilkan data berita
    {
        return $this->db->get('berita')->row_array();
    }
    public function tampil_data_isiberita()
    // Function untuk menampilkan isi berita
    {
        return $this->db->get('isi_berita')->result_array();
    }
    public function tampil_data_slider()
    // Function untuk menampikan data slider 
    {
        return $this->db->get('tbl_slide')->result_array();
    }
}
