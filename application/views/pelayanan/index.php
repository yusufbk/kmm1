<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Pelayanan</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('pelayanan/add'); ?>" class="btn btn-success btn-sm"><span class="fa fa-plus" title="Tambah"></span> Tambah </a> 
                </div>
            </div>
           <div class="box-body">
               <table id="example1" class="table table-bordered table-striped">
                
                    <thead>
                    <tr>
						<th>No</th>
						<th>Nama Pelayanan</th>
						<th>Kode Pelayanan</th>
                        <th>Jenis Pelayanan</th>
						<th>Image</th>
						<th>Deskripsi</th>
						<th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $no=1;foreach($m_pelayanan as $m){ ?>
                    <tr>
						<td><?php echo $no; ?></td>
						<td><?php echo $m['nama_pelayanan']; ?></td>
						<td><?php echo $m['id_pelayanan']; ?></td>
                        <td><?php echo $m['jenis_pelayanan']; ?></td>
						<td><!-- <?php echo $m['image']; ?> -->
                        <img src="<?=base_url('resources/img/'.$m['image']);?>" width="70" height="30">                  
                        </td>
						<td><?php echo $m['deskripsi_pelayanan']; ?></td>
						<td>
                            <a href="<?php echo site_url('pelayanan/edit/'.$m['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil" title="Edit"></span></a> 
                            <a href="<?php echo site_url('pelayanan/remove/'.$m['id']); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin Menghapus Data ini ?')"><span class="fa fa-trash" title="Hapus"></span></a>
                        </td>
                    </tr>
                    <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
