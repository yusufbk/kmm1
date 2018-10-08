<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <h3 class="box-title">Jadwal Praktek Antrian</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('jadwal_praktek_antrian/add'); ?>" class="btn btn-success btn-sm"><span class="fa fa-plus" title="Tambah"></span> Tambah </a>
                </div>
            </div>            
            <div class="box-body">  
               <table id="example1" class="table table-bordered table-hover">   
               <thead>
                    <tr>
						<th>No</th>
						<th>Id Jadwal Praktek</th>
						<th>Pasien</th>
						<th>Nomor Registrasi</th>
                        <th>Nomor Urut</th>
						<th>Jadwal Kunjung</th>
						<th>Realisasi Kunjung</th>
						<th>Metode Pembayaran</th>
						<th>Status Antrian</th>
                        <th>Start</th>
						<th>Actions</th>
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
						<td><?php echo $m['id_session_jadwal']; ?></td>
						<td><?php echo $m['pasien']; ?></td>
						<td><?php echo $m['nomor_registrasi_pasien']; ?></td>
                        <td><?php echo $m['nomor_urut']; ?></td>
						<td><?php echo $m['jadwal_kunjung']; ?></td>
						<td><?php echo $m['realisasi_kunjung']; ?></td>
						<td><?php echo $m['metode_bayar']; ?></td>
						<td>
                        <a href="#"><?php echo $m['status_antrian']; ?></a>
                        </td>
                        <td>
                        <?php $disabled = ''; if($m['status_antrian'] == 'Terjadwalkan') { $disabled = 'disabled';?>
                            <a href="<?php echo site_url('jadwal_praktek_antrian/start/'.$m['id'].'/'.$m['jadwal_praktek_fk']); ?>" class="btn btn-success btn-xs">Masuk</a></td>
                        <?php } elseif($m['status_antrian'] == 'Tindakan') {$disabled = 'disabled';} elseif ($m['status_antrian'] == 'Selesai') {$disabled = 'disabled';}?>
						<td>
                            <a href="<?php echo site_url('jadwal_praktek_antrian/edit/'.$m['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil" title="Edit"></span></a> 
                            <a href="<?php echo site_url('jadwal_praktek_antrian/remove/'.$m['id']); ?>" class="btn btn-danger btn-xs" onclick="return confirm('Apakah Anda Yakin Menghapus Data ini ?')" <?=$disabled?>><span class="fa fa-trash" title="Delete"></span></a>
                        </td>
                    </tr>
                    <?php $no++;} ?>
                </tbody>
                </table>
            </div>
        </div>
        </div>
    </div>

<!--<script src="<?php //echo base_url('resources/js/jquery-2.2.3.min.js')?>"></script>
<script src="<?php //echo base_url('resources/js/jquery.dataTables.min.js')?>"></script>
 
<script type="text/javascript">
 
var table;
 
$(document).ready(function() {
 
    //datatables
    table = $('#example1').DataTable({ 
 
        "processing": true, //Feature control the processing indicator.
        //"serverSide": true, //Feature control DataTables' server-side processing mode.
        "order": [], //Initial no order.
 
        // Load data for the table's content from an Ajax source
        "ajax": {
            "url": "<?php// echo site_url('Jadwal_praktek_antrian/ajax_list')?>",
            "type": "POST"
        },
 
        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering column
            "orderable": false, //set not orderable
            "dataSrc": ""
        },
        ],
 
    });
 
});
</script>-->