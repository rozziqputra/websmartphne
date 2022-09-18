  </main>
		
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; PP.Al-Ishlahuddiny <?= date('Y')?></span>
					</div>
				</div>
			</footer>

		</div>

	</div>

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top">
		<i class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tab index="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="<?=base_url('auth/logout')?>">Logout</a>
				</div>
			</div>
		</div>
	</div>


  <script src="<?= base_url('assets/');?>vendor/jquery/jquery.min.js"></script>
  <script src="<?= base_url('assets/');?>js/jquery.js"></script>
  <script src="<?= base_url('assets/');?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="<?= base_url('assets/');?>vendor/jquery-easing/jquery.easing.min.js"></script>
  <!-- Custom scripts for all pages-->
  <script src="<?= base_url('assets/');?>js/sb-admin-2.min.js"></script>
  <script src="<?= base_url('assets/');?>js/script.js"></script>
  <script src="<?= base_url('assets/');?>vendor/datatables/jquery.dataTables.min.js"></script>
	<script src="<?= base_url('assets/');?>vendor/datatables/dataTables.bootstrap4.js"></script>

	<script src="<?= base_url('assets/');?>js/demo/datatables-demo.js"></script>
  <!-- Page level plugins -->
  <!-- <script src="<?= base_url('assets/');?>vendor/chart/Chart.min.js"></script>
  <script src="<?= base_url('assets/');?>vendor/chart/chart.js"></script> -->
  <!-- Page level custom scripts -->
  <!-- <script src="<?= base_url('assets/');?>js/demo/chart-area-demo.js"></script>
  <script src="<?= base_url('assets/');?>js/demo/chart-pie-demo.js"></script> -->
  <!-- <script src="<?= base_url('assets/');?>smart/script.js"></script> -->
		
		<script>
		// SCRIP HAK AKSES MENU
					// j queri carikan element yang namanya form-chect-input
					//pada saat di clik jalankan fungsi berikut ini

		$('.form-check-input').on('click', function () {
			const menuId = $(this).data('menu');
			const aksesId = $(this).data('akses');
			// jalankan jquery
			$.ajax({
				url: "<?= base_url('admin/change_akses/');?>",
				type: 'post',
				data: {
					menuId: menuId,
					aksesId: aksesId
				},
				success: function () {
					document.location.href = "<?=site_url('admin/hak_akses/')?>" + aksesId;
				}
			});
		});

		// SCRIPT CONTROLER UBAH MENU ------
    $(function(){
        $('.tblTambah').on('click',function () {
          $('#exampleModalLabel').html('Tambah Menu');
          $('.save').html('Tambah');
          $('#menu').val('');
          $('#icon').val('');
          $('#id').val('');

			});
        $('.tampilmodalubah').on('click',function () {
          $('#exampleModalLabel').html('Ubah Menu');
          $('.save').html('Ubah');

          $('.modal-body form').attr('action','<?=site_url('menu/ubah_menu')?>');
          const id = $(this).data('id');
          
            $.ajax({
                url:'<?=site_url('menu/getubah_menu')?>',
                data: {id : id},
                method: 'post',
                dataType:'json',
                success: function(data){
                  console.log(data);
                  $('#menu').val(data.menu);
                  $('#icon').val(data.icon);
                  $('#id').val(data.id);
                  // selanjutnya insert ke data base
                  
                }
            }); 
          });
    });

  // SCRIP UBAH SUB MENU
    $(function(){
        $('.tblSubmenu').on('click',function () {
          $('#newsubmenuLabel').html('Tambah Sub Menu');
          $('.save').html('Tambah');
        
          $('#id_menu').val('');
          $('#sub_menu').val('');
          $('#url').val('');
          $('#icon').val('');

			});
        $('.ubahSubmenu').on('click',function () {
          $('#newsubmenuLabel').html('Ubah Sub Menu');
          $('.save').html('Ubah');
          $('#id_menu').val('');
          $('#sub_menu').val('');
          $('#url').val('');
          $('#icon').val('');
          $('#aktif').val('');
        
          $('.modal-body form').attr('action','<?=site_url('menu/ubah_sub_menu')?>');
          
          const id = $(this).data('id');
                
            $.ajax({
                url:'<?=site_url('menu/getubah_sub_menu')?>',
                data: {id : id},
                method: 'post',
                dataType:'json',
                success: function(data){
                  console.log(data);
                  $('#id').val(data.id);
                  $('#id_menu').val(data.id_menu);
                  $('#sub_menu').val(data.sub_menu);
                  $('#url').val(data.url);
                  $('#icon').val(data.icon);
                  $('#aktif').val(data.aktif);
                  // selanjutnya insert ke data base
                  
                }
            }); 
          });
    });
// transaks
		</script>
    <script type="text/javascript">
		$(document).ready(function(){
			$('#id_barang').on('input',function(){
                
        var id_barang=$(this).val();
        $.ajax({
            type : "POST",
            url  : "<?=site_url('konten/get_barang')?>",
            dataType : "JSON",
            data : {id_barang: id_barang},
            cache:false,
            success: function(data){
                $.each(data,function(id_barang, nama_barang, harga){
                  $('[name="nama_barang"]').val(data.nama_barang);
                  $('[name="harga"]').val(data.harga);                  
                });
                
            }
        });
        return false;
      });

    });
    
    $(document).ready(function(){
      $('.tambah_cart').click(function(){
          var data = $('.form-user').serialize();
        $.ajax({
          url :"<?=site_url('konten/add_to_cart')?>",
          method : "POST",
          data : data,
          success: function (data){
            $('#detail_barang').html(data);
                              console.log(data);
          }
        });
      });

      $('#detail_barang').load("<?=site_url('konten/load_cart')?>");
        $(document).on('click','.hapus_cart',function(){
          var row_id=$(this).attr("id"); //mengambil row_id dari artibut id
          $.ajax({
            url : "<?php echo base_url();?>konten/hapus_cart",
            method : "POST",
            data : {row_id : row_id},
            success :function(data){
              $('#detail_barang').html(data);
				}
			});
		});
  });

var bayar =document.getElementById('bayar');
bayar.addEventListener('keyup', function(b){
  bayar.value = formatRupiah(this.value, 'Rp. ');

});

function formatRupiah(angka, prefix){
			var number_string = angka.replace(/[^,\d]/g, '').toString(),
			split   		= number_string.split(','),
			sisa     		= split[0].length % 3,
			rupiah     	= split[0].substr(0, sisa),
			ribuan     	= split[0].substr(sisa).match(/\d{3}/gi);

			// tambahkan titik jika yang di input sudah menjadi angka ribuan
			if(ribuan){
				separator = sisa ? '.' : '';
				rupiah += separator + ribuan.join('.');
			}

			rupiah = split[1] != undefined ? rupiah + ',' + split[1] : rupiah;
			return prefix == undefined ? rupiah : (rupiah ? 'Rp. ' + rupiah : '');
		}


    
	</script>
</body>
</html>