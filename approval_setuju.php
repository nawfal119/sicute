<?php
include "../database/koneksi.php";
  if (isset($_POST['simpan'])) {
    $id = $_POST['idcuti'];
    $action = $_POST['aksi'];
    $sisa = $_POST['sisa'];
    $ket = $_POST['reject']; 

    if ($action == '197401312007101001') {
      $kepala = '197202161998031004';
      $query = mysqli_query($koneksi, "UPDATE cuti_pegawai SET app_kasubag=1, kepala='$kepala', status_cuti='Diajukan', ket_status_cuti='Menunggu Approval Kepala Kantor' WHERE id_cupeg='$id'");
    } else if ($action == 'kasi') {
      $kasubbag = '197401312007101001';
      $query = mysqli_query($koneksi, "UPDATE cuti_pegawai SET app_kasi = 1, app_kasubag = 0, kasubag='$kasubbag', status_cuti='Diajukan', ket_status_cuti='Menunggu Approval Kepala Sub Bagian TU' WHERE id_cupeg='$id'");
    } else if ($action == 'kepala') {
      $query = mysqli_query($koneksi, "UPDATE cuti_pegawai, pegawai SET cuti_pegawai.app_kepala=1 , cuti_pegawai.status_cuti='Disetujui' , cuti_pegawai.ket_status_cuti='Pengajuan Cuti Diterima' pegawai.sisa_cuti='$sisa'-1 WHERE cuti_pegawai.id_pegawai=pegawai.id_pegawai AND cuti_pegawai.id_cupeg='$id'");              
    } else if ($action == 'Perubahan') {
      $query = mysqli_query($koneksi, "UPDATE cuti_pegawai SET  status_cuti='Perubahan', ket_status_cuti='$ket' WHERE id_cupeg='$id'");
    } else if ($action == 'Ditangguhkan') {
      $query = mysqli_query($koneksi, "UPDATE cuti_pegawai SET  status_cuti='Ditangguhkan', ket_status_cuti='$ket' WHERE id_cupeg='$id'");
    } else if ($action == 'Tidak Disetujui') {
      $query = mysqli_query($koneksi, "UPDATE cuti_pegawai SET  status_cuti='Tidak Disetujui', ket_status_cuti='$ket' WHERE id_cupeg='$id'");
    } 

    if ($query) {
      echo "<script>alert('Sukses'); document.location='index.php?page=approve_cuti';</script>";
    } else {
      //echo "<script>alert('Gagal'); document.location='index.php?page=approve_cuti';</script>";
    }
  }
 ?>
