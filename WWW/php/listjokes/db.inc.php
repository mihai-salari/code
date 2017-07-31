<?php
try {
  $pdo = new PDO('mysql:host=localhost;dbname=ijdb', 'ijdb', 'password');

  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');

} catch (PDOException $e) {
  // $output = 'Unable to connect to the database server: ' . $e->getMessage();
  $error = 'Unable to connect to the database server.';
  include 'error.html.php';
  exit();
}
?>
