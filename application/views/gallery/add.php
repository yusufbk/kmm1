<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Tambah gambar gallery</h3>
            </div>
            <?php echo form_open_multipart('gallery/add'); ?>
          	<div class="box-body">
          		<?php echo validation_errors(); ?>
            	<div class="row clearfix">

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="deskripsi" class="control-label">Deskripsi gambar</label>
						<div class="form-group">
							<input type="text" name="deskripsi" value="<?php echo $this->input->post('deskripsi'); ?>" class="form-control" id="deskripsi" required/>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="gambar" class="control-label">Gambar</label>
						<div class="form-group">
							<input type="file" name="gambar" value="<?php echo $this->input->post('gambar'); ?>" class="form-control" id="gambar" />
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