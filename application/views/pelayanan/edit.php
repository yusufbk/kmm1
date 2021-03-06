<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Pelayanan Edit</h3>
            </div>
			<?php echo form_open_multipart('pelayanan/edit/'.$m_pelayanan['pk']); ?>
			<div class="box-body">
				<?php echo validation_errors(); ?>			
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nama_pelayanan" class="control-label">Nama Pelayanan</label>
						<div class="form-group">
							<input type="text" name="nama_pelayanan" value="<?php echo ($this->input->post('nama_pelayanan') ? $this->input->post('nama_pelayanan') : $m_pelayanan['nama_pelayanan']); ?>" class="form-control" id="nama_pelayanan" required/>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="id_pelayanan" class="control-label">Id Pelayanan</label>
						<div class="form-group">
							<input type="text" name="id_pelayanan" value="<?php echo ($this->input->post('id_pelayanan') ? $this->input->post('id_pelayanan') : $m_pelayanan['id_pelayanan']); ?>" class="form-control" id="id_pelayanan" required />
						</div>
					</div>
				</div>
			
				<div class="row clearfix">

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="jenis_pelayanan_fk" class="control-label">Jenis Pelayanan</label>
						<div class="form-group">
							<select name="jenis_pelayanan_fk" class="form-control" required>
								<option value="0" >Pilih Jenis Pelayanan</option>
								<option value="1" <?php if ($m_pelayanan['jenis_pelayanan_fk']=="1") {echo 'selected="selected"';}?>>Poli Spesialis</option>
								<option value="2" <?php if ($m_pelayanan['jenis_pelayanan_fk']=="2") {echo 'selected="selected"';}?>>Poli Umum</option>
							</select>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="gambar" class="control-label">Image</label>
						<div class="form-group">
							<input type="file" name="gambar" value="<?php echo ($this->input->post('gambar') ? $this->input->post('gambar') : $m_pelayanan['image']); ?>" class="form-control" id="gambar" />
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="deskripsi_pelayanan" class="control-label">Deskripsi Pelayanan</label>
						<div class="form-group">
							<textarea name="deskripsi_pelayanan" class="form-control" id="deskripsi_pelayanan"><?php echo ($this->input->post('deskripsi_pelayanan') ? $this->input->post('deskripsi_pelayanan') : $m_pelayanan['deskripsi_pelayanan']); ?></textarea>
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