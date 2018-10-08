<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>  
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Pasien</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('pasien/add'); ?>" class="btn btn-success btn-sm">
                    <span class="fa fa-plus" title="Tambah"></span> Tambah </a>
                </div>
            </div>
           <div class="box-body table-responsive">
               <table id="example1" class="table no-margin table-bordered table-striped">
               <thead>
                    <tr>
						<th>No</th>
						
						<th>Nomor Registrasi</th>
						<th>Tanggal Registrasi</th>
						<th>Nama</th>
						<th>Jenis Kelamin</th>
						<th>Usia</th>
						<th>Golongan Darah</th>
						<th>Nama Ibu Kandung</th>
						<th>Telepon</th>
						<th>Email</th>
						<th>Alamat</th>
						<!-- <th>Kecamatan</th>
						<th>Kelurahan</th> -->
						<th>Kota</th>
						<!-- <th>Provinsi</th> -->						
						<th>Approve</th>
						<th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>

                    <?php $no=1; foreach($m_pasien as $m){ ?>
                    <tr>
						<td><?php echo $no; ?></td>
						
						<td><?php echo $m->nomor_registrasi; ?></td>
						<td><?php echo $m->tanggal_registrasi; ?></td>
						<td><?php echo $m->nama; ?></td>
						<td><?php
								if($m->jenis_kelamin == 'L'){
									echo 'Laki-laki'; 
								} else if($m->jenis_kelamin == 'P'){
									echo 'Perempuan';
								}
							?></td>
						<td><?php echo $m->usia; ?></td>
						<td><?php echo $m->golongan_darah; ?></td>
						<td><?php echo $m->nama_ibu_kandung; ?></td>
						<td><?php echo $m->nomor_telepon; ?></td>
						<td><?php echo $m->email; ?></td>
						<td><?php echo $m->alamat; ?></td>
						<!-- <td><?php echo $m->kecamatan; ?></td>
						<td><?php echo $m->kelurahan; ?></td> -->
						<td><?php echo $m->kota; ?></td>
						<!-- <td><?php echo $m->provinsi; ?></td> -->			

						<td>
							<?php if($m->approved=='0' ||$m->approved=='') { ?>
                            <button class="btn btn-primary btn-xs" onclick="approve('<?=$m->pk?>')" >Approve</button>
                            <?php } else { ?>
                            <button class="btn btn-success btn-xs" disabled>Terverifikasi</button>
                            <?php } ?>
                        </td>
						
						<td>
                            <a href="<?php echo site_url('pasien/edit/'.$m->pk); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil" title="Edit"></span></a> 
                            <a href="<?php echo site_url('pasien/remove/'.$m->pk); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin Menghapus Data ini ?')"><span class="fa fa-trash" title="Delete"></span></a>
                        </td>
                    </tr>
                    <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

	
	<div class="modal fade modal-primary" id="modal_approve" role="dialog">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title">Approval </h4>
				</div>
				<div class="modal-body">
				<form role="form" method="post" action="<?=site_url('pasien/approve')?>">
				<?php echo validation_errors(); ?>
					<div class="row clearfix">
						<div class="col-xs-12">
							<label for="nomor_registrasi" class="control-label">Nomor Registrasi</label>
							<div class="form-group">
								<input type="hidden" name="pk" id="pk"/>
								<input type="text" name="nomor_registrasi" value="<?php echo $this->input->post('nomor_registrasi'); ?>" class="form-control" id="nomor_registrasi" required/>
								<label id="tersedia" style="color:green;margin-top:5px"><i class="fa fa-check"></i> Tersedia</label>
		                        <label id="tdk_tersedia" style="color:red;"><i class="fa fa-times"></i> Sudah Digunakan</label>
		                        <label id="panjang_karakter" style="color:orange;margin-top:5px"><i class="fa fa-exclamation-triangle"></i> Min 4 Karakter</label>
							</div>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline pull-right" data-dismiss="modal">Batal</button>
					<button type="submit" id="btn_submit" class="btn btn-outline pull-left">Approve</button>
				</div>
				</form>
			</div>
		<!-- /.modal-content -->
		</div>
	<!-- /.modal-dialog -->
	</div>
<!-- /.modal -->

<script type="text/javascript">
	function approve(pk){
		$('#pk').val(pk);
        $('#modal_approve').modal('show'); // show bootstrap modal
    }
</script>
