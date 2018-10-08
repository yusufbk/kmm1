<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Jadwal Praktek</h3>
            </div>

                <div class="box-body">
                <?php echo validation_errors(); ?>          
                <div class="row clearfix">
                    
                    <div class="col-xs-2">
                        <label for="dokter_fk" class="control-label">Dokter</label>
                        <div class="form-group">
                            <select name="dokter_fk" class="form-control" disabled="">
                                <option value="0">Pilih Dokter</option>
                                <?php 
                                foreach($all_m_dokter as $m_kontak)
                                {
                                    $selected = ($m_kontak->pk == $m_jadwal_praktek['dokter_fk']) ? ' selected="selected"' : "";

                                    echo '<option value="'.$m_kontak->pk.'" '.$selected.'>'.$m_kontak->nama.'</option>';
                                } 
                                ?>
                            </select>
                        </div>
                    </div>

                    <div class="col-xs-2">
                        <label for="pelayanan_fk" class="control-label">Pelayanan</label>
                        <div class="form-group">
                            <select name="pelayanan_fk" class="form-control" disabled>
                                <option value="">Pilih Layanan </option>
                                <?php 
                                foreach($all_m_pelayanan as $m_pelayanan)
                                {
                                    $selected = ($m_pelayanan['id'] == $m_jadwal_praktek['pelayanan_fk']) ? ' selected="selected"' : "";

                                    echo '<option value="'.$m_pelayanan['id'].'" '.$selected.'>'.$m_pelayanan['nama_pelayanan'].'</option>';
                                } 
                                ?>
                            </select>
                        </div>
                    </div>
                
                    
                    <div class="col-xs-2">
                        <label for="id_session_jadwal" class="control-label">Id Session Jadwal</label>
                        <div class="form-group">
                            <input type="text" name="id_session_jadwal" value="<?php echo ($this->input->post('id_session_jadwal') ? $this->input->post('id_session_jadwal') : $m_jadwal_praktek['id_session_jadwal']); ?>" class="form-control" id="id_session_jadwal" disabled/>
                        </div>
                    </div>

                    <div class="col-xs-2">
                        <label for="tanggal_praktek" class="control-label">Tanggal Praktek</label>
                        <div class="form-group">
                            <input type="date" name="tanggal_praktek" value="<?php echo ($this->input->post('tanggal_praktek') ? $this->input->post('tanggal_praktek') : $m_jadwal_praktek['tanggal_praktek']); ?>" class="form-control" id="tanggal_praktek" disabled />
                        </div>

                    </div>

                    <div class="col-xs-2">
                        <label for="jam_praktek" class="control-label">Jam Praktek</label>
                        <div class="form-group">
                            <input type="time" name="jam_praktek" value="<?php echo ($this->input->post('jam_praktek') ? $this->input->post('jam_praktek') : $m_jadwal_praktek['jam_praktek']); ?>" class="form-control" id="jam_praktek" disabled/>
                        </div>
                    </div>

                    <div class="col-xs-2">
                        <label for="total_pasien" class="control-label">Total Pasien</label>
                        <div class="form-group">
                            <input type="text" name="total_pasien" value="<?php echo ($this->input->post('total_pasien') ? $this->input->post('total_pasien') : $m_jadwal_praktek['total_pasien']); ?>" class="form-control" id="total_pasien" disabled />
                        </div>
                    </div>
                </div>

            <br>
            <div class="box-header with-border">
                <h3 class="box-title">Jadwal Praktek Antrian</h3>
            </div>
            <div class="box-body">
               <table id="example1" class="table table-bordered table-hover">
               <thead>
                    <tr>
                        <th>No</th>
                        <th>Nomor Urut</th>
                        <th>Nomor Registrasi</th>
						<th>Pasien</th>
                        <th>Jadwal Kunjung</th>
                        <th>Status Antrian</th>
						<th>Realisasi Kunjung</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no=1;foreach($m_jadwal_praktek_antrian as $m){

                        if ($m['status_antrian']=='Diantrikan') {
                            $style = 'info';
                        } elseif ($m['status_antrian']=='Terjadwalkan') {
                            $style = 'warning';
                        } elseif ($m['status_antrian']=='Tindakan') {
                            $style = 'primary';
                        } elseif ($m['status_antrian']=='Selesai') {
                            $style = 'success';
                        }else {
                            $style = 'danger';     
                        }

                    ?>
                    <tr>
                        <td><?php echo $no; ?></td>
                        <td><?php echo $m['nomor_urut']; ?></td>
                        <td><?php echo $m['nomor_registrasi_pasien']; ?></td>
                        <td><?php echo $m['pasien']; ?></td>
                        <td><?php echo $m['jadwal_kunjung']; ?></td>
                        <td>
                        <a href="#" class="btn btn-<?php echo $style;?> btn-xs"><?php echo $m['status_antrian']; ?></a>
                        </td>
						<td><?php echo $m['realisasi_kunjung']; ?></td>
						<td>
                            <?php if($m['status_antrian'] == 'Terjadwalkan') { ?>
                                <a href="<?php echo site_url('jadwal_praktek_antrian/start/'.$m['id'].'/'.$m['jadwal_praktek_fk']); ?>" class="btn btn-success btn-xs">Masuk</a>
                            <?php } ?>
                        </td> 
                    </tr>
                    <?php $no++;} ?>
                </tbody>
                </table>
                
                <?php if ($this->session->userdata('level')=='perawat') { ?>

                <a href="<?php echo site_url('jadwal_praktek/done/'.$jadwal_praktek_fk); ?>" class="btn btn-success btn-sm">Tutup  Session </a> 
                    
                <?php } ?>
               
            </div>
        </div>
    </div>
</div>
