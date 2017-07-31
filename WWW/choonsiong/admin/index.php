<?php
include '../include/magicquotes.inc.php';
include '../include/db.inc.php';

if (!isset($_REQUEST['post_body'])) {
  include '../view/admin.html.php';
} else {
  $post_header = $_REQUEST['post_header'];
  $post_body = $_REQUEST['post_body'];
  $post_author = $_REQUEST['post_author'];

  try {
    $sql = 'INSERT INTO post SET post_header = :post_header, post_body = :post_body, post_author = :post_author';
    $s = $pdo->prepare($sql);
    $s->bindValue(':post_header', $_POST['post_header']);
    $s->bindValue(':post_author', $_POST['post_author']);
    $s->bindValue(':post_body', $_POST['post_body']);
    $s->execute();

    //$affectedRows = $pdo->exec($sql);
  } catch (PDOException $e) {
    $error = 'Error adding submitted post: ' . $e->getMessage();
    include '../view/error.html.php';
    exit();
  }

  //$output = "Updated $affectedRows rows.";
  //include '../view/output.html.php';

  header('Location: ../.');
  exit();
}
