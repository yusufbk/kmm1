<?php
/* 
 * Generated by CRUDigniter v3.0 Beta 
 * www.crudigniter.com
 */
 
class M_jadwal_praktek_antrian_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get m_jadwal_praktek_antrian by pk
     */

    function get_m_jadwal_praktek_antrian($pk)
    {
        return $this->db->get_where('m_jadwal_praktek_antrian',array('pk'=>$pk))->row_array();
    }
    
    /*
     * Get all m_jadwal_praktek_antrian
     */
    function get_all_m_jadwal_praktek_antrian($jadwal_praktek_fk)
    {
        $where ='';
        if ($jadwal_praktek_fk!=0) {
            $where = "AND a.jadwal_praktek_fk='$jadwal_praktek_fk'";
        }
        $this->db->query(" SELECT *,a.pk as id,b.nama as pasien,c.id_session_jadwal, d.metode_bayar
                                  FROM m_jadwal_praktek_antrian a
                                  LEFT JOIN m_kontak b on a.pasien_fk = b.pk
                                  LEFT JOIN m_jadwal_praktek c on a.jadwal_praktek_fk = c.pk 
								  LEFT JOIN m_metode_pembayaran d on a.metode_pembayaran_fk = d.pk
                                  WHERE 1=1 $where ORDER BY jadwal_praktek_fk,nomor_urut asc")->result_array();


        /*$this->db->get('m_jadwal_praktek_antrian')->result_array();*/
    }
    
    function get_jumlah_all_m_jadwal_praktek_antrian()
    {
        return $this->db->get('m_jadwal_praktek_antrian');
    }
    /*
     * function to add new m_jadwal_praktek_antrian
     */
    function add_m_jadwal_praktek_antrian($params)
    {
        $this->db->insert('m_jadwal_praktek_antrian',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update m_jadwal_praktek_antrian
     */
    function update_m_jadwal_praktek_antrian($pk,$params)
    {
        $this->db->where('pk',$pk);
        $response = $this->db->update('m_jadwal_praktek_antrian',$params);
        if($response)
        {
            return "m_jadwal_praktek_antrian updated successfully";
        }
        else
        {
            return "Error occuring while updating m_jadwal_praktek_antrian";
        }
    }
    
    /*
     * function to delete m_jadwal_praktek_antrian
     */
    function delete_m_jadwal_praktek_antrian($pk)
    {
        $response = $this->db->delete('m_jadwal_praktek_antrian',array('pk'=>$pk));
        if($response)
        {
            return "m_jadwal_praktek_antrian deleted successfully";
        }
        else
        {
            return "Error occuring while deleting m_jadwal_praktek_antrian";
        }
    }

    function start_m_jadwal_praktek_antrian($pk,$fk)
    {
        $params_satu['status_antrian'] = 'Selesai';

        $params_dua['status_antrian'] = 'Tindakan';
        $params_dua['realisasi_kunjung'] = date("Y-m-d H:i:s");


        $this->db->where('status_antrian','Tindakan');
        $this->db->where('jadwal_praktek_fk',$fk);
        $this->db->update('m_jadwal_praktek_antrian',$params_satu);

        $this->db->where('pk',$pk);
        $response = $this->db->update('m_jadwal_praktek_antrian',$params_dua);

        if($response)
        {
            return "m_jadwal_praktek_antrian updated successfully";
        }
        else
        {
            return "Error occuring while updating m_jadwal_praktek_antrian";
        }
    }

    function done_m_jadwal_praktek_antrian($pk)
    {
        $params_dua['status_antrian'] = 'Selesai';

        $this->db->where('pk',$pk);
        $response = $this->db->update('m_jadwal_praktek_antrian',$params_dua);

        if($response)
        {
            return "m_jadwal_praktek_antrian updated successfully";
        }
        else
        {
            return "Error occuring while updating m_jadwal_praktek_antrian";
        }
    }

    function cancel_m_jadwal_praktek_antrian($pk)
    {
        $params_dua['status_antrian'] = 'Batal';

        $this->db->where('pk',$pk);
        $response = $this->db->update('m_jadwal_praktek_antrian',$params_dua);

        if($response)
        {
            return "m_jadwal_praktek_antrian updated successfully";
        }
        else
        {
            return "Error occuring while updating m_jadwal_praktek_antrian";
        }
    }

	function get_no_urut($pk)
	{
		$this->db->select("*");
        $this->db->where("jadwal_praktek_fk", $pk);
        $this->db->order_by("nomor_urut", "DESC");
        $this->db->limit(1);
		$query = $this->db->get("m_jadwal_praktek_antrian")->row_array();
		$max = $query['nomor_urut'];

        return $max+1;
	}
}