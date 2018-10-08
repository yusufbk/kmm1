<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_cek_hapus extends CI_Model {

	function __construct(){
		parent::__construct();
	}

	function cek($table,$kolom,$pk,$redirect){
		$jumlah = $this->db->query("SELECT * from $table where $kolom = '$pk'")->num_rows();

		if ($jumlah!=0) {
			
			echo ("<SCRIPT LANGUAGE='JavaScript'>
                  window.alert('Tidak Bisa Hapus Data , Data Sedang Digunakan')
                  window.location.href='".site_url($redirect)."';
                  </SCRIPT>");
                  
                  exit;

		}

	}

}
