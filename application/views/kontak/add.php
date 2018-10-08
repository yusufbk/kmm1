<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Kontak Add</h3>
            </div>
            <?php echo form_open('kontak/add'); ?>
          	<div class="box-body">
          		<?php echo validation_errors(); ?>
            	<div class="row clearfix">
			
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_registrasi" class="control-label">Nomor Registrasi</label>
						<div class="form-group">
							<input type="text" name="nomor_registrasi" value="<?php echo $this->input->post('nomor_registrasi'); ?>" class="form-control" id="nomor_registrasi" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama" class="control-label">Nama</label>
						<div class="form-group">
							<input type="text" name="nama" value="<?php echo $this->input->post('nama'); ?>" class="form-control" id="nama" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="tanggal_registrasi" class="control-label">Tanggal Registrasi</label>
						<div class="form-group">
							<input type="text" name="tanggal_registrasi" value="<?php echo $this->input->post('tanggal_registrasi'); ?>" class="form-control" id="tanggal_registrasi" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_telepon" class="control-label">Nomor Telepon</label>
						<div class="form-group">
							<input type="text" name="nomor_telepon" value="<?php echo $this->input->post('nomor_telepon'); ?>" class="form-control" id="nomor_telepon" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="jenis_kelamin" class="control-label">Jenis Kelamin</label>
						<div class="form-group">
							<select name="jenis_kelamin" class="form-control">
								<option value="">Pilih Jenis Kelamin</option>
								<option value="Laki-laki" <?php if ($this->input->post('jenis_kelamin')=="L") {echo 'selected="selected"';}?>>Laki-laki</option>
								<option value="Perempuan" <?php if ($this->input->post('jenis_kelamin')=="P") {echo 'selected="selected"';}?>>Perempuan</option>
							</select>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama_ibu_kandung" class="control-label">Nama Ibu Kandung</label>
						<div class="form-group">
							<input type="text" name="nama_ibu_kandung" value="<?php echo $this->input->post('nama_ibu_kandung'); ?>" class="form-control" id="nama_ibu_kandung" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="email" class="control-label">Email</label>
						<div class="form-group">
							<input type="text" name="email" value="<?php echo $this->input->post('email'); ?>" class="form-control" id="email" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="alamat" class="control-label">Alamat</label>
						<div class="form-group">
							<input type="text" name="alamat" value="<?php echo $this->input->post('alamat'); ?>" class="form-control" id="alamat" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kecamatan" class="control-label">Kecamatan</label>
						<div class="form-group">
							<input type="text" name="kecamatan" value="<?php echo $this->input->post('kecamatan'); ?>" class="form-control" id="kecamatan" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kelurahan" class="control-label">Kelurahan</label>
						<div class="form-group">
							<input type="text" name="kelurahan" value="<?php echo $this->input->post('kelurahan'); ?>" class="form-control" id="kelurahan" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kota" class="control-label">Kota</label>
						<div class="form-group">
							<input type="text" name="kota" value="<?php echo $this->input->post('kota'); ?>" class="form-control" id="kota" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="provinsi" class="control-label">Provinsi</label>
						<div class="form-group">
							<input type="text" name="provinsi" value="<?php echo $this->input->post('provinsi'); ?>" class="form-control" id="provinsi" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="golongan_darah" class="control-label">Golongan Darah</label>
						<div class="form-group">
							<select name="golongan_darah" class="form-control">
								<option value="">Pilih Golongan Darah</option>
								<option value="A" <?php if ($this->input->post('golongan_darah')=="A") {echo 'selected="selected"';}?>>A</option>
								<option value="B" <?php if ($this->input->post('golongan_darah')=="B") {echo 'selected="selected"';}?>>B</option>
								<option value="AB" <?php if ($this->input->post('golongan_darah')=="AB") {echo 'selected="selected"';}?>>AB</option>
								<option value="O" <?php if ($this->input->post('golongan_darah')=="O") {echo 'selected="selected"';}?>>O</option>

							</select>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="usia" class="control-label">Usia</label>
						<div class="form-group">
							<input type="text" name="usia" value="<?php echo $this->input->post('usia'); ?>" class="form-control" id="usia" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="username" class="control-label">Username</label>
						<div class="form-group">
							<input type="text" name="username" value="<?php echo $this->input->post('username'); ?>" class="form-control" id="username" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="password" class="control-label">Password</label>
						<div class="form-group">
							<input type="password" name="password" value="<?php echo $this->input->post('password'); ?>" class="form-control" id="password" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="metode_pembayaran_fk" class="control-label">Metode Pembayaran</label>
						<div class="form-group">
							<select name="jadwal_praktek_fk" class="form-control" required>
								<option value="">Pilih Metode Pembayaran</option>
								<?php 
								foreach($all_m_metode_pembayaran as $m_metode_pembayaran)
								{
									$selected = ($m_metode_pembayaran['pk'] == $this->input->post('metode_pembayaran_fk')) ? ' selected="selected"' : "";

									echo '<option value="'.$m_metode_pembayaran['pk'].'" '.$selected.'>'.$m_metode_pembayaran['metode_bayar'].'</option>';
								} 
								?>
							</select>
						</div>
					</div>
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