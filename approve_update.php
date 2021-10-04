<?php
  include("../database/koneksi.php");
  include("../build/config/library.php");
  $nippegawai = $_GET['nip'];
  $id = $_GET['id'];
  $now = date('Y-m-d');
  $sql = "SELECT * FROM cuti_pegawai ct, pegawai pg, jabatan jb, golongan gl WHERE ct.id_pegawai=pg.id_pegawai AND pg.id_jab=jb.id_jab AND pg.id_gol=gl.id_gol AND pg.nip='$nippegawai' and ct.id_cupeg='$id'";
  $query = mysqli_query($koneksi, $sql);
  $data = mysqli_fetch_array($query);
?>



<div class="page-title">
  <div class="title_left">
    <h3>Approve Cuti Pegawai</h3>
  </div>

  <div class="title_right">
    <div class="col-md-3 col-sm-3 col-xs-12 pull-right">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item"><a href="#">Approve Cuti</a></li>
        </ol>
    </div>
  </div>
</div>

<div class="clearfix"></div>

<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_content">
        <form class="form-horizontal" name="cuti" action="approval_setuju.php" method="POST">
          <div class="panel panel-default">
            <div class="panel-heading"><h3>Review Pengajuan Cuti</h3></div>
            <div class="panel-body">
              <div class="form-group">
                <label class="control-label col-sm-3">Nama Pegawai</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" value="<?php echo $data['nama_pegawai'];?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">NIP Pegawai</label>
                <div class="col-sm-4">
                  <input type="text"  class="form-control" value="<?php echo $data['nip'];?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Jabatan Pegawai</label>
                <div class="col-sm-4">
                  <input type="text"  class="form-control" value="<?php echo $data['nama_jab'];?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Golongan</label>
                <div class="col-sm-4">
                  <input type="text"  class="form-control" value="<?php echo $data['nama_gol'];?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Jenis Cuti</label>
                <div class="col-sm-4">
                  <input type="text"  class="form-control" value="<?php echo $data['jenis_cuti'];?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Alasan Cuti</label>
                <div class="col-sm-4">
                  <input type="text"  class="form-control" value="<?php echo $data['alasan_cuti'];?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Durasi</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" value="<?php echo $data['lama_cuti']?> <?php echo $data['ket_lama_cuti']; ?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Tanggal Mulai Cuti</label>
                <div class="col-sm-4">
                  <input type="text"  class="form-control" value="<?php echo IndonesiaTgl($data['tgl_mulai']);?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Tanggal Akhir Cuti</label>
                <div class="col-sm-4">
                  <input type="text" class="form-control" value="<?php echo IndonesiaTgl($data['tgl_selesai']);?> " readonly>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Status Pengajuan</label>
                <div class="col-sm-4">
                  <input type="hidden" name="idcuti" value="<?php echo $data['id_cupeg']; ?>">
                  <input type="hidden" name="sisa" value="<?php echo$data['sisa_cuti'] ?>">
                  <input type="text" class="form-control" value="<?php echo $data['status_cuti'];?> <?php echo $data['ket_status_cuti']; ?> " readonly>
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-sm-3">Aksi</label>
                <div class="col-sm-4">
                  <select name="aksi" id="aksi" class="form-control" required>
                    <option>---- Pilih Aksi ----</option>
                    <?php
                    
                    // Query untuk mengambil data jika butuh aprroval kepala
                    $qrykepala = mysqli_query($koneksi, "SELECT * FROM cuti_pegawai ct, pegawai pg WHERE ct.id_pegawai=pg.id_pegawai and pg.nip='$nippegawai' and app_kasi=1 and app_kasubag=1 and app_kepala=0 and kepala='$nip'");
                    $hasilkepala = mysqli_fetch_array($qrykepala);

                    // Query untuk mengambil data jika butuh aprroval kasubbag
                     $qrykasubag = mysqli_query($koneksi, "SELECT * FROM cuti_pegawai ct, pegawai pg, jabatan jb WHERE pg.id_jab = jb.id_jab and ct.id_pegawai=pg.id_pegawai and pg.nip='$nippegawai' and app_kasi=1 and app_kasubag=0 and app_kepala=0 and kasubag='$nip'");
                    $hasilkasubag = mysqli_fetch_array($qrykasubag);
                    $cekkasubag = $hasilkasubag['nama_jab'];

                    // Query untuk mengambil data jika butuh aprroval kasi
                     $qrykasi = mysqli_query($koneksi, "SELECT * FROM cuti_pegawai ct, pegawai pg, jabatan jb WHERE pg.id_jab = jb.id_jab and ct.id_pegawai=pg.id_pegawai and pg.nip='$nippegawai' and app_kasi=0 and app_kasubag=0 and app_kepala=0 and kasi='$nip'");
                    $hasilkasi = mysqli_fetch_array($qrykasi);
                    $cekkasi = $hasilkasi['atasan'];

                    // Approval Kepala
                    if (!empty($hasilkepala['nama_pegawai'])) {            

                        ?>                        
                        <option value="kepala">Disetujui</option>
                        <option value="Perubahan">Perubahan</option>
                        <option value="Ditangguhkan">Ditangguhkan</option>
                        <option value="Tidak Disetujui">Tidak Disetujui</option>
                        <?php
                      
                    }
                     
                    // Approval kasubag
                    if ($cekkasubag == 'ANALIS KEPEGAWAIAN' || $cekkasubag == 'PERENCANA' || $cekkasubag == 'PENYUSUN BERITA DAN PENDAPAT UMUM' || $cekkasubag == 'ANALIS PENGELOLAAN KEUANGAN APBN' || $cekkasubag == 'PENGELOLA BARANG MILIK NEGARA' || $cekkasubag == 'ARSIPARIS' || $cekkasubag == 'VERIFIKATOR KEUANGAN' || $cekkasubag == 'PENGADMINISTRASI PERSURATAN' || $cekkasubag == 'PRANATA KEUANGAN APBN' || $cekkasubag == 'PRANATA HUMAS' || $cekkasubag == 'PRANATA KOMPUTER' || $cekkasubag == 'PENGADMINISTRASI KEPEGAWAIAN' || $cekkasubag == 'PENGADMINISTRASI UMUM' || $cekkasubag == 'ANALIS KELEMBAGAAN PEMBINAAN PENDIDIKAN' || $cekkasubag == 'ANALIS INFORMASI PENGEMBANGAN PENDIDIK/ TENAGA KEPENDIDIKAN' || $cekkasubag == 'ANALIS DATA DAN INFORMASI PENDIDIK DAN TENAGA KEPENDIDIKAN' || $cekkasubag == 'ANALIS KAPASITAS PENDIDIK DAN/ ATAU SANTRI' || $cekkasubag == 'PENGEMBANG POTENSI SISWA/ SANTRI/ MAHASISWA' || $cekkasubag == 'PENGADMINISTRASI KEUANGAN' || $cekkasubag == 'PENYUSUN BAHAN PENDAFTARAN ATAU PEMBATALAN HAJI' || $cekkasubag == 'PENYUSUN LAPORAN PENGENDALIAN BANK PENERIMA SETORAN BIAYA PENYELENGGARA IBADAH HAJI' || $cekkasubag == 'PENYUSUN BAHAN PEMBINAAN SDM KEPENGHULUAN' || $cekkasubag == 'PENYUSUN BAHAN PEMBINAAN MASJID') {

                        ?>
                        <option value="197401312007101001">Disetujui</option>
                        <option value="Perubahan">Perubahan</option>
                        <option value="Ditangguhkan">Ditangguhkan</option>
                        <option value="Tidak Disetujui">Tidak Disetujui</option>
                        <?php
                      
                      }
                    
                    // Approval kasi
                    if ($cekkasi == 'KEPALA SEKSI PENDIS' || $cekkasi == 'KEPALA SEKSI BIMAS' || $cekkasi == 'KEPALA SEKSI PHU') {

                        ?>
                        <option value="kasi">Disetujui</option>
                        <option value="Perubahan">Perubahan</option>
                        <option value="Ditangguhkan">Ditangguhkan</option>
                        <option value="Tidak Disetujui">Tidak Disetujui</option>
                        <?php
                      
                      }

                    ?>

                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-sm-3">Keterangan</label>
                <div class="col-sm-4">
                  <textarea name="reject" id="reject" class="form-control" placeholder="Masukkan Keterangan" rows="3"> </textarea>
                </div>
              </div>
            </div>
            <div class="panel-footer">
              <button type="submit" name="simpan" class="btn btn-success">Simpan</button>
            </div>
          </div><!-- /.panel -->
        </form>
      </div>
    </div>
  </div>
</div>
