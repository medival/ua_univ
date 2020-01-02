<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('registration_model');
        $this->load->library('form_validation');
    }

    public function index()
    {

        $data['title'] = "Login";
        $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'trim|required');

        if ($this->form_validation->run() == false) {
            $data['title'] = "User Login";
            $this->load->view('/stisla/auth/login', $data);
        } else {
            $this->_login();
        }
    }

    private function _login()
    {
        $email = $this->input->post('email');
        $password = $this->input->post('password');

        $user = $this->db->get_where('tb_user', ['email' => $email])->row_array();

        if ($user) {
            if ($user['is_active'] == 1) {
                if (password_verify($password, $user['password'])) {
                    $data = [
                        'email' => $user['email'],
                        'role_id' => $user['role_id']
                    ];
                    $this->session->set_userdata($data);
                    if ($user['role_id'] == 1) {
                        redirect('/stisla/mahasiswa/admin');
                    } else {
                        redirect('/stisla/mahasiswa/home');
                    }
                } else {
                    $this->session->set_flashdata('message', '<div class="text-danger"> Wrong password </div>');
                }
            } else {
                $this->session->set_flashdata('message', '<div class="text-danger"> Email is not activated  </div>');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="text-danger"> Wrong email  </div>');
        }
    }

    public function registration()
    {
        $data['title'] = "Create Account";
        $this->form_validation->set_rules('name', 'Name', 'required|trim');
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|trim|min_length[3]|matches[password-confirm]');
        $this->form_validation->set_rules('password-confirm', 'Password', 'required|trim|matches[password]');

        if ($this->form_validation->run() == false) {
            $this->load->view('/stisla/auth/registration');
        } else {
            $data = [
                'name'  => htmlspecialchars($this->input->post('name', true)),
                'email'  => htmlspecialchars($this->input->post('email', true)),
                'image' => 'default.jpg',
                'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
                'role_id' => 2,
                'is_active' => 1,
                'date_created' => time()
            ];
            $this->db->insert('tb_user', $data);

            // $this->session->set_flashdata('success', 'Akun berhasil dibuat');
            $benar = 1;
            redirect('auth/account_created', $benar);
        }
    }

    public function account_created($benar = NULL)
    {
        if ($benar == 1) {
            $this->load->view('/stisla/auth/account_created');
        } else {
            redirect('auth');
        }
    }

    public function logout()
    {
        $this->session->unset_userdata('email');
        $this->session->unset_userdata('role_id');
        $this->session->sess_destroy();

        redirect('/auth');
    }
}

/* End of file: Auth.php */
