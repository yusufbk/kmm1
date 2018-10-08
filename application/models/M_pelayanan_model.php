<?php
/* 
 * Generated by CRUDigniter v3.0 Beta 
 * www.crudigniter.com
 */
 
class M_pelayanan_model extends CI_Model
{
    function __construct()
    {
        parent::__construct();
    }
    
    /*
     * Get m_pelayanan by pk
     */
    function get_m_pelayanan($pk)
    {
        return $this->db->get_where('m_pelayanan',array('pk'=>$pk))->row_array();
    }
    
    /*
     * Get all m_pelayanan
     */
    function get_all_m_pelayanan()
    {   
        $this->db->select('*,a.pk as id');
        $this->db->from('m_pelayanan a');
        $this->db->join('m_jenis_pelayanan b','a.jenis_pelayanan_fk = b.pk');
        return $this->db->get()->result_array();
    }

    function get_jumlah_all_m_pelayanan()
    {
        return $this->db->get('m_pelayanan');
    }
    
    /*
     * function to add new m_pelayanan
     */
    function add_m_pelayanan($params)
    {
        $this->db->insert('m_pelayanan',$params);
        return $this->db->insert_id();
    }
    
    /*
     * function to update m_pelayanan
     */
    function update_m_pelayanan($pk,$params)
    {
        $this->db->where('pk',$pk);
        $response = $this->db->update('m_pelayanan',$params);
        if($response)
        {
            return "m_pelayanan updated successfully";
        }
        else
        {
            return "Error occuring while updating m_pelayanan";
        }
    }
    
    /*
     * function to delete m_pelayanan
     */
    function delete_m_pelayanan($pk)
    {
        $response = $this->db->delete('m_pelayanan',array('pk'=>$pk));
        if($response)
        {
            return "m_pelayanan deleted successfully";
        }
        else
        {
            return "Error occuring while deleting m_pelayanan";
        }
    }
}
