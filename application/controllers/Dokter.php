<?php
/* 
 * Generated by CRUDigniter v3.0 Beta 
 * www.crudigniter.com
 */
 
class Dokter extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_dokter_model');

        if(!$this->session->userdata('islogin')) {

            redirect('dashboard');

        }
    } 

    /*
     * Listing of m_dokter
     */
    function index()
    {
        $data['m_dokter'] = $this->M_dokter_model->get_all_m_dokter();

        $data['_view'] = 'dokter/index';
        $this->load->view('layouts/main',$data);
    }

    /*
     * Adding a new m_dokter
     */
    function add()
    {   
        $this->load->library('form_validation');

		$this->form_validation->set_rules('nomor_telepon','Nomor Telepon','required');
		$this->form_validation->set_rules('nama','Nama','required');
		$this->form_validation->set_rules('email','Email','required');
		$this->form_validation->set_rules('password','Password','required');
		
		if($this->form_validation->run())     
        {   
            $params = array(
				'password' => $this->input->post('password'),
				'nomor_registrasi' => $this->input->post('nomor_registrasi'),
				'tanggal_registrasi' => $this->input->post('tanggal_registrasi'),
				'nomor_telepon' => $this->input->post('nomor_telepon'),
				'nama' => $this->input->post('nama'),
				'alamat' => $this->input->post('alamat'),
				'kecamatan' => $this->input->post('kecamatan'),
				'kelurahan' => $this->input->post('kelurahan'),
				'kota' => $this->input->post('kota'),
				'provinsi' => $this->input->post('provinsi'),
				'golongan_darah' => $this->input->post('golongan_darah'),
				'usia' => $this->input->post('usia'),
				'username' => $this->input->post('username'),
				'email' => $this->input->post('email'),
				'status_login' => 'dokter',
                'approved' => '1',
            );
            
            $m_dokter_id = $this->M_dokter_model->add_m_dokter($params);
            redirect('dokter/index');
        }
        else
        {            
            $data['_view'] = 'dokter/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a m_dokter
     */
    function edit($pk)
    {   
        // check if the m_dokter exists before trying to edit it
        $data['m_dokter'] = $this->M_dokter_model->get_m_dokter($pk);
        
        if(isset($data['m_dokter']['pk']))
        {
            $this->load->library('form_validation');

			$this->form_validation->set_rules('nomor_telepon','Nomor Telepon','required');
			$this->form_validation->set_rules('nama','Nama','required');
			$this->form_validation->set_rules('email','Email','required');
			$this->form_validation->set_rules('password','Password','required');
		
			if($this->form_validation->run())     
            {   
                $params = array(
					'password' => $this->input->post('password'),
					'nomor_registrasi' => $this->input->post('nomor_registrasi'),
					'tanggal_registrasi' => $this->input->post('tanggal_registrasi'),
					'nomor_telepon' => $this->input->post('nomor_telepon'),
					'nama' => $this->input->post('nama'),
					'alamat' => $this->input->post('alamat'),
					'kecamatan' => $this->input->post('kecamatan'),
					'kelurahan' => $this->input->post('kelurahan'),
					'kota' => $this->input->post('kota'),
					'provinsi' => $this->input->post('provinsi'),
					'golongan_darah' => $this->input->post('golongan_darah'),
					'usia' => $this->input->post('usia'),
					'username' => $this->input->post('username'),
					'email' => $this->input->post('email'),
					'status_login' => 'dokter',
                    'approved' => '1',
                );

                $this->M_dokter_model->update_m_dokter($pk,$params);            
                redirect('dokter/index');
            }
            else
            {
                $data['_view'] = 'dokter/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The m_dokter you are trying to edit does not exist.');
    } 

    /*
     * Deleting m_dokter
     */
    function remove($pk)
    {
        $this->M_cek_hapus->cek('m_jadwal_praktek','dokter_fk',$pk,'dokter');

        $m_dokter = $this->M_dokter_model->get_m_dokter($pk);

        // check if the m_dokter exists before trying to delete it
        if(isset($m_dokter['pk']))
        {
            $this->M_dokter_model->delete_m_dokter($pk);
            redirect('dokter/index');
        }
        else
            show_error('The m_dokter you are trying to delete does not exist.');
    }

    public function cek_nomor_registrasi(){
        $nomor_registrasi = $this->input->post('nomor_registrasi');
        $query = $this->M_dokter_model->cek_nomor_registrasi($nomor_registrasi);
        $status           = "true";
        if($query){ $status = "false"; }
            echo $status;
    }

    public function cek_nomor_registrasi_edit($pk){
        $nomor_registrasi = $this->input->post('nomor_registrasi_edit');
        $query = $this->M_dokter_model->cek_nomor_registrasi_edit($nomor_registrasi,$pk);
        $status           = "true";
        if($query){ $status = "false"; }
            echo $status;
    }

    public function cek_username(){
        $username = $this->input->post('username');
        $query = $this->M_dokter_model->cek_username($username);
        $status           = "true";
        if($query){ $status = "false"; }
            echo $status;
    }

    public function cek_username_edit($pk){
        $username = $this->input->post('username_edit');
        $query = $this->M_dokter_model->cek_username_edit($username,$pk);
        $status           = "true";
        if($query){ $status = "false"; }
            echo $status;
    }
    
}
