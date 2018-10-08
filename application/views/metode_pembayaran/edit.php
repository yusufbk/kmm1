<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Metode Pembayaran Edit</h3>
            </div>
			<?php echo form_open_multipart('metode_pembayaran/edit/'.$m_metode_pembayaran['pk']); ?>
			<div class="box-body">
				<?php echo validation_errors(); ?>			
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="metode_bayar" class="control-label">Metode Bayar</label>
						<div class="form-group">
							<input type="text" name="metode_bayar" value="<?php echo ($this->input->post('metode_bayar') ? $this->input->post('metode_bayar') : $m_metode_pembayaran['metode_bayar']); ?>" class="form-control" id="metode_bayar" required/>
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