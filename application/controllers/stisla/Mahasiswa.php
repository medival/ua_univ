<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Mahasiswa extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model("formulir_model");
        $this->load->model("mahasiswa_model");
        $this->load->helper("is_loggin");
        $this->load->library('form_validation');
        is_logged_in();
    }

    public function index()
    {
        $data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
        $data["mahasiswa"] = $this->mahasiswa_model->getAll();
        $this->load->view("stisla/content/list", $data);
    }

    public function add_new()
    {
        $mahasiswa = $this->mahasiswa_model;
        $validation = $this->form_validation;
        $validation->set_rules($mahasiswa->rules_form());

        if ($validation->run()) {
            $mahasiswa->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $this->load->view("stisla/content/new_form");
    }
    public function add()
    {
        $mahasiswa = $this->mahasiswa_model;
        $validation = $this->form_validation;
        $validation->set_rules($mahasiswa->rules());

        if ($validation->run()) {
            $mahasiswa->save();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $this->load->view("stisla/content/new_form");
    }

    public function edit($id = null)
    {
        if (!isset($id)) redirect('stisla/mahasiswa');

        $mahasiswa = $this->mahasiswa_model;
        $validation = $this->form_validation;
        $validation->set_rules($mahasiswa->rules());

        if ($validation->run()) {
            $mahasiswa->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["mahasiswa"] = $mahasiswa->getById($id);
        if (!$data["mahasiswa"]) show_404();

        $this->load->view("stisla/content/edit_form", $data);
    }

    public function delete($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->mahasiswa_model->delete($id)) {
            redirect(site_url('stisla/mahasiswa'));
        }
    }

    // Halaman Admin
    public function add_form()
    {
        $data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
        $formulir = $this->formulir_model;
        $validation = $this->form_validation;
        $validation->set_rules($formulir->rules_form());

        if ($validation->run()) {
            $formulir->save_data();
            redirect("stisla/mahasiswa/home");
        }

        $this->load->view("stisla/form/new_form", $data);
    }

    public function success_form()
    {
        $this->load->view("stisla/form/success");
    }

    public function admin()
    {
        $data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();
        // echo "<h1> Selamat Datang" . $data['user']['name'] . " </h1>";

        $data["pendaftar"] = $this->formulir_model->getAllPendaftar();
        $this->load->view("stisla/form/list", $data);
    }
    public function delete_pendaftar($id = null)
    {
        if (!isset($id)) show_404();

        if ($this->formulir_model->delete($id)) {
            redirect(site_url('stisla/mahasiswa/admin'));
        }
    }

    public function edit_form($id = null)
    {
        if (!isset($id)) redirect('stisla/mahasiswa/admin');

        $formulir = $this->formulir_model;
        $validation = $this->form_validation;
        $validation->set_rules($formulir->rules_form());

        if ($validation->run()) {
            $formulir->update();
            $this->session->set_flashdata('success', 'Berhasil disimpan');
        }

        $data["pendaftar"] = $formulir->getById($id);
        if (!$data["pendaftar"]) show_404();

        $this->load->view("stisla/form/edit_form", $data);
    }

    public function update_form()
    {
        $formulir = $this->formulir_model;
        $validation = $this->form_validation;
        $validation->set_rules($formulir->rules_form());

        if ($validation->run()) {
            $formulir->save_data();
            redirect("stisla/mahasiswa/admin    ");
        }

        $this->load->view("stisla/form/new_form");
    }

    public function profile()
    {

        $this->load->view("stisla/user_set/profile");
    }

    // Member
    public function home()
    {
        $data['user'] = $this->db->get_where('tb_user', ['email' => $this->session->userdata('email')])->row_array();


        $this->load->view("stisla/home", $data);
    }
}
