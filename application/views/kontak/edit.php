<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Kontak Edit</h3>
            </div>
			<?php echo form_open('kontak/edit/'.$m_kontak['pk']); ?>
			<div class="box-body">
				<?php echo validation_errors(); ?>			
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_registrasi" class="control-label">Nomor Registrasi</label>
						<div class="form-group">
							<input type="text" name="nomor_registrasi" value="<?php echo ($this->input->post('nomor_registrasi') ? $this->input->post('nomor_registrasi') : $m_kontak['nomor_registrasi']); ?>" class="form-control" id="nomor_registrasi" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="tanggal_registrasi" class="control-label">Tanggal Registrasi</label>
						<div class="form-group">
							<input type="text" name="tanggal_registrasi" value="<?php echo ($this->input->post('tanggal_registrasi') ? $this->input->post('tanggal_registrasi') : $m_kontak['tanggal_registrasi']); ?>" class="form-control" id="tanggal_registrasi" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama" class="control-label">Nama</label>
						<div class="form-group">
							<input type="text" name="nama" value="<?php echo ($this->input->post('nama') ? $this->input->post('nama') : $m_kontak['nama']); ?>" class="form-control" id="nama" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_telepon" class="control-label">Nomor Telepon</label>
						<div class="form-group">
							<input type="text" name="nomor_telepon" value="<?php echo ($this->input->post('nomor_telepon') ? $this->input->post('nomor_telepon') : $m_kontak['nomor_telepon']); ?>" class="form-control" id="nomor_telepon" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="jenis_kelamin" class="control-label">Jenis Kelamin</label>
						<div class="form-group">
							<?php
									if($m_kontak['jenis_kelamin']=='L'){$a=true;}else{$a=false;}
									if($m_kontak['jenis_kelamin']=='P'){$b=true;}else{$b=false;}
									echo form_radio('jenis_kelamin','L',$a).'L';
									echo " ";
									echo form_radio('jenis_kelamin','P',$b).'P';
							if(form_error('jenis_kelamin'))
								{
								?>
							<span class="help-block"><?=form_error('jenis_kelamin');?></span>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama_ibu_kandung" class="control-label">Nama Ibu Kandung</label>
						<div class="form-group">
							<input type="text" name="nama_ibu_kandung" value="<?php echo ($this->input->post('nama_ibu_kandung') ? $this->input->post('nama_ibu_kandung') : $m_kontak['nama_ibu_kandung']); ?>" class="form-control" id="nama_ibu_kandung" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="alamat" class="control-label">Alamat</label>
						<div class="form-group">
							<input type="text" name="alamat" value="<?php echo ($this->input->post('alamat') ? $this->input->post('alamat') : $m_kontak['alamat']); ?>" class="form-control" id="alamat" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kecamatan" class="control-label">Kecamatan</label>
						<div class="form-group">
							<input type="text" name="kecamatan" value="<?php echo ($this->input->post('kecamatan') ? $this->input->post('kecamatan') : $m_kontak['kecamatan']); ?>" class="form-control" id="kecamatan" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kelurahan" class="control-label">Kelurahan</label>
						<div class="form-group">
							<input type="text" name="kelurahan" value="<?php echo ($this->input->post('kelurahan') ? $this->input->post('kelurahan') : $m_kontak['kelurahan']); ?>" class="form-control" id="kelurahan" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="kota" class="control-label">Kota</label>
						<div class="form-group">
							<input type="text" name="kota" value="<?php echo ($this->input->post('kota') ? $this->input->post('kota') : $m_kontak['kota']); ?>" class="form-control" id="kota" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="provinsi" class="control-label">Provinsi</label>
						<div class="form-group">
							<input type="text" name="provinsi" value="<?php echo ($this->input->post('provinsi') ? $this->input->post('provinsi') : $m_kontak['provinsi']); ?>" class="form-control" id="provinsi" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="golongan_darah" class="control-label">Golongan Darah</label>
						<div class="form-group">
							<select name="golongan_darah" class="form-control">
								<option value="">Pilih Golongan Darah</option>
								<option value="A" <?php if ($m_kontak['golongan_darah']=="A") {echo 'selected="selected"';}?>>A</option>
								<option value="B" <?php if ($m_kontak['golongan_darah']=="B") {echo 'selected="selected"';}?>>B</option>
								<option value="AB" <?php if ($m_kontak['golongan_darah']=="AB") {echo 'selected="selected"';}?>>AB</option>
								<option value="O" <?php if ($m_kontak['golongan_darah']=="O") {echo 'selected="selected"';}?>>O</option>

							</select>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="usia" class="control-label">Usia</label>
						<div class="form-group">
							<input type="text" name="usia" value="<?php echo ($this->input->post('usia') ? $this->input->post('usia') : $m_kontak['usia']); ?>" class="form-control" id="usia" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="email" class="control-label">Email</label>
						<div class="form-group">
							<input type="text" name="email" value="<?php echo ($this->input->post('email') ? $this->input->post('email') : $m_kontak['email']); ?>" class="form-control" id="email" />
						</div>
					</div>
				</div>
				<div class="row clearfix">
					
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="username" class="control-label">Username</label>
						<div class="form-group">
							<input type="text" name="username" value="<?php echo ($this->input->post('username') ? $this->input->post('username') : $m_kontak['username']); ?>" class="form-control" id="username" />
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="password" class="control-label">Password</label>
						<div class="form-group">
							<input type="text" name="password" value="<?php echo ($this->input->post('password') ? $this->input->post('password') : $m_kontak['password']); ?>" class="form-control" id="password" />
						</div>
					</div>

				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="metode_pembayaran_fk" class="control-label">Metode Pembayaran</label>
						<div class="form-group">
							<select name="metode_pembayaran_fk" class="form-control" required>
								<option value="">Pilih Metode Pembayaran</option>
								<?php 
								foreach($all_m_metode_pembayaran as $m_metode_pembayaran)
								{
									$selected = ($m_metode_pembayaran['pk'] == $m_kontak['metode_pembayaran_fk']) ? ' selected="selected"' : "";

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