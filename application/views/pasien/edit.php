<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Pasien Edit</h3>
            </div>
			<?php echo form_open('pasien/edit/'.$m_pasien['pk']); ?>
			<div class="box-body">
				<?php echo validation_errors(); ?>			
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_registrasi" class="control-label">Nomor Registrasi</label>
						<div class="form-group">
							<input type="text" name="nomor_registrasi" value="<?php echo $nomor_registrasi; ?>" 
							class="form-control" id="nomor_registrasi" readonly />
						<!-- <label id="tersedia" style="color:green;margin-top:5px"><i class="fa fa-check"></i> Tersedia</label>
                        <label id="tdk_tersedia" style="color:red;"><i class="fa fa-times"></i> Sudah Digunakan</label>
                        <label id="panjang_karakter" style="color:orange;margin-top:5px"><i class="fa fa-exclamation-triangle"></i> Min 4 Karakter</label> -->
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama" class="control-label">Nama</label>
						<div class="form-group">
							<input type="text" name="nama" value="<?php echo ($this->input->post('nama') ? $this->input->post('nama') : $m_pasien['nama']); ?>" class="form-control" id="nama" />
						</div>
					</div>

					
				</div>
				<div class="row clearfix">

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="tanggal_registrasi" class="control-label">Tanggal Registrasi</label>
						<div class="form-group">
							<input type="date" name="tanggal_registrasi" value="<?php echo ($this->input->post('tanggal_registrasi') ? $this->input->post('tanggal_registrasi') : $m_pasien['tanggal_registrasi']); ?>" class="form-control" id="tanggal_registrasi" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_telepon" class="control-label">Nomor Telepon</label>
						<div class="form-group">
							<input type="text" name="nomor_telepon" value="<?php echo ($this->input->post('nomor_telepon') ? $this->input->post('nomor_telepon') : $m_pasien['nomor_telepon']); ?>" class="form-control" id="nomor_telepon" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="jenis_kelamin" class="control-label">Jenis Kelamin</label>
						<div class="form-group">
							<select name="jenis_kelamin" class="form-control">
								<option value="">Pilih Jenis Kelamin</option>
								<option value="Laki-laki" <?php if ($m_pasien['jenis_kelamin']=="L") {echo 'selected="selected"';}?>>Laki-laki</option>
								<option value="Perempuan" <?php if ($m_pasien['jenis_kelamin']=="P") {echo 'selected="selected"';}?>>Perempuan</option>
							</select>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama_ibu_kandung" class="control-label">Nama Ibu Kandung</label>
						<div class="form-group">
							<input type="text" name="nama_ibu_kandung" value="<?php echo ($this->input->post('nama_ibu_kandung') ? $this->input->post('nama_ibu_kandung') : $m_pasien['nama_ibu_kandung']); ?>" class="form-control" id="nama_ibu_kandung" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="email" class="control-label">Email</label>
						<div class="form-group">
							<input type="text" name="email" value="<?php echo ($this->input->post('email') ? $this->input->post('email') : $m_pasien['email']); ?>" class="form-control" id="email" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="alamat" class="control-label">Alamat</label>
						<div class="form-group">
							<input type="text" name="alamat" value="<?php echo ($this->input->post('alamat') ? $this->input->post('alamat') : $m_pasien['alamat']); ?>" class="form-control" id="alamat" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kelurahan" class="control-label">Kelurahan</label>
						<div class="form-group">
							<input type="text" name="kelurahan" value="<?php echo ($this->input->post('kelurahan') ? $this->input->post('kelurahan') : $m_pasien['kelurahan']); ?>" class="form-control" id="kelurahan" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kecamatan" class="control-label">Kecamatan</label>
						<div class="form-group">
							<input type="text" name="kecamatan" value="<?php echo ($this->input->post('kecamatan') ? $this->input->post('kecamatan') : $m_pasien['kecamatan']); ?>" class="form-control" id="kecamatan" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kota" class="control-label">Kota</label>
						<div class="form-group">
							<input type="text" name="kota" value="<?php echo ($this->input->post('kota') ? $this->input->post('kota') : $m_pasien['kota']); ?>" class="form-control" id="kota" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="provinsi" class="control-label">Provinsi</label>
						<div class="form-group">
							<input type="text" name="provinsi" value="<?php echo ($this->input->post('provinsi') ? $this->input->post('provinsi') : $m_pasien['provinsi']); ?>" class="form-control" id="provinsi" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="golongan_darah" class="control-label">Golongan Darah</label>
						<!-- <div class="form-group">
							<input type="text" name="golongan_darah" value="<?php echo ($this->input->post('golongan_darah') ? $this->input->post('golongan_darah') : $m_pasien['golongan_darah']); ?>" class="form-control" id="golongan_darah" />
						</div> -->
						<div class="form-group">
							<select name="golongan_darah" class="form-control">
								<option value="">Pilih Golongan Darah</option>
								<option value="A" <?php if ($m_pasien['golongan_darah']=="A") {echo 'selected="selected"';}?>>A</option>
								<option value="B" <?php if ($m_pasien['golongan_darah']=="B") {echo 'selected="selected"';}?>>B</option>
								<option value="AB" <?php if ($m_pasien['golongan_darah']=="AB") {echo 'selected="selected"';}?>>AB</option>
								<option value="O" <?php if ($m_pasien['golongan_darah']=="O") {echo 'selected="selected"';}?>>O</option>

							</select>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="usia" class="control-label">Usia</label>
						<div class="form-group">
							<input type="text" name="usia" value="<?php echo ($this->input->post('usia') ? $this->input->post('usia') : $m_pasien['usia']); ?>" class="form-control" id="usia" />
						</div>
					</div>
				</div>
				<div class="row clearfix">	
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="username" class="control-label">Username</label>
						<div class="form-group">
							<input type="text" name="username" value="<?php echo ($this->input->post('username') ? $this->input->post('username') : $m_pasien['username']); ?>" class="form-control" id="username_edit" />
						<label id="username_tersedia" style="color:green;margin-top:5px"><i class="fa fa-check"></i> Tersedia</label>
                        <label id="username_tdk_tersedia" style="color:red;"><i class="fa fa-times"></i> Sudah Digunakan</label>
                        <label id="username_panjang_karakter" style="color:orange;margin-top:5px"><i class="fa fa-exclamation-triangle"></i> Min 4 Karakter</label>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="password" class="control-label">Password</label>
						<div class="form-group">
							<input type="password" name="password" value="<?php echo ($this->input->post('password') ? $this->input->post('password') : $m_pasien['password']); ?>" class="form-control" id="password" />
						</div>
					</div>
				</div>				
				</div>
				
			</div>
			<div class="box-footer">
            	<button type="submit" id="btn_save_edit" class="btn btn-success">
					<i class="fa fa-check"></i> Save
				</button>
	        </div>				
			<?php echo form_close(); ?>
		</div>
    </div>
</div>