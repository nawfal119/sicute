<?php
include "../database/koneksi.php";
  $nip = $_GET['nip'];
  $nama = $_GET['pegawai'];
  $jabatanpegawai = $_GET['jabatan'];
  $golpegawai = $_GET['golongan'];
  $unit = $_GET['unit'];
  $sisa = $_GET['sisa'];
  $atasan = $_GET['atasan'];
  $query = "UPDATE pegawai SET nama_pegawai='$nama', id_jab='$jabatanpegawai', id_gol='$golpegawai', unit_kerja='$unit', sisa_cuti='$sisa', atasan='$atasan' WHERE nip='$nip'";
 // $query = "UPDATE pegawai SET nama_pegawai='$nama', id_jab='$jabatanpegawai', id_gol='$golpegawai' WHERE nip='$nip'";
/*  $nip = $_GET['nip'];
  $nama = $_GET['pegawai'];
  $jabatanpegawai = $_GET['jbtn'];
  $golpegawai = $_GET['gols'];
  $unt = $_GET['unit'];
  $sisa = $_GET['sisa'];
  $atsn = $_GET['atasan'];

  $query = "UPDATE pegawai SET nama_pegawai='$nama', id_jab='$jabatanpegawai', id_gol='$golpegawai', unit_kerja='$unt', sisa_cuti='$sisa', atasan='$atsn' WHERE nip='$nip'";*/
  $hasil = mysqli_query($koneksi, $query);
  if ($hasil) {
    echo "<script>alert('Data Berhasil Diubah'); document.location='index.php?page=data_pegawai';</script>";
  } else {
    echo "<script>alert('Data Gagal Diubah'); document.location='index.php?page=data_pegawai';</script>";
  }

?>
