<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Univ extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $this->load->view('univ/main');
    }
}

/* End of file: Univ.php */
