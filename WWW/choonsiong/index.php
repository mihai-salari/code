<?php
include 'include/magicquotes.inc.php';
include 'include/db.inc.php';

try {
  $sql = 'SELECT * FROM post ORDER BY id DESC LIMIT 1';
  $result = $pdo->query($sql);
} catch (PDOException $e) {
  $error = 'Error fetching posts: ' . $e->getMessage();
  include 'view/error.html.php';
  exit();
}

foreach ($result as $row) {
  $posts[] = array(
    'id' => $row['id'],
    'post_header' => $row['post_header'],
    'post_author' => $row['post_author'],
    'post_body' => $row['post_body'],
    'post_date' => $row['post_date']);
}

$postsReversed = array_reverse($posts);

include 'view/post.html.php';
