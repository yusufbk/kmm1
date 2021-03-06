<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Jadwal Praktek Edit</h3>
            </div>
			<?php echo form_open('jadwal_praktek/edit/'.$m_jadwal_praktek['pk']); ?>
			<div class="box-body">
				<?php echo validation_errors(); ?>			
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="dokter_fk" class="control-label">Dokter</label>
						<div class="form-group">
							<select name="dokter_fk" class="form-control" required>
								<option value="0">Pilih Dokter</option>
								<?php 
								foreach($all_m_dokter as $m_kontak)
								{
									$selected = ($m_kontak->pk == $m_jadwal_praktek['dokter_fk']) ? ' selected="selected"' : "";

									echo '<option value="'.$m_kontak->pk.'" '.$selected.'>'.$m_kontak->nama.'</option>';
								} 
								?>
							</select>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="pelayanan_fk" class="control-label">Pelayanan</label>
						<div class="form-group">
							<select name="pelayanan_fk" class="form-control" required>
								<option value="">Pilih Layanan </option>
								<?php 
								foreach($all_m_pelayanan as $m_pelayanan)
								{
									$selected = ($m_pelayanan['id'] == $m_jadwal_praktek['pelayanan_fk']) ? ' selected="selected"' : "";

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
							<input type="text" name="id_session_jadwal" value="<?php echo ($this->input->post('id_session_jadwal') ? $this->input->post('id_session_jadwal') : $m_jadwal_praktek['id_session_jadwal']); ?>" class="form-control" id="id_session_jadwal" required/>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="tanggal_praktek" class="control-label">Tanggal Praktek</label>
						<div class="form-group">
							<input type="text" name="tanggal_praktek" value="<?php echo ($this->input->post('tanggal_praktek') ? $this->input->post('tanggal_praktek') : $m_jadwal_praktek['tanggal_praktek']); ?>" class="form-control" id="tanggal_praktek" required/>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 bootstrap-timepicker">
						<label for="jam_praktek" class="control-label">Jam Praktek</label>
						<div class="form-group">
							<input type="text" name="jam_praktek" value="<?php echo ($this->input->post('jam_praktek') ? $this->input->post('jam_praktek') : $m_jadwal_praktek['jam_praktek']); ?>" class="form-control" id="jam_praktek" required/>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="total_pasien" class="control-label">Total Pasien</label>
						<div class="form-group">
							<input type="text" name="total_pasien" value="<?php echo ($this->input->post('total_pasien') ? $this->input->post('total_pasien') : $m_jadwal_praktek['total_pasien']); ?>" class="form-control" id="total_pasien" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="batasan_pasien" class="control-label">Batasan Pasien</label>
						<div class="form-group">
							<input type="text" name="batasan_pasien" value="<?php echo ($this->input->post('batasan_pasien') ? $this->input->post('batasan_pasien') : $m_jadwal_praktek['batasan_pasien']); ?>" class="form-control" id="batasan_pasien" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="status_terlaksana" class="control-label">Status Terlaksana</label>
						<div class="form-group">
							<select name="status_terlaksana" class="form-control" required>
								<option value="">Pilih Status</option>
								<option value="Belum Terlaksana" <?php if ($m_jadwal_praktek['status_terlaksana']=="Belum Terlaksana") {echo 'selected="selected"';}?>>Belum Terlaksana</option>
								<option value="Sedang Terlaksana" <?php if ($m_jadwal_praktek['status_terlaksana']=="Sedang Terlaksana") {echo 'selected="selected"';}?>>Sedang Terlaksana</option>
								<option value="Sudah Terlaksana" <?php if ($m_jadwal_praktek['status_terlaksana']=="Sudah Terlaksana") {echo 'selected="selected"';}?>>Sudah Terlaksana</option>
							</select>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="number" class="control-label">Rentang Waktu</label>
						<div class="form-group">
							<input type="number" min="0" name="rentang_waktu" value="<?php echo ($this->input->post('rentang_waktu') ? $this->input->post('rentang_waktu') : $m_jadwal_praktek['rentang_waktu']); ?>" class="form-control" id="rentang_waktu" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="informasi_tambahan" class="control-label">Informasi Tambahan</label>
						<div class="form-group">
							<textarea name="informasi_tambahan" class="form-control" id="informasi_tambahan"><?php echo ($this->input->post('informasi_tambahan') ? $this->input->post('informasi_tambahan') : $m_jadwal_praktek['informasi_tambahan']); ?></textarea>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					
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
              showInputs: false,
              autoclose: true, 
           format: 'HH:mm:ss',
           showMeridian:false,
        });
	});
</script>