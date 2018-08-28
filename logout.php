<?php
	session_start();
	if(session_destroy())
	{
?>
<script> window.location.href = "index.php" </script>
<?php
	}
?>