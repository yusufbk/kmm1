<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Metode Pembayaran</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('metode_pembayaran/add'); ?>" class="btn btn-success btn-sm"><span class="fa fa-plus" title="Tambah"></span> Tambah </a> 
                </div>
            </div>
           <div class="box-body">
               <table id="example1" class="table table-bordered table-striped">
                
                    <thead>
                    <tr>
						<th>No</th>
						<th>Metode Bayar</th>
						<th>Actions</th>
					</tr>
                    </thead>
                    <tbody>
                    <?php $no=1;foreach($m_metode_pembayaran as $m){ ?>
                    <tr>
						<td><?php echo $no; ?></td>
						<td><?php echo $m['metode_bayar']; ?></td>
						<td>
                            <a href="<?php echo site_url('metode_pembayaran/edit/'.$m['pk']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil" title="Edit"></span></a> 
                            <a href="<?php echo site_url('metode_pembayaran/remove/'.$m['pk']); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin Menghapus Data ini ?')"><span class="fa fa-trash" title="Hapus"></span></a>
                        </td>						
                    </tr>
                    <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
