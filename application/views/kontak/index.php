<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Kontak</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('kontak/add'); ?>" class="btn btn-success btn-sm">Add</a> 
                </div>
            </div>
           <div class="box-body">
               <table id="example1" class="table table-bordered table-striped">
               <thead>
                    <tr>
						<th>No</th>
						<th>Nama</th>
						<th>Nomor Registrasi</th>
						<th>Tanggal Registrasi</th>
						<th>Jenis Kelamin</th>
						
						<th>Alamat</th>
						<!-- <th>Kecamatan</th>
						<th>Kelurahan</th> -->
						<th>Kota</th>
						<!-- <th>Provinsi</th> -->
						<th>Usia</th>
						<th>Nama Ibu Kandung</th>
						<th>Metode Pembayaran</th>
						<th>Telepon</th>
						<th>Email</th>
						<th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>

                    <?php $no=1; foreach($m_kontak as $m){ ?>
                    <tr>
						<td><?php echo $no; ?></td>
						<td><?php echo $m->nama; ?></td>
						<td><?php echo $m->nomor_registrasi; ?></td>
						<td><?php echo $m->tanggal_registrasi; ?></td>
						<td><?php echo $m->jenis_kelamin; ?></td>
						<td><?php echo $m->alamat; ?></td>
						<!-- <td><?php echo $m->kecamatan; ?></td>
						<td><?php echo $m->kelurahan; ?></td> -->
						<td><?php echo $m->kota; ?></td>
						<!-- <td><?php echo $m->provinsi; ?></td> -->
					
						<td><?php echo $m->usia; ?></td>
						<td><?php echo $m->nama_ibu_kandung; ?></td>
						<td><?php echo $m->metode_pembayaran; ?></td>
						<td><?php echo $m->nomor_telepon; ?></td>
						<td><?php echo $m->email; ?></td>

						
						
						<td>
                            <a href="<?php echo site_url('kontak/edit/'.$m->pk); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil" title="Edit"></span></a> 
                            <a href="<?php echo site_url('kontak/remove/'.$m->pk); ?>" class="btn btn-danger btn-xs"><span class="fa fa-trash" title="Delete"></span></a>
                        </td>
                    </tr>
                    <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
