<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Jadwal Praktek</h3>
            	<!-- <div class="box-tools">
                    <a href="<?php echo site_url('jadwal_praktek/add'); ?>" class="btn btn-success btn-sm"><span class="fa fa-plus" title="Tambah"></span> Tambah </a> 
                </div> -->
            </div>

            

            <div class="box-body">
                 <table id="example1" class="table table-bordered table-hover">
                 <thead>
                    <tr>
						<th>No</th>
						<th>Pelayanan</th>
						<th>Dokter</th>
						<th>Session Jadwal</th>
						<th>Tanggal Praktek</th>
						<th>Jam Praktek</th>
						<th>Total Pasien</th>
						<th>Status</th>
                        <th>Perawat</th>
                        
					
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

                        if ($m['perawat_fk'] == null || $m['perawat_fk'] =='' || $m['perawat_fk'] == $this->session->userdata('id')) {
                            
                            $onclick ="window.location.href='".site_url('jadwal_praktek_antrian/index/'.$m['id'])."'";

                        } else {

                             $onclick = "alert('Jadwal Praktek ini Sudah Ditangani Oleh Perawat Yang Lain')";

                        }
                    ?>
                    <tr onclick="<?=$onclick?>">
						<td><?php echo $no; ?></td>
						<td><?php echo $m['nama_pelayanan']; ?></td>
                        <td><?php echo $m['dokter']; ?></td>
						<td><?php echo $m['id_session_jadwal']; ?></td>
						<td><?php echo $m['tanggal_praktek']; ?></td>
						<td><?php echo $m['jam_praktek']; ?></td>
                        <td><?php echo $m['total_pasien']; ?></td>
						<td>
                            <a href="#" class="btn btn-<?php echo $style;?> btn-xs"><?php echo $m['status_terlaksana']; ?></a>
                        </td>
                        <td><?php echo $m['perawat']; ?></td>
                        <!-- <td> 
                            <?php if ( $m['status_terlaksana'] == "Belum Terlaksana") { ?>
                            <a href="<?php echo site_url('jadwal_praktek/start/'.$m['id']); ?>" class="btn btn-success btn-xs">Mulai</a> 
                            <?php } elseif ($m['status_terlaksana'] == "Sedang Terlaksana") { ?>
                            <a href="<?php echo site_url('jadwal_praktek/done/'.$m['id']); ?>" class="btn btn-danger btn-xs">Selesai</a> 
                            <?php } ?>
                        </td> -->
						
                    </tr>
                    <?php $no++;} ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
