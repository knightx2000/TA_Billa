<?php
error_reporting(0);
session_start();
function query($qry) {
	$result = mysql_query($qry) or die("Gagal melakukan query pada :
	 <br>$qry<br><br>Kode Salah : <br>&nbsp;&nbsp;&nbsp;" . mysql_error() . "!");
	return $result;
}
function fetch_row($qry) {
	$tmp = query($qry);
	list($result) = mysql_fetch_row($tmp);
	return $result;
}

function _kd_auto($field,$table,$x) {
$kode_temp = fetch_row("SELECT $field FROM $table where $field LIKE'%".$x."%' ORDER BY $field DESC LIMIT 0,1");
	if ($kode_temp == '')
		$kode = $x."000001";
	else {
		$jum = substr($kode_temp, 1, 7);
		$jum++;
		if ($jum <= 9)
			$kode = $x."00000" . $jum;
		elseif ($jum <= 99)
			$kode = $x."0000" . $jum;
		elseif ($jum <= 999)
			$kode = $x."000" . $jum;
		elseif ($jum <= 9999)
			$kode = $x."00" . $jum;
		elseif ($jum <= 99999)
			$kode = $x."0" . $jum;
		else
			die("ID melebihi batas");
	}
	return $kode;
}

//simpan gejala
function _simpan_gejala($nama_gejala){
	$sql="";
	$balas="1";
	$id_gejala= _kd_auto('id_gejala','tb_gejala','G');
	if(!empty($nama_gejala)){
		$sql="insert into tb_gejala(id_gejala,nama_gejala)values('".$id_gejala."','".$nama_gejala."')";
		$result=mysql_query($sql)or die(mysql_error());
		if($result){
			$balas="0";	
		}else{
			$balas="1";	
		}
	}
	return $balas;
}

function _update_gejala($id_gejala,$nama_gejala){
	$sql="";
	$balas="1";
	if(!empty($id_gejala)){
		$sql="update tb_gejala set nama_gejala='".$nama_gejala."' where id_gejala='".$id_gejala."'";
		$result=mysql_query($sql)or die(mysql_error());
		if($result){
			$balas="0";	
		}else{
			$balas="1";	
		}
	}
}

//penyakit
function _simpan_penyakit($nama_penyakit){
	$sql="";
	$balas="1";
	$id_penyakit= _kd_auto('id_penyakit','tb_penyakit','P');
	if(!empty($nama_penyakit)){
		$sql="insert into tb_penyakit(id_penyakit,nama_penyakit)values('".$id_penyakit."','".$nama_penyakit."')";
		$result=mysql_query($sql)or die(mysql_error());
		if($result){
			$balas="0";	
		}else{
			$balas="1";	
		}
	}
	return $balas;	
}

function _simpan_admin($email,$password,$nama_lengkap){
	$sql="";
	$balas="1";
	$stat_admin="Y";
	$id_admin= _kd_auto('id_user','tb_user','U');
	
	if(!empty($email)){
		$sql="insert into tb_user(id_user,email,password,nama_lengkap,status_admin)value('".$id_admin."','".$email."','".$password."','".$nama_lengkap."','".$stat_admin."')";
		$result=mysql_query($sql)or die (mysql_error());
		if($result){
			$balas=0;	
		}else{
			$balas=1;	
		}
	}
	return $balas;
}

function _update_penyakit($id_penyakit,$nama_penyakit){
	$sql="";
	$balas="1";
	if(!empty($id_penyakit)){
		$sql="update tb_penyakit set nama_penyakit='".$nama_penyakit."' where id_penyakit='".$id_penyakit."'";
		$result=mysql_query($sql)or die(mysql_error());
		if($result){
			$balas="0";	
		}else{
			$balas="1";	
		}
	}
	return $balas;
}

function _update_admin($id_admim,$email,$password,$nama_lengkap){
	$sql="";
	$balas=1;
	if(!empty($id_admim)){
		$sql="update tb_user set email='".$email."',password='".$password."',nama_lengkap='".$nama_lengkap."' where id_user='".$id_admim."'";
		$result=mysql_query($sql)or die(mysql_error());
		if($result){
			$balas=0;	
		}else{
			$balas=1;
		}
	}
	return $balas;
}

function _combo_status_admin($kode) {
	echo "<option value='' selected>- Pilih -</option>";
	$kat = array('Ya', 'Tidak');
	foreach($kat as $key => $value) {
		if($kode == "")
			echo "<option value='$value'> " . ucwords($value) . " </option>";
		else
			echo "<option value='$value'" . selected($value, $kode) . "> " . ucwords($value) . " </option>";
	}			
}

function _cek_status_admin($kode){
	$status="";
	if(!empty($kode)){
		if($kode='Y'){
			$status="YA";	
		}else{
			$status="Tidak";	
		}
	}
	return $status;
}

function _tampil_nama_penyakit($id){
	$nama_penyakit="";
	$sql="";
	if(!empty($id)){
		$sql="select nama_penyakit from tb_penyakit where id_penyakit='".$id."'";
		$result=mysql_query($sql)or die(mysql_error());
		$rows=mysql_fetch_array($result);
		$nama_penyakit=$rows['nama_penyakit'];
	}
	return $nama_penyakit;
		
}

function _tampil_kategori($id){
	$respon="";
	if(!empty($id)){
		$sql="select kategori from tb_penyakit where id_penyakit='".$id."'";
		$result=mysql_query($sql);
		$data=mysql_fetch_array($result);
		$respon=$data['kategori'];	
	}
	return $respon;
}


function _tampil_nama_gejala($id){
	$respon="";
	if(!empty($id)){
		$sql="select nama_gejala from tb_gejala where id_gejala='".$id."'";
		$result=mysql_query($sql);
		$data=mysql_fetch_array($result);
		$respon=$data['nama_gejala'];	
	}
	return $respon;
}

function _tampil_solusi($id){
	$respon="";
	if(!empty($id)){
		$sql="select solusi from tb_penyakit where id_penyakit='".$id."'";
		$result=mysql_query($sql);
		$data=mysql_fetch_array($result);
		$respon=$data['solusi'];	
	}
	return $respon;
}

function _tampil_obat($id){
	$respon="";
	if(!empty($id)){
		$sql="select obat from tb_penyakit where id_penyakit='".$id."'";
		$result=mysql_query($sql);
		$data=mysql_fetch_array($result);
		$respon=$data['obat'];	
	}
	return $respon;
}


function _cek_user($email){
	$respon=0;
	$sql="select id_user from tb_user where email='".$email."'";
	$result=mysql_query($sql)or die (mysql_error());
	$row=mysql_num_rows($result);
	return $row;
}

#FUNGSI UNTUK MENAMBAH TEMP ANALISA
function _add_temp_analisa($id_gejala,$id_user){
 $sql="select tb_aturan.* from tb_aturan,tb_temp_penyakit where tb_aturan.id_penyakit=tb_temp_penyakit.id_penyakit AND tb_temp_penyakit.id_user='".$id_user."' order by tb_aturan.id_penyakit,tb_aturan.id_gejala";
 $result=mysql_query($sql);
 while($data=mysql_fetch_array($result)){
	$sqlTemp="insert into tb_temp_analisa(id_user,id_penyakit,id_gejala)values('".$id_user."','".$data['id_penyakit']."','".$data['id_gejala']."')";
	mysql_query($sqlTemp)or die (mysql_error()); 
 }
}

#FUNGSI UNTUK MENAMBAH TEMP GEJALA
function _add_temp_gejala($id_gejala,$id_user){
	$sql="insert into tb_temp_gejala(id_user,id_gejala)values('".$id_user."','".$id_gejala."')";
	mysql_query($sql)or die (mysql_error());	
}
#FUNGSI UNTUK MENGOSONGKAN TEMP PENYAKIT
function _del_temp_penyakit($id_user){
	$sql="delete from tb_temp_penyakit where id_user='".$id_user."'";
	mysql_query($sql)or die (mysql_error());	
}
#FUNGSI UNTUK MENGOSONGKAN TEMP ANALISA
function _del_temp_analisa($id_user){
	$sql="delete from tb_temp_analisa where id_user='".$id_user."'";
	mysql_query($sql)or die (mysql_error());	
}

function _tampil_nama_user($id){
		$respon="";
		if (!empty($id)){
			$sql="select nama_lengkap from tb_user where id_user='".$id."'";
			$result=mysql_query($sql);
			$data=mysql_fetch_array($result);
			$respon=$data['nama_lengkap'];
		}
		return $respon;
}

function _tampil_email_user($id){
		$respon="";
		if (!empty($id)){
			$sql="select email from tb_user where id_user='".$id."'";
			$result=mysql_query($sql);
			$data=mysql_fetch_array($result);
			$respon=$data['email'];
		}
		return $respon;
}

function _tampil_gejala($id){
		$respon="";
		if (!empty($id)){
			/*$sql="select nama_gejala from tb_gejala where id_gejala='".$id."'";
			$result=mysql_query($sql);
			$data=mysql_fetch_array($result);
			$respon=$data['nama_gejala'];*/
			
			//$sql="select id_gejala from tb_aturan where id_penyakit='".$id."'";
			$sql="select tb_diagnosa.id_gejala from tb_diagnosa";
			$result=mysql_query($sql)or die(mysql_error());
			while($data=mysql_fetch_array($result)){
				$respon[]=$data['id_gejala'];
			}
			
		}
		
		return $respon;
}

//// metode certainty factor ///
function _ambilCF($id_aturan){
	$respon="";
	if(!empty($id_aturan)){
		$sql="select nilai_cf from tb_aturan where id_aturan='".$id_aturan."'";
		$result=mysql_query($sql);
		$data=mysql_fetch_array($result);
		$respon=$data['nilai_cf'];
	}
	return $respon;
}

function _cek_login($email,$password){
	$respon=0;
	if(!empty($email)&& !empty($password)){
	$sql="select * from tb_user where email='".$email."' and password='".$password."' AND status_admin='T' LIMIT 1";
	$result=mysql_query($sql);
	if(mysql_num_rows($result)>0){
		$respon=1;
		$data=mysql_fetch_array($result);	
		$_SESSION['s_id_user']=$data['id_user'];
		$_SESSION['s_nama_lengkap']=$data['nama_lengkap'];
	}else{
		$respon="2";	
	}
}
	return $respon;
}

function _simpan_daftar($email,$password,$nama_lengkap,$status){
	$respon=0;
		
	$id_user=_kd_auto("id_user","tb_user","U");
	$sql="insert into tb_user(id_user,email,password,nama_lengkap,status_admin)values('".$id_user."','".$email."','".$password."','".$nama_lengkap."','".$status."')";
	$result=mysql_query($sql);
	if($result){
		$respon=1;
		$_SESSION['s_id_user']=$id_user;
		$_SESSION['s_nama_lengkap']=$nama_lengkap;	
	}
	
	return $respon;
}

function _cek_email($email){
	$respon=0;
	if(!empty($email)){
		$sql="select id_user from tb_user where email='".$email."'";
		$result=mysql_query($sql);
		$jml=mysql_num_rows($result);
		if($jml==0){
			$respon=1;	
		}
	}
	return $respon;
}

function _combo_mulai($kode) {
	echo "<option value='' selected>- Pilih -</option>";
	$kat = array('Y', 'T');
	foreach($kat as $key => $value) {
		if($kode == "")
			echo "<option value='$value'> " . ucwords($value) . " </option>";
		else
			echo "<option value='$value'" . selected($value, $kode) . "> " . ucwords($value) . " </option>";
	}			
}

function _combo_selesai($kode) {
	echo "<option value='' selected>- Pilih -</option>";
	$kat = array('Y', 'T');
	foreach($kat as $key => $value) {
		if($kode == "")
			echo "<option value='$value'> " . ucwords($value) . " </option>";
		else
			echo "<option value='$value'" . selected($value, $kode) . "> " . ucwords($value) . " </option>";
	}			
}

function _combo_ya($kode){
echo "<option value='' selected>- Pilih -</option>";
	$query = query("SELECT id_gejala,nama_gejala FROM tb_diagnosa");
	while ($row = mysql_fetch_row($query)) {
		if ($kode == "")
			echo "<option value='$row[0]'> " . ucwords($row[0]." ".$row[1]) . " </option>";
		else
			echo "<option value='$row[0]'" . selected($row[0], $kode) . "> " . ucwords($row['0']." ".$row[1]) . " </option>";
	}			
}

/*function _combo_ya2($kode){
	$ar_ya="";
	$ar_nama="";
	echo "<option value='' selected>- Pilih -</option>";
	$query = query("SELECT id_gejala,nama_gejala FROM tb_gejala");
	while($data=mysql_fetch_array($query)){
			$ar_ya[]=$data['id_gejala'];
			$ar_nama[]=$data['nama_gejala'];
	}
	$query_p=query("select id_penyakit,nama_penyakit from tb_penyakit");
	while($data_p=mysql_fetch_array($query_p)){
		$ar_ya[]=$data_p['id_penyakit'];	
	}
	$pnj=count($ar_ya);
	for($i=0;$i<$pnj;$i++){
			if ($kode == "")
			echo "<option value='$ar_ya[$i]'> " . ucwords($ar_nama[$i]) . " </option>";
		else
			echo "<option value='$ar_ya[$i]'" . selected($ar_nama[$i], $kode) . "> " . ucwords($ar_nama[$i]) . " </option>";
	}
}*/

function _combo_ya2($kode){
	$ar_ya="";
	$ar_nama="";
	echo "<option value='' selected>- Pilih -</option>";
	$query = query("SELECT id_gejala,nama_gejala FROM tb_gejala");
	while($data=mysql_fetch_array($query)){
			$ar_ya[]=$data['id_gejala'];
			$ar_nama[]=$data['nama_gejala'];
	}
	$query_p=query("select id_penyakit,nama_penyakit from tb_penyakit");
	while($data_p=mysql_fetch_array($query_p)){
		$ar_ya[]=$data_p['id_penyakit'];
		$ar_nama[]=$data_p['nama_penyakit'];	
	}
	$pnj=count($ar_ya);
	for($i=0;$i<$pnj;$i++){
			if ($kode == "")
			echo "<option value='$ar_ya[$i]'> " . ucwords($ar_ya[$i]) . " </option>";
		else
			echo "<option value='$ar_ya[$i]'" . selected($ar_ya[$i], $kode) . "> " . ucwords($ar_nama[$i]) . " </option>";
	}
}

/*function _tampil_nama_gejala($kode){
	$respon="";
	if(!empty($kode)){
		$sql="select nama_gejala from tb_gejala where id_gejala='".$kode."'";
			
	}
}*/

function _tampil_ya($kode){
	$respon="";
	$ar_ya="";
	$ar_nama="";
	$query = query("SELECT nama_gejala FROM tb_gejala where id_gejala='".$kode."'");
	$jml_data=mysql_num_rows($query);
	if($jml_data>0){
		$fetch=mysql_fetch_array($query);
		$respon=$fetch['nama_gejala'];	
	}else{
		$query_p=query("select nama_penyakit from tb_penyakit where id_penyakit='".$kode."'");
		$jml_data_p=mysql_num_rows($query_p);
		if($jml_data_p>0){
			$fetch_p=mysql_fetch_array($query_p);
			$respon=$fetch_p['nama_penyakit'];
			//$respon=$kode;	
		}
	}
	return $respon;
		
}


function _combo_tidak($kode){
	echo "<option value='' selected>- Pilih -</option>";
	$query = query("SELECT id_diagnosa,keterangan FROM tb_diagnosa");
	while ($row = mysql_fetch_row($query)) {
		if ($kode == "")
			echo "<option value='$row[0]'> " . ucwords($row[0]." ".$row[1]) . " </option>";
		else
			echo "<option value='$row[0]'" . selected($row[0], $kode) . "> " . ucwords($row['0']." ".$row[1]) . " </option>";
	}	
}

function selected($t1, $t2) {
	if(trim($t1) == trim($t2))
		return "selected";
	else
		return "";
}

///////////////////////////////////////////////////cf
function _hit_cf($id_penyakit){
	//tester
	/*
	$sqlTest="select tb_gejala.nama_gejala from tb_gejala,tb_aturan where tb_aturan.id_penyakit='".$id_penyakit."' AND tb_aturan.id_gejala=tb_gejala.id_gejala";
	$resultTest=mysql_query($sqlTest)or die(mysql_error());
	while($dataTest=mysql_fetch_array($resultTest)){
		print_r($dataTest);
	}
	*/
	/*
	$sqlTest="select tb_gejala.nama_gejala from tb_gejala,tb_diagnosa where tb_diagnosa.id_gejala=tb_gejala.id_gejala";
	$resultTest=mysql_query($sqlTest)or die(mysql_error());
	while($dataTest=mysql_fetch_array($resultTest)){
		print_r($dataTest);
	}
	*/
	///////////////////////////////////////////////
	//$sql="select tb_gejala.nilai_cf from tb_gejala,tb_aturan where tb_aturan.id_penyakit='".$id_penyakit."' AND tb_aturan.id_gejala=tb_gejala.id_gejala";
	$sql="select tb_gejala.nilai_cf from tb_gejala,tb_diagnosa where tb_diagnosa.id_gejala=tb_gejala.id_gejala";
	$result=mysql_query($sql)or die(mysql_error());
	$tempnilai="";
	$i=0;
	//$jml_data=mysql_num_rows($result);
	$hasil="";
	$nilai="";
	$hasil_akhir="";
	while($data=mysql_fetch_array($result)){
		$nilai[]=$data['nilai_cf'];
		//print_r($data);
	}
	
	//print_r($nilai);
	
	$jml_data=count($nilai)-1;
	$z=0;
	for($x=0;$x<=$jml_data;$x++){
		
		if($x==0){
			$hasil_akhir[]=$nilai[$x]+($nilai[$x+1]*(1-$nilai[$x]));//nilai awal
			$z=0;
			$x=$x+1;
		}else{
			//$z=$x+1
			//echo $x;
			$z=count($hasil_akhir)-1;
			//echo $z;
			$hasil_akhir[]=$nilai[$x]+($hasil_akhir[$z]*(1-$nilai[$x]));
	
		}

	}
	
	$nilai_final=0;
	$jml_ar=count($hasil_akhir);
	if($jml_ar<=1){
		$nilai_final=$hasil_akhir[0];
	}else{
		$nilai_final=$hasil_akhir[$jml_ar-1];
	}
	//echo "Nilai Final =".$nilai_final;
	//echo "hasil =".$hasil;
	return $nilai_final;
}

function konversi_bulan($bln) {
	switch($bln) {
		case "1" :

		case "01" :
			$bulan = "Jan";
			break;
		case "2" :

		case "02" :
			$bulan = "Feb";
			break;
		case "3" :

		case "03" :
			$bulan = "Mar";
			break;
		case "4" :

		case "04" :
			$bulan = "Apr";
			break;
		case "5" :

		case "05" :
			$bulan = "Mei";
			break;
		case "6" :

		case "06" :
			$bulan = "Juni";
			break;
		case "7" :

		case "07" :
			$bulan = "Juli";
			break;
		case "8" :

		case "08" :
			$bulan = "Agust";
			break;
		case "9" :

		case "09" :
			$bulan = "Sept";
			break;
		case "10" :
			$bulan = "Okto";
			break;
		case "11" :
			$bulan = "Nov";
			break;
		case "12" :
			$bulan = "Des";
			break;
		default :
			$bulan = "";
	}
	return $bulan;
}

function konversi_tanggal($time) {
	list($thn, $bln, $tgl) = explode('-', $time);
	$tmp = $tgl . " " . konversi_bulan($bln) . " " . $thn;
	return $tmp;
}

function tampil_tanggal($time) {
	list($date, $time) = explode(' ', $time);
	$tmp = konversi_tanggal($date) . " " . $time;
	return $tmp;
}

?>