<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Empresa extends CI_Controller {

    private $res_msj = '';

    function __construct() {
        parent::__construct();

        $this->user->check_session();
        $this->load->model('empresa_model');
    }

    public function index() {
        
    }

    public function crear_local() {
        $emp_nombre = $this->input->post('emp_name');
        $emp_direccion = $this->input->post('emp_address');
        $emp_tipo = $this->input->post('emp_tipo');
        $emp_latitud = $this->input->post('emp_lat');
        $emp_longitud = $this->input->post('emp_lng');

        //Imprimimos los datos para verificar que los esta extrayendo correctamente:
//        echo 'Datos a guardar: <br>';
//        echo 'Nombre:' . $emp_nombre . ' <br>';
//        echo 'Direccion: ' . $emp_direccion . '<br>';
//        echo 'Tipo: ' . $emp_tipo . '<br>';
//        echo 'Latitud: ' . $emp_latitud . '<br>';
//        echo 'Longitud: ' . $emp_longitud . '<br>';

        $this->db->trans_begin(); // inicio de transaccion

        $nuevo_id = $this->empresa_model->save_new($emp_nombre, $emp_direccion, $emp_tipo, $this->user->id, $emp_latitud, $emp_longitud);
        if ($nuevo_id <= 0) {
            $this->db->trans_rollback();
            $this->res_msj .= error_msg('<br>Ha ocurrido un error al guardar la empresa en la base de datos.');
            echo $this->res_msj;
        }
        // verifico que todo elproceso en si este bien ejecutado
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $this->res_msj .= error_msg('<br>Ha ocurrido un error al guardar la empresa en la base de datos.');
            echo $this->res_msj;
//            echo error_msg('<br>Ha ocurrido un error al guardar el paciente en la base de datos.');
        } else {
            $this->res_msj .= success_msg('. Empresa registrada');
            echo $this->res_msj;

            $this->db->trans_commit(); // finaliza la transaccion de begin
        }
    }

    public function editar_local() {
        $emp_id = $this->input->post('emp_id');
        $emp_nombre = $this->input->post('emp_name');
        $emp_direccion = $this->input->post('emp_address');
        $emp_tipo = $this->input->post('emp_tipo');
        $emp_latitud = $this->input->post('emp_lat');
        $emp_longitud = $this->input->post('emp_lng');

        //Imprimimos los datos para verificar que los esta extrayendo correctamente:
//        echo 'Datos a guardar: <br>';
//        echo 'Nombre:' . $emp_nombre . ' <br>';
//        echo 'Direccion: ' . $emp_direccion . '<br>';
//        echo 'Tipo: ' . $emp_tipo . '<br>';
//        echo 'Latitud: ' . $emp_latitud . '<br>';
//        echo 'Longitud: ' . $emp_longitud . '<br>';

        $this->db->trans_begin(); // inicio de transaccion

        $nuevo_id = $this->empresa_model->edit_empresa($emp_id, $emp_nombre, $emp_direccion, $emp_tipo, $this->user->id, $emp_latitud, $emp_longitud);
        if ($nuevo_id <= 0) {
            $this->db->trans_rollback();
            $this->res_msj .= error_msg('<br>Ha ocurrido un error al actualizar la empresa en la base de datos.');
            echo $this->res_msj;
        }
        // verifico que todo elproceso en si este bien ejecutado
        if ($this->db->trans_status() === FALSE) {
            $this->db->trans_rollback();
            $this->res_msj .= error_msg('<br>Ha ocurrido un error al guardar la empresa en la base de datos.');
            echo $this->res_msj;
//            echo error_msg('<br>Ha ocurrido un error al guardar el paciente en la base de datos.');
        } else {
            $this->res_msj .= success_msg('. Empresa actualizada');
            echo $this->res_msj;

            $this->db->trans_commit(); // finaliza la transaccion de begin
        }
    }

}
