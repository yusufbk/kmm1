<?php
 
require APPPATH . '/libraries/REST_Controller.php';
 
class Api extends REST_Controller {
 
    function __construct($config = 'rest') {
        parent::__construct($config);
    }
 
      
    function getdashboardawal_get() {
      	$session = $this->get('id');
      	$date = date("Y-m-d");
        $sql = "SELECT mjp.pk, id_session_jadwal, mad.nama, nama_pelayanan, tanggal_praktek, jam_praktek, nomor_urut FROM m_kontak mk JOIN m_jadwal_praktek_antrian mjpa ON (mjpa.pasien_fk=mk.pk) 
        JOIN m_jadwal_praktek mjp ON (mjpa.jadwal_praktek_fk=mjp.pk) 
        JOIN m_pelayanan mp ON(mp.pk=mjp.pelayanan_fk) 
        JOIN m_kontak mad ON (mjp.dokter_fk=mad.pk) WHERE mk.nomor_registrasi = '$session'  AND tanggal_praktek = '$date' ORDER BY mjpa.pk DESC";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function getantrianpasien_get() {
      	$pk = $this->get('pk');
        $sql = "SELECT mjpa.pk, mk.nama, mk.nomor_registrasi, nomor_urut, status_antrian FROM m_kontak mk JOIN m_jadwal_praktek_antrian mjpa ON (mjpa.pasien_fk=mk.pk) 
        JOIN m_jadwal_praktek mjp ON (mjpa.jadwal_praktek_fk=mjp.pk) 
        JOIN m_kontak mad ON (mjp.dokter_fk=mad.pk) where mjp.pk='$pk' ORDER BY nomor_urut ASC";
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response(array('status' => '1', 'data' => $hasil1));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function getantriandokter_post() {
      	$noreg = $this->post('noreg');
      	$tanggal = $this->post('tanggal');
      	
        $sql = "SELECT mjp.pk, tanggal_praktek, (Select COUNT(mjpa.pk) from m_jadwal_praktek_antrian mjpa where mjp.pk=mjpa.jadwal_praktek_fk) as jumlah_pasien, status_terlaksana 
        FROM m_kontak mk 
        JOIN m_jadwal_praktek mjp ON (mjp.dokter_fk=mk.pk) 
        WHERE mjp.tanggal_praktek = '$tanggal' AND mk.nomor_registrasi = '$noreg'";
        
        
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response(array('status' => '1', 'data' => $hasil1));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
     function getantrianperawat_get() {
      //	$noreg = $this->post('noreg');
      	//$tanggal = $this->post('tanggal');
      	
        $sql = "SELECT mjp.pk, nama, nama_pelayanan, tanggal_praktek, status_terlaksana FROM m_kontak mk 
        JOIN m_jadwal_praktek mjp ON (mjp.dokter_fk=mk.pk) 
        JOIN m_pelayanan mp ON (mp.pk = mjp.pelayanan_fk)
        WHERE status_terlaksana = 'Sedang Terlaksana'";
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response(array('status' => '1', 'data' => $hasil1));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function getgallery_get() {
        $sql = "select pk, gambar as name, deskripsi, timestamp from m_gallery ORDER BY timestamp DESC";
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response($hasil1);
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function getbanner_get() {
        $sql = "select gambar as name from m_gallery ORDER BY timestamp DESC LIMIT 3";
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response(array('status' => '1', 'data' => $hasil1));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function getinformasi_get() {
        $sql = "select nama_pelayanan, deskripsi_pelayanan, image FROM m_pelayanan";
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response(array('status' => '1', 'data' => $hasil1));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
     function cekjamantrian_get() {
      	$pk = $this->get('pk');
        $sql = "SELECT mk.nama, mk.nomor_registrasi, nomor_urut, status_antrian FROM m_kontak mk JOIN m_jadwal_praktek_antrian mjpa ON (mjpa.pasien_fk=mk.pk) 
        JOIN m_jadwal_praktek mjp ON (mjpa.jadwal_praktek_fk=mjp.pk) 
        JOIN m_kontak mad ON (mjp.dokter_fk=mad.pk) where mjp.pk='$pk' ORDER BY nomor_urut ASC";
        $query = $this->db->query($sql);
        $hasil1 = $query->result();
        if (!empty($hasil1)) {
            $this->response(array('status' => '1', 'data' => $hasil1));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function getjadwalpolispesialis_get() {
        $sql = "SELECT mjp.pk, nama, jam_praktek, tanggal_praktek, nama_pelayanan, rentang_waktu FROM m_kontak mk JOIN m_jadwal_praktek mjp ON (mjp.dokter_fk=mk.pk) JOIN m_pelayanan mp ON(mp.pk=mjp.pelayanan_fk) WHERE status_terlaksana = 'Belum Terlaksana' AND jenis_pelayanan_fk ='1'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    
    function getdokterpolispesialis_get() {
        $pk = $this->get('pk');
        $sql = "SELECT mjp.pk, nama, jam_praktek, tanggal_praktek, rentang_waktu FROM m_kontak mk JOIN m_jadwal_praktek mjp ON (mjp.dokter_fk=mk.pk) JOIN m_pelayanan mp ON(mp.pk=mjp.pelayanan_fk) WHERE status_terlaksana = 'Belum Terlaksana' AND mp.pk ='$pk'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
     function getdokterpoliumum_get() {
        $pk = $this->get('pk');
        $sql = "SELECT mjp.pk, nama, jam_praktek, tanggal_praktek, rentang_waktu FROM m_kontak mk JOIN m_jadwal_praktek mjp ON (mjp.dokter_fk=mk.pk) JOIN m_pelayanan mp ON(mp.pk=mjp.pelayanan_fk) WHERE status_terlaksana = 'Belum Terlaksana' AND mp.pk ='$pk'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }

    function getjadwalpoliumum_get() {
        $sql = "SELECT mjp.pk, nama, jam_praktek, tanggal_praktek, nama_pelayanan, rentang_waktu FROM m_kontak mk JOIN m_jadwal_praktek mjp ON (mjp.dokter_fk=mk.pk) JOIN m_pelayanan mp ON(mp.pk=mjp.pelayanan_fk) WHERE status_terlaksana = 'Belum Terlaksana' AND jenis_pelayanan_fk ='2'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }    
    
    function getdaftarpolispesialis_get() {
        $sql = "SELECT pk, nama_pelayanan FROM m_pelayanan WHERE jenis_pelayanan_fk ='1'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }    
    
    function getdaftarpoliumum_get() {
        $sql = "SELECT pk, nama_pelayanan FROM m_pelayanan WHERE jenis_pelayanan_fk ='2'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }    
    
    function ceknourutjadwal_get() {
        $pk = $this->get('pk');
        $sql = "SELECT max(nomor_urut) as nomor_urut from m_jadwal_praktek_antrian where jadwal_praktek_fk = '$pk'";
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'tidak ada data'));
        }
    }
    
    function login_post(){
        $username = $this->post('username');
        $password = $this->post('password');
        
        $sql = "SELECT * FROM m_kontak WHERE username =  '$username' AND password =  '$password'";
		
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '1', 'data' => $hasil));
        } else {
            $this->response(array('status' => '0', 'message' => 'username / password salah'));
        }
    }

    function addjadwalpraktek_post() {
        $jadwal = $this->post('id_jadwal');
        $noreg  = $this->post('noreg');

        $data = array(
                    'jadwal_praktek_fk'         => $jadwal,
                    'pasien_fk'                 => $this->post('id_pasien'),
                    'nomor_registrasi_pasien'   => $noreg,
                    'jadwal_kunjung'            => $this->post('jadwal_kunjung'),
                    'realisasi_kunjung'         => $this->post('realisasi_kunjung'),
                    'status_antrian'            => $this->post('status'),
                    'nomor_urut'                => $this->post('nomor_urut'));
                    
        
        $sql = "SELECT * FROM m_jadwal_praktek_antrian WHERE jadwal_praktek_fk =  '$jadwal' AND nomor_registrasi_pasien =  '$noreg'";
        
        $query = $this->db->query($sql);
        $hasil = $query->result();
        if (!empty($hasil)) {
            $this->response(array('status' => '5', 'message' => 'Anda sudah terdaftar'));
        } else {
            $insert = $this->db->insert('m_jadwal_praktek_antrian', $data);
            if ($insert) {
                $this->response(array('status' => '1', 'data' => $data));
            } else {
                $this->response(array('status' => '0'));
            }
        }
    }
    
    function signup_post() {
       
        $data = array(
                    
                    'tanggal_registrasi'        => $this->post('tanggal'),
                    'nomor_telepon'             => $this->post('telepon'),
                    'nama'                      => $this->post('nama'),
                    'alamat'                    => $this->post('alamat'),
                    'kecamatan'                 => $this->post('kecamatan'),
                    'kelurahan'                 => $this->post('kelurahan'),
                    'kota'                      => $this->post('kota'),
                    'provinsi'                  => $this->post('provinsi'),
                    'golongan_darah'            => $this->post('goldarah'),
                    'usia'                      => $this->post('usia'),
                    'email'                     => $this->post('email'),
                    'username'                  => $this->post('username'),
                    'password'                  => $this->post('password'),
                    'status_login'              => 'pasien'
                    
                    );
                    
        $insert = $this->db->insert('m_kontak', $data);
        if ($insert) {
            $this->response(array('status' => '1', 'data' => $data));
        } else {
            $this->response(array('status' => '0'));
        }

    }

    function updatestart_put() {
        $pk = $this->put('pk');
        
        $data = array('status_terlaksana' => 'Sedang Terlaksana');
        $data2 = array('status_antrian' => 'Terjadwalkan');
        
        $this->db->where('pk', $pk);
        $update = $this->db->update('m_jadwal_praktek', $data);
        if ($update) {
            
            $this->db->where('jadwal_praktek_fk', $pk);
            $update2 = $this->db->update('m_jadwal_praktek_antrian', $data2);
            if ($update2) {
                $this->response(array('status' => '1'));
            } else {
                $this->response(array('status' => '0'));
            }
        } else {
            $this->response(array('status' => '0'));
        }
    }
    
    function updatetindakan_put() {
        $pk_antrian = $this->put('pk');
        $waktu = $this->put('waktu');
        
        $sql = "UPDATE m_jadwal_praktek_antrian SET status_antrian = 'Selesai' WHERE status_antrian = 'Tindakan'";
        $query = $this->db->query($sql);
       
           
            $data2 = array(
                'status_antrian' => 'Tindakan', 
                'realisasi_kunjung' => '$waktu');
            $this->db->where('pk', $pk_antrian);
            $update2 = $this->db->update('m_jadwal_praktek_antrian', $data2);
            if ($update2) {
                $this->response(array('status' => '1'));
            } else {
                $this->response(array('status' => '0'));
            }
    
    }
    
    function closesession_get() {
        $pk = $this->get('pk');
        $sql = "UPDATE m_jadwal_praktek_antrian SET status_antrian = 'Selesai' WHERE status_antrian = 'Tindakan'";
        $sql2 = "UPDATE m_jadwal_praktek_antrian SET status_antrian = 'Batal' WHERE status_antrian = 'Terjadwalkan'";
        $sql2 = "UPDATE m_jadwal_praktek SET status_terlaksana = 'Sudah Terlaksana' WHERE pk = '$pk'";
        $query = $this->db->query($sql);
        $query2 = $this->db->query($sql2);
        
        $this->response(array('status' => '1'));
    }
  
    function deleteriwayatsuluk_get() {
        $pk = $this->get('pk');
        $sql = "DELETE FROM m_edu_suluk_santri WHERE pk = '$pk'";
        $query = $this->db->query($sql);
        //$hasil = $query->result();
        
        if ($this->db->affected_rows() > 0) {
            $this->response(array('status' => '1'), 201);
        } else {
            $this->response(array('status' => '0'), 502);
        }
    }


    function addpasien_post() {
       
        $data = array(

                'password' => $this->post('password'),

                'nomor_registrasi' => $this->post('nomor_registrasi'),

                'tanggal_registrasi' => $this->post('tanggal_registrasi'),

                'nomor_telepon' => $this->post('nomor_telepon'),

                'nama' => $this->post('nama'),

                'alamat' => $this->post('alamat'),

                'golongan_darah' => $this->post('golongan_darah'),

                'usia' => $this->post('usia'),

                'username' => $this->post('username'),

                'email' => $this->post('email'),

                'status_login' => 'pasien',

                'approved' => '1',

                'status_sinkron' => '1',

            );
                    
        $insert = $this->db->insert('m_kontak', $data);

        if ($insert) {
            $this->response(array('status' => '1', 'id' => $insert ,'data' => $data));
        } else {
            $this->response(array('status' => '0'));
        }

    }

    function editpasien_put() {
       
         $nomor_registrasi = $this->put('nomor_registrasi');

         $params = array(

                    'password' => $this->post('password'),

                    'nomor_registrasi' => $this->put('nomor_registrasi'),

                    'tanggal_registrasi' => $this->put('tanggal_registrasi'),

                    'nomor_telepon' => $this->put('nomor_telepon'),

                    'nama' => $this->put('nama'),

                    'alamat' => $this->put('alamat'),

                    'golongan_darah' => $this->put('golongan_darah'),

                    'usia' => $this->put('usia'),

                    'username' => $this->put('username'),

                    'email' => $this->put('email'),

                    'status_login' => 'pasien',

                    'approved' => '1',

                );
                    
        $this->db->where('nomor_registrasi',$nomor_registrasi);
        $response = $this->db->update('m_kontak',$params);

        if ($response) {

            $this->response(array('status' => '1'));

        } else {

            $this->response(array('status' => '0'));

        }

    }

    function deletepasien_delete() {

        $nomor_registrasi = $this->delete('nomor_registrasi');

        $this->db->delete('m_kontak',array('nomor_registrasi'=>$nomor_registrasi));
        
        if ($this->db->affected_rows() > 0) {
            $this->response(array('status' => '1'), 201);
        } else {
            $this->response(array('status' => '0'), 502);
        }
    }

    // show data of all card_stock
    function getpasien_get() {
       
        $result =  $this->db->get_where('m_kontak',array('status_login'=>'pasien', 'status_sinkron'=>'0'));
        
        if($result->num_rows() > 0 ){
            
            $this->response(array('data' => $result->result(),'status' => '1' ), 200);
            
        } else {
            
            $this->response(array('status' => '0' ), 200);
        }
        
    }

    function editstatuspasien_put() {
       
         $nomor_registrasi = $this->put('nomor_registrasi');

         $params = array(

                    'status_sinkron' => 1,

                );
                    
        $this->db->where('nomor_registrasi',$nomor_registrasi);
       
        $response = $this->db->update('m_kontak',$params);

        if ($response) {

            $this->response(array('status' => '1'));

        } else {

            $this->response(array('status' => '0'));

        }

    }
}