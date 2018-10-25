<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class m_tb_proposal extends CI_Model{
	function __construct(){
        parent::__construct();
        $this->load->database();
	}

    public $table ="af_proposal";
    function getproposal(){
        return $this->db->query("SELECT * FROM af_proposal ORDER BY id_proposal ASC")->result();
	}	
	
    function af_proposal(){
        $query = $this->db->get('af_proposal');
        return $query->result_array();
    }

    // Listing
 function listing() {
 $this->db->select('*');
 $this->db->from('af_proposal');
 $query = $this->db->get();
 return $query->result();
 }



function getAll(){
	 $hasil=$this->db->query("SELECT * FROM af_proposal");
    return $hasil;
    }

    function input_data($table,$data){
    return $this->db->insert($table, $data);
    }

    function edit_data($where,$table){
    return $this->db->get_where($table,$where);
    }

    function update_data($where,$data,$table){
        $this->db->where($where);
        $this->db->update($table);
    }

    function hapus_data($where, $table){
        $this->db->where($where);
        $this->db->delete($table);        
    }

    function get_option1(){
        $this->db->select('*');
        $this->db->from('af_program');
        $query = $this->db->get();
        return $query->result();
    }

    function get_option2(){
        $this->db->select('*');
        $this->db->from('af_bidang');
        $query = $this->db->get();
        return $query->result();
    }

    function get_option3(){
        $this->db->select('*');
        $this->db->from('af_kategori');
        $query = $this->db->get();
        return $query->result();
    }

    function kdunik(){
        $q = $this->db->query("SELECT MAX(RIGHT(id_proposal,3)) as kd_max from af_proposal");
        $kd = "";
        if($q->num_rows()>0){
            foreach($q->result() as $k){
                $tmp = ((int)$k->kd_max)+1;
                $kd = sprintf("%05s", $tmp);
            }
        } else {
            $kd = "0001";
        }
        return "PR-" .$kd;
    }
    
}