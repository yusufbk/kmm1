<link rel="stylesheet" type="text/css" href="<?php echo site_url('resources/datetimepicker/jquery.datetimepicker.css');?>"/>

        <style type="text/css">

        .custom-date-style {
          background-color: red !important;
        }

        .input{ 
        }
        .input-wide{
          width: 500px;
        }

        </style>
<div class="row">
    <div class="col-md-12">
      	<div class="box box-info">
            <div class="box-header with-border">
              	<h3 class="box-title">Jadwal Praktek Antrian Tambah</h3>
            </div>
            <?php echo form_open('jadwal_praktek_antrian/add'); ?>
          	<div class="box-body">
          		
            	<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="jadwal_praktek_fk" class="control-label">Jadwal Praktek</label>
						<div class="form-group">
							<select name="jadwal_praktek_fk" class="form-control" required>
								<option value="">Pilih Id Jadwal Praktek</option>
								<?php 
								foreach($all_m_jadwal_praktek as $m_jadwal_praktek)
								{
									$selected = ($m_jadwal_praktek['id'] == $this->input->post('jadwal_praktek_fk')) ? ' selected="selected"' : "";

									echo '<option value="'.$m_jadwal_praktek['id'].'" '.$selected.'>'.$m_jadwal_praktek['id_session_jadwal'].'</option>';
								} 
								?>
							</select>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!--<label for="pasien_fk" class="control-label">Pasien</label>
						<div class="form-group">
							<select name="pasien_fk" class="form-control" required>
								<option value="">Pilih Pasien</option>
								<?php 
								/*foreach($all_m_pasien as $m_kontak)
								{
									$selected = ($m_kontak->pk == $this->input->post('pasien_fk')) ? ' selected="selected"' : "";

									echo '<option value="'.$m_kontak->pk.'" '.$selected.'>'.$m_kontak->nama.'</option>';
								} */
								?>
							</select>
						</div>-->
                        <label for="status_antrian" class="control-label">Status Antrian</label>
						  <div class="form-group">
						  <input type="text" name="status_antrian" value="Diantrikan" class="form-control" id="status_antrian" readonly />
						</div>
					</div>

				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="nomor_registrasi_pasien" class="control-label">Nomor Registrasi Pasien</label>
						<div class="form-group">
							<!--<input type="text" name="nomor_registrasi_pasien" value="<?php //echo $this->input->post('nomor_registrasi_pasien'); ?>" class="form-control" id="nomor_registrasi_pasien" required/>-->
							<select name="nomor_registrasi_pasien" class="form-control" required>
                                <option value="">Pilih ID Pasien</option>	
                                <?php 
								    foreach($all_m_pasien as $m_kontak)
								    {
									   $selected = ($m_kontak->pk == $this->input->post('nomor_registrasi_pasien')) ? ' selected="selected"' : "";

									   echo '<option value="'.$m_kontak->pk.'" '.$selected.'>'.$m_kontak->nomor_registrasi.'</option>';
								    } 
								?> 
                                </select>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="jadwal_kunjung" class="control-label">Jadwal Kunjung</label>
						<div class="form-group">
							<input type="text" name="jadwal_kunjung" value="<?php echo $this->input->post('jadwal_kunjung'); ?>" class="form-control" id="jadwal_kunjung" required/>
						</div>
					</div>
				</div>
				<div class="row clearfix">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<label for="metode_pembayaran_fk" class="control-label">Metode Pembayaran</label>
						<div class="form-group">
							<select name="metode_pembayaran_fk" class="form-control" required>
								<option value="">Pilih Metode Pembayaran</option>
								<?php 
								foreach($all_m_metode_pembayaran as $m_metode_pembayaran)
								{
									$selected = ($m_metode_pembayaran['pk'] == $this->input->post('metode_pembayaran_fk')) ? ' selected="selected"' : "";

									echo '<option value="'.$m_metode_pembayaran['pk'].'" '.$selected.'>'.$m_metode_pembayaran['metode_bayar'].'</option>';
								} 
								?>
							</select>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<!--<label for="status_antrian" class="control-label">Status Antrian</label>
						  <div class="form-group">
						  <input type="text" name="status_antrian" value="Diantrikan" class="form-control" id="status_antrian" readonly />
						</div>
-->
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
<script src="<?php echo site_url('resources/datetimepicker/jquery.js');?>"></script>
<script src="<?php echo site_url('resources/datetimepicker/build/jquery.datetimepicker.full.js');?>"></script>

<script type="text/javascript">
$(function () {
	   $("#jam_praktek").timepicker({
              showInputs: false,
              autoclose: true, 
        });
	});
</script>

<script>/*
      window.onerror = function(errorMsg) {
        $('#console').html($('#console').html()+'<br>'+errorMsg)
      }*/

      $.datetimepicker.setLocale('en');

      $('#datetimepicker_format').datetimepicker({value:'2015/04/15 05:03', format: $("#datetimepicker_format_value").val()});
      console.log($('#datetimepicker_format').datetimepicker('getValue'));

      $("#datetimepicker_format_change").on("click", function(e){
        $("#datetimepicker_format").data('xdsoft_datetimepicker').setOptions({format: $("#datetimepicker_format_value").val()});
      });
      $("#datetimepicker_format_locale").on("change", function(e){
        $.datetimepicker.setLocale($(e.currentTarget).val());
      });

      $('#datetimepicker').datetimepicker({
      dayOfWeekStart : 1,
      lang:'en',
      disabledDates:['1986/01/08','1986/01/09','1986/01/10'],
      startDate:  '1986/01/05'
      });
      $('#datetimepicker').datetimepicker({value:'2015/04/15 05:03',step:10});

      $('.some_class').datetimepicker();

      $('#realisasi_kunjung').datetimepicker({
        formatTime:'H:i',
        formatDate:'yyyy-mm-dd',
        //defaultDate:'8.12.1986', // it's my birthday
        timepickerScrollbar:false
      });

       $('#jadwal_kunjung').datetimepicker({
        formatTime:'H:i',
        formatDate:'yyyy-mm-dd',
        //defaultDate:'8.12.1986', // it's my birthday
        timepickerScrollbar:false
      });

      $('#datetimepicker10').datetimepicker({
        step:5,
        inline:true
      });
      $('#datetimepicker_mask').datetimepicker({
        mask:'9999/19/39 29:59'
      });

      $('#datetimepicker1').datetimepicker({
        datepicker:false,
        format:'H:i',
        step:5
      });
      $('#datetimepicker2').datetimepicker({
        yearOffset:222,
        lang:'ch',
        timepicker:false,
        format:'d/m/Y',
        formatDate:'Y/m/d',
        minDate:'-1970/01/02', // yesterday is minimum date
        maxDate:'+1970/01/02' // and tommorow is maximum date calendar
      });
      $('#datetimepicker3').datetimepicker({
        inline:true
      });
      $('#datetimepicker4').datetimepicker();
      $('#open').click(function(){
        $('#datetimepicker4').datetimepicker('show');
      });
      $('#close').click(function(){
        $('#datetimepicker4').datetimepicker('hide');
      });
      $('#reset').click(function(){
        $('#datetimepicker4').datetimepicker('reset');
      });
      $('#datetimepicker5').datetimepicker({
        datepicker:false,
        allowTimes:['12:00','13:00','15:00','17:00','17:05','17:20','19:00','20:00'],
        step:5
      });
      $('#datetimepicker6').datetimepicker();
      $('#destroy').click(function(){
        if( $('#datetimepicker6').data('xdsoft_datetimepicker') ){
          $('#datetimepicker6').datetimepicker('destroy');
          this.value = 'create';
        }else{
          $('#datetimepicker6').datetimepicker();
          this.value = 'destroy';
        }
      });
      var logic = function( currentDateTime ){
        if (currentDateTime && currentDateTime.getDay() == 6){
          this.setOptions({
            minTime:'11:00'
          });
        }else
          this.setOptions({
            minTime:'8:00'
          });
      };
      $('#datetimepicker7').datetimepicker({
        onChangeDateTime:logic,
        onShow:logic
      });
      $('#datetimepicker8').datetimepicker({
        onGenerate:function( ct ){
          $(this).find('.xdsoft_date')
            .toggleClass('xdsoft_disabled');
        },
        minDate:'-1970/01/2',
        maxDate:'+1970/01/2',
        timepicker:false
      });
      $('#datetimepicker9').datetimepicker({
        onGenerate:function( ct ){
          $(this).find('.xdsoft_date.xdsoft_weekend')
            .addClass('xdsoft_disabled');
        },
        weekends:['01.01.2014','02.01.2014','03.01.2014','04.01.2014','05.01.2014','06.01.2014'],
        timepicker:false
      });
      var dateToDisable = new Date();
        dateToDisable.setDate(dateToDisable.getDate() + 2);
      $('#datetimepicker11').datetimepicker({
        beforeShowDay: function(date) {
          if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
            return [false, ""]
          }

          return [true, ""];
        }
      });
      $('#datetimepicker12').datetimepicker({
        beforeShowDay: function(date) {
          if (date.getMonth() == dateToDisable.getMonth() && date.getDate() == dateToDisable.getDate()) {
            return [true, "custom-date-style"];
          }

          return [true, ""];
        }
      });
      $('#datetimepicker_dark').datetimepicker({theme:'dark'})


      </script>

