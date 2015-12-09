<div id="form_delete">
    <h3>Esta seguro que desea eliminar la empresa?</h3>
    <form id="form_empresa_edit" class="form-horizontal" action="<?php echo base_url('empresa/delete') ?>" method="post">

        <input value="<?php echo $id_emp ?>" type="hidden" id="id_emp" name="id_emp" class="campos" >

        <div class="form-group">
            <label for="formGroup" class="col-sm-2 control-label"></label>
            <div class="col-sm-4">
                <button type="submit" class="btn btn-success btn-lg" id="ajaxformbtn" data-target="messages_div">
                    <span class="glyphicon glyphicon-trash"></span>
                    Eliminar
                </button>
            </div>
            <label for="formGroup" class="col-sm-2 control-label"></label>
            <div class="col-sm-4">
                <button id="btn_cancel" type="reset" class="btn btn-danger btn-lg">
                    <span class="glyphicon glyphicon-remove"></span>
                    Cancelar
                </button>
            </div>
        </div>	
    </form>
</div>
<script>
    //Ocultar el div al hacer clic en cancelar
    $('#btn_cancel').click(function (){
        $('#form_delete').hide(1000);
    });
</script>