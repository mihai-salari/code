<?php
include 'include/magicquotes.inc.php';
include 'include/db.inc.php';

$show_all = '<a href="index.php?show=all">show all posts</a>';

if (isset($_REQUEST['show'])) {
	$show = $_REQUEST['show'];
	
	if ($show == 'all') {
		$sql = 'SELECT * FROM post ORDER BY id';
		$show_all = '<a href="index.php?show=off">hide all posts</a>';
	} else if ($show == 'off') {
		$sql = 'SELECT * FROM post ORDER BY id DESC LIMIT 1';
		$show_all = '<a href="index.php?show=all">show all posts</a>';
	}
} else {
	$sql = 'SELECT * FROM post ORDER BY id DESC LIMIT 1';
	$show_all = '<a href="index.php?show=all">show all posts</a>';
}

try {
  // $sql = 'SELECT * FROM post ORDER BY id DESC LIMIT 1';
  // $sql = 'SELECT * FROM post ORDER BY id';
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
