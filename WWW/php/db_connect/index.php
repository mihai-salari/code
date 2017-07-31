<?php
  try {
    $pdo = new PDO('mysql:host=localhost;dbname=ijdb', 'ijdb', 'password');

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec('SET NAMES "utf8"');

  } catch (PDOException $e) {
    // $output = 'Unable to connect to the database server: ' . $e->getMessage();
    $output = 'Unable to connect to the database server.';

    include 'output.html.php';
    exit();
  }

$output = 'Database connection established.';
include 'output.html.php';
