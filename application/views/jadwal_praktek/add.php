<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Jadwal Praktek Tambah</h3>
            </div>
            <?php echo form_open('jadwal_praktek/add'); ?>
          	<div class="box-body">
          		<?php echo validation_errors(); ?>
            	<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="dokter_fk" class="control-label">Dokter </label>
						<div class="form-group">
							<select name="dokter_fk" class="form-control" required>
								<option value="0"> Pilih Dokter </option>
								<?php 
								foreach($all_m_dokter as $m_kontak)
								{
									$selected = ($m_kontak->pk == $this->input->post('dokter_fk')) ? ' selected="selected"' : "";

									echo '<option value="'.$m_kontak->pk.'" '.$selected.'>'.$m_kontak->nama.'</option>';
								} 
								?>
							</select>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="pelayanan_fk" class="control-label">Pelayanan </label>
						<div class="form-group">
							<select name="pelayanan_fk" class="form-control" required>
								<option value="0">Pilih Layanan</option>
								<?php 
								foreach($all_m_pelayanan as $m_pelayanan)
								{
									$selected = ($m_pelayanan['id'] == $this->input->post('pelayanan_fk')) ? ' selected="selected"' : "";

									echo '<option value="'.$m_pelayanan['id'].'" '.$selected.'>'.$m_pelayanan['nama_pelayanan'].'</option>';
								} 
								?>
							</select>
						</div>
					</div>

				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="id_session_jadwal" class="control-label">Id Session Jadwal</label>
						<div class="form-group">
							<input type="text" name="id_session_jadwal" value="<?php echo $id_session_jadwal; ?>" class="form-control" id="id_session_jadwal" required/>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="tanggal_praktek" class="control-label">Tanggal Praktek</label>
						<div class="form-group date">
							<input type="text" name="tanggal_praktek" value="<?php echo date('Y-m-d'); ?>" class="form-control" id="tanggal_praktek" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 bootstrap-timepicker">
						<label for="jam_praktek" class="control-label">Jam Praktek</label>
						<div class="form-group">
							<input type="text" name="jam_praktek" value="<?php echo $this->input->post('jam_praktek'); ?>" class="form-control" id="jam_praktek" required/>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="number" class="control-label">Rentang Waktu (Jam)</label>
						<div class="form-group">
							<input type="number" min="0" name="rentang_waktu" value="<?php echo $this->input->post('rentang_waktu'); ?>" class="form-control" id="rentang_waktu" />
						</div>
					</div>
					
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="number" class="control-label">Batasan Pasien</label>
						<div class="form-group">
							<input type="number" min="0" name="batasan_pasien" value="<?php echo $this->input->post('batasan_pasien'); ?>" class="form-control" id="batasan_pasien" />
						</div>
					</div>

					

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="informasi_tambahan" class="control-label">Informasi Tambahan</label>
						<div class="form-group">
							<textarea name="informasi_tambahan" class="form-control" id="informasi_tambahan"><?php echo $this->input->post('informasi_tambahan'); ?></textarea>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<!-- <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="status_terlaksana" class="control-label">Status Terlaksana</label>
						<div class="form-group">
							<input type="text" name="status_terlaksana" value="<?php echo $this->input->post('status_terlaksana'); ?>" class="form-control" id="status_terlaksana" />
						</div>
					</div> -->
					
				</div>
			</div>
          	<div class="box-footer">
            	<button type="submit" class="btn btn-success">
            		<i class="fa fa-check"></i> Save
            	</button>
          	</div>
            <?php echo form_close(); ?>
      	</div>
    </div>
</div>
<script type="text/javascript">
$(function () {
		$('#tanggal_praktek').datepicker({
			showButtonPanel: true,
			changeMonth: true,
			format: 'yyyy-mm-dd',
			autoclose: true, 
			todayHighlight: true
	    });

	   $("#jam_praktek").timepicker({
        format: 'HH:mm:ss',
           showMeridian:false,
              showInputs: false
        });
	});
</script>