<?php
/* 
 * Generated by CRUDigniter v3.0 Beta 
 * www.crudigniter.com
 */
 
class Jadwal_praktek_antrian extends CI_Controller{
    function __construct()
    {
        parent::__construct();
        $this->load->model('M_jadwal_praktek_antrian_model');
        $this->load->model('M_jadwal_praktek_model');
        $this->load->model('M_dokter_model');
        $this->load->model('M_pelayanan_model');
		$this->load->model('M_metode_pembayaran_model');

        if(!$this->session->userdata('islogin')) {

            redirect('dashboard');

        }
    } 

    /*
     * Listing of m_jadwal_praktek_antrian
     */
    function index($jadwal_praktek_fk=0)
    {
        $data['m_jadwal_praktek_antrian'] = $this->M_jadwal_praktek_antrian_model->get_all_m_jadwal_praktek_antrian($jadwal_praktek_fk);

        if ($this->session->userdata('level')=='perawat') {
            $params ['perawat_fk'] = $this->session->userdata('id'); 
            $this->M_jadwal_praktek_model->update_m_jadwal_praktek($jadwal_praktek_fk,$params);  

            $data['jadwal_praktek_fk'] = $jadwal_praktek_fk;

            $data['m_jadwal_praktek'] = $this->M_jadwal_praktek_model->get_m_jadwal_praktek($jadwal_praktek_fk);
            $data['all_m_dokter'] = $this->M_dokter_model->get_all_m_dokter();
            /*$data['all_m_kontak'] = $this->M_kontak_model->get_all_m_kontak();*/

            $data['all_m_pelayanan'] = $this->M_pelayanan_model->get_all_m_pelayanan();

            $data['_view'] = 'jadwal_praktek_antrian/index_perawat';
            $this->load->view('layouts/main',$data);

        } else if($this->session->userdata('level')=='admin'){

            $data['jadwal_praktek_fk'] = $jadwal_praktek_fk;

            $data['_view'] = 'jadwal_praktek_antrian/index';

            $this->load->view('layouts/main',$data);
            
        }
        
        
    }
    
    public function ajax_list()
            {
                $list = $this->M_jadwal_praktek_antrian_model->get_m_jadwal_praktek_antrian('pk');
                $data = array();
                //$no = $_POST[''];
                if (is_array($list) || is_object($list))
                {
                    foreach ($list as $trans) {
                  //      $no++;
                        $row = array();
                        $row[] = $no;
                        $row[] = $trans->jadwal_praktek_fk;
                        $row[] = $trans->pasien_fk;
                        $row[] = $trans->nomor_registrasi_pasien;
                        $row[] = $trans->jadwal_kunjung;
                        $row[] = $trans->status_antrian;
                        $row[] = $trans->metode_pembayaran_fk;
                        $row[] = $trans->nomor_urut;


                        $data[] = $row;
                    }
                }

            $output = array(//"draw" => $_POST['draw'],
                        "recordsTotal" => $this->M_jadwal_praktek_antrian_model->get_all_m_jadwal_praktek_antrian($data),
                        "recordsFiltered" => $this->M_jadwal_praktek_antrian_model->get_jumlah_all_m_jadwal_praktek_antrian(),
                        "data" => $data,);
            //output to json format
            echo json_encode($output);
    }

    /*
     * Adding a new m_jadwal_praktek_antrian
     */
    function add()
    {   
        $this->load->library('form_validation');
		$this->form_validation->set_rules('metode_pembayaran_fk','Metode Pembayaran','required');
		$this->form_validation->set_rules('jadwal_praktek_fk','Jadwal Praktek','required');
		$this->form_validation->set_rules('pasien_fk','Pasien','required');
		$this->form_validation->set_rules('nomor_registrasi_pasien','Nomor Registrasi Pasien','required');
		
		if(isset($_POST) && count($_POST) > 0 && $this->form_validation->run())     
        {   
            $params = array(
				'jadwal_praktek_fk' => $this->input->post('jadwal_praktek_fk'),
				'pasien_fk' => $this->input->post('pasien_fk'),
				'nomor_registrasi_pasien' => $this->input->post('nomor_registrasi_pasien'),
				'jadwal_kunjung' => $this->input->post('jadwal_kunjung'),
				
				'status_antrian' => $this->input->post('status_antrian'),
				'metode_pembayaran_fk' => $this->input->post('metode_pembayaran_fk'),
				'nomor_urut' => $this->M_jadwal_praktek_antrian_model->get_no_urut($this->input->post('jadwal_praktek_fk')),
            );
			$this->load->model('M_jadwal_praktek_model');
			$total = $this->M_jadwal_praktek_model->get_total_pasien($params['jadwal_praktek_fk']);
			$batas = $this->M_jadwal_praktek_model->get_batasan_pasien($params['jadwal_praktek_fk']);
			$status = $this->M_jadwal_praktek_model->get_m_jadwal_praktek($params['jadwal_praktek_fk'])['status_terlaksana'];
           // echo json_encode(array("result" => $params));
            if($status != 'Sudah Terlaksana'){
				if($total <= $batas){
					$m_jadwal_praktek_antrian_id = $this->M_jadwal_praktek_antrian_model->add_m_jadwal_praktek_antrian($params);
					$temp['total_pasien'] = $total+1;
					$m_jadwal_praktek = $this->M_jadwal_praktek_model->update_total_pasien($params['jadwal_praktek_fk'], $temp);
				} else{
					echo ("<SCRIPT LANGUAGE='JavaScript'>
                      window.alert('Tidak dapat menambah pasien, Total pasien sudah mencapai batas');
                      window.location.href='".site_url('jadwal_praktek_antrian/add')."';
                      </SCRIPT>");
                      
                      exit;
				}							
			} else{
				echo ("<SCRIPT LANGUAGE='JavaScript'>
                      window.alert('Tidak dapat menambah pasien, Sesi praktek sudah selesai');
                      window.location.href='".site_url('jadwal_praktek_antrian/add')."';
                      </SCRIPT>");
                      
                      exit;
            }
			
			redirect('jadwal_praktek_antrian/index');
        }
        else
        {
			$this->load->model('M_metode_pembayaran_model');
			$data['all_m_metode_pembayaran'] = $this->M_metode_pembayaran_model->get_all_m_metode_pembayaran();
			
			$this->load->model('M_jadwal_praktek_model');
			$data['all_m_jadwal_praktek'] = $this->M_jadwal_praktek_model->get_all_m_jadwal_praktek_belum_selesai();

			$this->load->model('M_pasien_model');
			$data['all_m_pasien'] = $this->M_pasien_model->get_all_m_pasien_approved();
            
            
            $data['_view'] = 'jadwal_praktek_antrian/add';
            $this->load->view('layouts/main',$data);
        }
    }  

    /*
     * Editing a m_jadwal_praktek_antrian
     */
    function edit($pk)
    {   
        // check if the m_jadwal_praktek_antrian exists before trying to edit it
        $data['m_jadwal_praktek_antrian'] = $this->M_jadwal_praktek_antrian_model->get_m_jadwal_praktek_antrian($pk);
        
        if(isset($data['m_jadwal_praktek_antrian']['pk']))
		{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('metode_pembayaran_fk','Metode Pembayaran','required');
		$this->form_validation->set_rules('jadwal_praktek_fk','Jadwal Praktek','required');
		$this->form_validation->set_rules('pasien_fk','Pasien','required');
		$this->form_validation->set_rules('nomor_registrasi_pasien','Nomor Registrasi Pasien','required');
        

            if(isset($_POST) && count($_POST) > 0 && $this->form_validation->run())     
            {   
                $params = array(
					'jadwal_praktek_fk' => $this->input->post('jadwal_praktek_fk'),
					'pasien_fk' => $this->input->post('pasien_fk'),
					'nomor_registrasi_pasien' => $this->input->post('nomor_registrasi_pasien'),
					'jadwal_kunjung' => $this->input->post('jadwal_kunjung'),
					
					'status_antrian' => $this->input->post('status_antrian'),
					'metode_pembayaran_fk' => $this->input->post('metode_pembayaran_fk'),
                );

                $this->M_jadwal_praktek_antrian_model->update_m_jadwal_praktek_antrian($pk,$params);            
                redirect('jadwal_praktek_antrian/index');
            }
            else
            {
				$this->load->model('M_metode_pembayaran_model');
				$data['all_m_metode_pembayaran'] = $this->M_metode_pembayaran_model->get_all_m_metode_pembayaran();
				
				$this->load->model('M_jadwal_praktek_model');
                $data['all_m_jadwal_praktek'] = $this->M_jadwal_praktek_model->get_all_m_jadwal_praktek();

                $this->load->model('M_pasien_model');
                $data['all_m_pasien'] = $this->M_pasien_model->get_all_m_pasien_approved();

                $data['_view'] = 'jadwal_praktek_antrian/edit';
                $this->load->view('layouts/main',$data);
            }
        }
        else
            show_error('The m_jadwal_praktek_antrian you are trying to edit does not exist.');
    } 

    /*
     * Deleting m_jadwal_praktek_antrian
     */
    function remove($pk)
    {
        $m_jadwal_praktek_antrian = $this->M_jadwal_praktek_antrian_model->get_m_jadwal_praktek_antrian($pk);

        // check if the m_jadwal_praktek_antrian exists before trying to delete it
        if(isset($m_jadwal_praktek_antrian['pk']))
        {
            $this->M_jadwal_praktek_antrian_model->delete_m_jadwal_praktek_antrian($pk);
            redirect('jadwal_praktek_antrian/index');
        }
        else
            show_error('The m_jadwal_praktek_antrian you are trying to delete does not exist.');
    }

    function start($pk,$fk)
    {
        $this->M_jadwal_praktek_antrian_model->start_m_jadwal_praktek_antrian($pk,$fk);

        if ($this->session->userdata('level')=='perawat') {
            
            redirect('jadwal_praktek_antrian/index/'.$fk);

        } else {
            
            redirect('jadwal_praktek_antrian/index');

        }

    }

    function done($pk)
    {

        $this->M_jadwal_praktek_antrian_model->done_m_jadwal_praktek_antrian($pk);

        redirect('jadwal_praktek_antrian/index');
    }

    function cancel($pk)
    {

        $this->M_jadwal_praktek_antrian_model->cancel_m_jadwal_praktek_antrian($pk);

        redirect('jadwal_praktek_antrian/index');
    }
    
    
}
