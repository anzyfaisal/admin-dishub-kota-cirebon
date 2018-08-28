<?php
session_start();

include "koneksi.php";

$username = $_POST['username'];
$password = $_POST['password'];


$login= mysqli_query($conn, "SELECT * from admin where username='$username' and password='$password'");
$rows = mysqli_num_rows($login);
$data = mysqli_fetch_array($login);
		if($rows == 1){
			// session_register("username");
			$_SESSION["username"]=$username;
			$_SESSION["nama"]=$data['nama'];
		?>
			<script language="javascript">
				document.location='dashboard/index.php';
			</script>
		<?php
} else {
?>
	<script language="javascript">
		alert('Username dan Password Salah !!');
		document.location='index.php';
		</script>

	<?php
	}
?>