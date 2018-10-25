<?php 

header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=$title.xls");
?>
<table border="1" width="100%">

<thead>

<tr>
	<th>No</th>
	<th>Kode Proposal</th>
	<th>Nama kontak</th>
	<th>Nama Lembaga</th>
	<th>Alamat Lembaga</th>
	<th>Kecamatan</th>
	<th>Kota / Kab</th>
	<th>Wilayah</th>
	<th>No. Telepon</th>
	<th>Tanggal Masuk</th>
	<th>Bulan Masuk</th>
	<th>Kode Program</th>
	<th>Nama Program</th>
	<th>Kode Bidang</th>
	<th>Nama Bidang</th>
	<th>Kode Kategori</th>
	<th>Nama Kategori</th>
	<th>Jumlah Pengajuan</th>
	<th>Bentuk Pengajuan</th>
	<th>Tanggal Survey</th>
	<th>Rekomendasi</th>
</tr>
</thead>
<tbody>

 <?php
        $no=1;
          if(isset($proposal)){
          foreach($proposal as $pro){ 
      ?>

<tr>
	<td><?php echo $no++ ?></td>
    <td><?php echo $pro->id_proposal ?></td>
    <td><?php echo $pro->nama_kontak ?></td>
    <td><?php echo $pro->nama_lembaga ?></td>
    <td><?php echo $pro->alamat_lembaga ?></td>
    <td><?php echo $pro->kecamatan ?></td>
    <td><?php echo $pro->kota_kab ?></td>
    <td><?php echo $pro->wil_malang ?></td>
    <td><?php echo $pro->telepon ?></td>
    <td><?php echo $pro->tgl_masuk ?></td>
    <td><?php echo $pro->bulan_masuk ?></td>
    <td><?php echo $pro->id_program ?></td>
    <td><?php echo $pro->nama_program ?></td>
    <td><?php echo $pro->id_bidang ?></td>
    <td><?php echo $pro->nama_bidang ?></td>
    <td><?php echo $pro->id_kategori ?></td>
    <td><?php echo $pro->nama_kategori ?></td>
    <td><?php echo $pro->jml_pengajuan ?></td>
    <td><?php echo $pro->bentuk_pengajuan ?></td>
    <td><?php echo $pro->tgl_survei ?></td>
    <td><?php echo $pro->rekomendasi ?></td>

 </tr>

 <?php }} ?>

</tbody>

</table>