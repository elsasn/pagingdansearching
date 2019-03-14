<?php
include 'koneksi.php'
?>

<h3>FORM PENCARIAN DATA</h3>


<form action="index.php" method="get">
	<label>Cari</label>
	<input type="text" name="cari" />
	<input type="submit" value="Cari" />	
</form> 

<?php 
$cari ="";
if(isset($_GET['cari'])){
$cari = $_GET['cari'];
echo "<b>Hasil Pencarin : ".$cari."</br>";
}
?>

<table border="1">
<tr>
	<th>NIM</th>
	<th>Nama</th>
	<th>Jenis Kelamin</th>
	<th>No Telp</th>
	<th>Alaamt</th>
</tr>

<?php 
		$halaman = 5;
		$page = isset($_GET['halaman']) ? (int)$_GET['halaman'] : 1;
		$mulai = ($page>1) ? ($page * $halaman) - $halaman :0;
		$hasil = mysqli_query($koneksi, 'select * from mahasiswa');
		$total = mysqli_num_rows($hasil);
		$pages = ceil($total/$halaman);
		//$cek = mysqli_query($koneksi, "select * from mahasiswa LIMIT $mulai,$halaman");
		$no = $mulai+1;

		$data ="select * from mahasiswa where nama like '%".$cari."%' LIMIT $mulai,$halaman";
		$query = mysqli_query($koneksi, $data);

		while($d = mysqli_fetch_assoc($query)){

?>

<tr>
<td> <?php echo $d['nim']; ?> </td>
<td> <?php echo $d['nama']; ?> </td>
<td> <?php echo $d['jenis_kelamin']; ?> </td>
<td> <?php echo $d['no_telp']; ?> </td>
<td> <?php echo $d['alamat']; ?> </td>

</tr>
<?php } ?>
</table>
<?php 
	for ($i=1; $i<=$pages; $i++) { ?>
	<a href="?halaman=<?php echo $i; ?>"><?php echo $i; ?></a>
<?php } ?>