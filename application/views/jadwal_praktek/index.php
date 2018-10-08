<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Jadwal Praktek</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('jadwal_praktek/add'); ?>" class="btn btn-success btn-sm"><span class="fa fa-plus" title="Tambah"></span> Tambah </a> 
                </div>
            </div>

            <div class="box-body table-responsive">
                 <table id="example1" class="table no-margin table-bordered table-hover">
                 <thead>
                    <tr>
						<th>No</th>
						<th>Pembuat</th>
						<th>Dokter</th>
						<th>Pelayanan</th>
						<th>Session Jadwal</th>
						<th>Tanggal Praktek</th>
						<th>Jam Praktek</th>
						<th>Total Pasien</th>
						<th>Batasan Pasien</th>
                        <th>Rentang Waktu</th>
						<th>Status</th>
						<th>Informasi</th>
                        <th>Start</th>
						<th>Actions</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $no=1;foreach($m_jadwal_praktek as $m){ 

                        if ($m['status_terlaksana']=='Belum Terlaksana') {
                            $style = 'warning';
                        } elseif ($m['status_terlaksana']=='Sedang Terlaksana') {
                            $style = 'primary';
                        } else {
                            $style = 'success';     
                        }
                    ?>
                    <tr>
						<td><?php echo $no; ?></td>
						<td><?php echo $m['pembuat']; ?></td>
						<td><?php echo $m['dokter']; ?></td>
						<td><?php echo $m['nama_pelayanan']; ?></td>
						<td><?php echo $m['id_session_jadwal']; ?></td>
						<td><?php echo $m['tanggal_praktek']; ?></td>
						<td><?php echo $m['jam_praktek']; ?></td>
						<td><?php echo $m['total_pasien']; ?></td>
						<td><?php echo $m['batasan_pasien']; ?></td>
                        <td><?php echo $m['rentang_waktu']; ?></td>
						<td>
                            <a href="#" class="btn btn-<?php echo $style;?> btn-xs"><?php echo $m['status_terlaksana']; ?></a>
                        </td>
						<td><?php echo $m['informasi_tambahan']; ?></td>
                        <td> 
                            <?php $disabled = ''; if ( $m['status_terlaksana'] == "Belum Terlaksana") { ?>
                            <a href="<?php echo site_url('jadwal_praktek/start/'.$m['id']); ?>" class="btn btn-success btn-xs">Mulai</a> 
                            <?php } elseif ($m['status_terlaksana'] == "Sedang Terlaksana") { $disabled = 'disabled';?>
                            <a href="<?php echo site_url('jadwal_praktek/done/'.$m['id']); ?>" class="btn btn-danger btn-xs">Selesai</a> 
                            <?php } else {$disabled = 'disabled';}?>
                        </td>
						<td>
                            <a href="<?php echo site_url('jadwal_praktek/edit/'.$m['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil" title="Edit"></span></a> 
                            <a href="<?php echo site_url('jadwal_praktek/remove/'.$m['id']); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin Menghapus Data ini ?')" <?=$disabled?>><span class="fa fa-trash" title="Delete"></span></a>
                        </td>
                    </tr>
                    <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
