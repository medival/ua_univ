<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Formulir_model extends CI_Model
{

    private $_table_form = "tb_mahasiswa_baru";

    public $id;
    public $nama;
    public $email;
    public $no_hp;
    // public $nisn;
    // public $image = "default.jpg";
    public $jalan;
    public $kota;
    public $provinsi;
    public $asal_sekolah;
    public $prodi;
    public $kelas;
    public $kode_pos;
    public $verifikasi;

    public function __construct()
    {
        parent::__construct();
    }
    public function rules_form()
    {
        return [
            [
                'field' => 'nama',
                'label' => 'Nama',
                'rules' => 'required'
            ],

            [
                'field' => 'email',
                'label' => 'Email',
                'rules' => 'required|valid_email'
            ],

            [
                'field' => 'no_hp',
                'label' => 'Telefon',
                'rules' => 'required|numeric|max_length[13]'
            ],

            [
                'field' => 'jalan',
                'label' => 'Jalan',
                'rules' => 'required'
            ],

            [
                'field' => 'kota',
                'label' => 'Kota',
                'rules' => 'required'
            ],

            [
                'field' => 'provinsi',
                'label' => 'Provinsi',
                'rules' => 'required'
            ],

            [
                'field' => 'kode_pos',
                'label' => 'Kode Pos',
                'rules' => 'numeric|max_length[5]'
            ],

            [
                'field' => 'asal_sekolah',
                'label' => 'Asal Sekolah',
                'rules' => 'required|max_length[40]'
            ],

            [
                'field' => 'prodi',
                'label' => 'Prodi',
                'rules' => 'required'
            ],

            [
                'field' => 'kelas',
                'label' => 'kelas',
                'rules' => 'required'
            ]
        ];
    }
    public function save_data()
    {
        $post = $this->input->post();
        $this->id = uniqid(rand(1, 99999));
        $this->nama = $post["nama"];
        $this->email = $post["email"];
        $this->no_hp = $post["no_hp"];
        $this->jalan = $post["jalan"];
        $this->kota = $post["kota"];
        $this->provinsi = $post["provinsi"];
        $this->kode_pos = $post["kode_pos"];
        $this->asal_sekolah = $post["asal_sekolah"];
        $this->prodi = $post["prodi"];
        $this->kelas = $post["kelas"];
        $this->verifikasi = 0;

        $this->db->insert($this->_table_form, $this);
    }
    public function getAllPendaftar()
    {
        return $this->db->get($this->_table_form)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table_form, ["id" => $id])->row();
    }
    public function delete($id)
    {
        // $this->_deleteImage($id);
        return $this->db->delete($this->_table_form, array("id" => $id));
    }

    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->nama = $post["nama"];
        $this->email = $post["email"];
        $this->no_hp = $post["no_hp"];
        $this->jalan = $post["jalan"];
        $this->kota = $post["kota"];
        $this->provinsi = $post["provinsi"];
        $this->kode_pos = $post["kode_pos"];
        $this->asal_sekolah = $post["asal_sekolah"];
        $this->prodi = $post["prodi"];
        $this->kelas = $post["kelas"];
        $this->verifikasi = $post["verifikasi"];

        $this->db->update($this->_table_form, $this, array('id' => $post['id']));
    }
}

/* End of file: Formulir_model.php */
