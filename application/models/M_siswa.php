<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_siswa extends CI_Model
{

    function lengkapidata($data)
    // Fungsi untuk melengkapi data siswa berdasarkan nisn yang sudah terdaftar
    {
        $this->db->where('nisn', $this->session->userdata('nisn'));
        $simpan = $this->db->update('tbl_registrasi', $data);
        if ($simpan) {
            return true;
        } else {
            return false;
        }
    }

    function uplodfoto()
    // Fungsi untuk proses upload foto
    {

        $config['upload_path'] = './uploads/foto/';
        $config['allowed_types'] = 'jpg|png|jpeg';
        $config['max_size']  = '5000';
        $config['encrypt_name']  = TRUE;

        $this->load->library('upload', $config);

        if (! $this->upload->do_upload('foto')) {
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
        } else {
            $object = ['foto' => $this->upload->data('file_name')];
            $this->db->where('nisn', $this->session->userdata('nisn'));
            $this->db->update('tbl_registrasi', $object);
            return 'success';
        }
    }

    function uplodkk()
    // fungsi untuk proses upload foto kk
    {

        $config['upload_path'] = './uploads/kk/';
        $config['allowed_types'] = 'jpg|png|pdf';
        $config['max_size']  = '5000';
        $config['encrypt_name']  = TRUE;

        $this->load->library('upload', $config);

        if (! $this->upload->do_upload('foto')) {
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
        } else {
            $object = ['bukti_kk' => $this->upload->data('file_name')];
            $this->db->where('nisn', $this->session->userdata('nisn'));
            $this->db->update('tbl_registrasi', $object);
            return 'success';
        }
    }

    function uplodraport()
    // Fungsi untuk proses upload raport
    {

        $config['upload_path'] = './uploads/raport/';
        $config['allowed_types'] = 'jpg|png|pdf';
        $config['max_size']  = '5000';
        $config['encrypt_name']  = TRUE;

        $this->load->library('upload', $config);

        if (! $this->upload->do_upload('foto')) {
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
        } else {
            $object = ['bukti_raport' => $this->upload->data('file_name')];
            $this->db->where('nisn', $this->session->userdata('nisn'));
            $this->db->update('tbl_registrasi', $object);
            return 'success';
        }
    }

    function uplodprestasi()
    // Fungsi untuk proses upload prestasi
    {

        $config['upload_path'] = './uploads/prestasi/';
        $config['allowed_types'] = 'jpg|png|pdf';
        $config['max_size']  = '5000';
        $config['encrypt_name']  = TRUE;

        $this->load->library('upload', $config);

        if (! $this->upload->do_upload('foto')) {
            $error = array('error' => $this->upload->display_errors());
            print_r($error);
        } else {
            $object = ['bukti_prestasi' => $this->upload->data('file_name')];
            $this->db->where('nisn', $this->session->userdata('nisn'));
            $this->db->update('tbl_registrasi', $object);
            return 'success';
        }
    }

    function daftarulang($data)
    // Fungsi untuk proses daftar ulang berdasarkan nisn siswa yang sudah teregistrasi
    {
        $this->db->where('nisn', $this->session->userdata('nisn'));
        $simpan = $this->db->update('tbl_registrasi', $data);

        if ($simpan) {
            return true;
        } else {
            return flase;
        }
    }
}

/* End of file M_siswa.php */
