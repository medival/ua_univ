<?php defined('BASEPATH') or exit('No direct script access allowed');

class Mahasiswa_model extends CI_Model
{
    private $_table = "tb_mahasiswa";
    // private $_table_form = "tb_mahasiswa_baru";

    public $id;
    public $nama;
    public $email;
    public $no_hp;
    public $nisn;
    public $image = "default.jpg";
    // public $jalan;
    // public $kota;
    // public $provinsi;
    // public $asal_sekolah;
    // public $prodi;
    // public $kelas;
    // public $kode_pos;

    public function rules()
    {
        return [
            [
                'field' => 'nama',
                'label' => 'Name',
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
                'field' => 'nisn',
                'label' => 'NISN',
                'rules' => 'required|numeric'
            ]
        ];
    }



    public function getAll()
    {
        return $this->db->get($this->_table)->result();
    }

    public function getById($id)
    {
        return $this->db->get_where($this->_table, ["id" => $id])->row();
    }

    public function save()
    {
        $post = $this->input->post();
        $this->id = uniqid(rand(1, 99999));
        $this->nama = $post["nama"];
        $this->image = $this->_uploadImage();
        $this->email = $post["email"];
        $this->no_hp = $post["no_hp"];
        $this->nisn = $post["nisn"];
        // $this->description = $post["description"];
        $this->db->insert($this->_table, $this);
    }



    public function update()
    {
        $post = $this->input->post();
        $this->id = $post["id"];
        $this->nama = $post["nama"];
        $this->image = $this->_uploadImage();
        $this->email = $post["email"];
        $this->no_hp = $post["no_hp"];
        $this->nisn = $post["nisn"];


        if (!empty($_FILES["image"]["name"])) {
            $this->image = $this->_uploadImage();
        } else {
            $this->image = $post["old_image"];
        }

        $this->db->update($this->_table, $this, array('id' => $post['id']));
    }

    public function delete($id)
    {
        $this->_deleteImage($id);
        return $this->db->delete($this->_table, array("id" => $id));
    }

    private function _uploadImage()
    {
        $config['upload_path']          = './upload/foto/';
        $config['allowed_types']        = 'gif|jpg|png';
        $config['file_name']            = $this->id;
        $config['overwrite']            = true;
        $config['max_size']             = 1024; // 1MB
        // $config['max_width']            = 1024;
        // $config['max_height']           = 768;

        $this->load->library('upload', $config);

        if ($this->upload->do_upload('image')) {
            return $this->upload->data("file_name");
        }

        return "default.jpg";
    }

    private function _deleteImage($id)
    {
        $mahasiswa = $this->getById($id);
        if ($mahasiswa->image != "default.jpg") {
            $filename = explode(".", $mahasiswa->image)[0];
            return array_map('unlink', glob(FCPATH . "upload/foto/$filename.*"));
        }
    }
}
