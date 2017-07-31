<?php
if (get_magic_quotes_gpc())
{
  $process = array(&$_GET, &$_POST, &$_COOKIE, &$_REQUEST);
  while (list($key, $val) = each($process))
  {
    foreach ($val as $k => $v)
    {
      unset($process[$key][$k]);
      if (is_array($v))
      {
        $process[$key][stripslashes($k)] = $v;
        $process[] = &$process[$key][stripslashes($k)];
      }
else {
        $process[$key][stripslashes($k)] = stripslashes($v);
      }
} }
  unset($process);
}

try {
  $pdo = new PDO('mysql:host=localhost;dbname=csdb', 'csdb', 'password');

  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');

} catch (PDOException $e) {
  $error = 'Unable to connect to the database server.';
  include '../view/error.html.php';
  exit();
}

if (!isset($_REQUEST['post_body'])) {
  include '../view/admin.html.php';
} else {
  $post_header = $_REQUEST['post_header'];
  $post_body = $_REQUEST['post_body'];
  $post_author = $_REQUEST['post_author'];

  try {
    $sql = "INSERT INTO post (post_header, post_body, post_author) VALUES (\"$post_header\", \"$post_body\", \"$post_author\");";
    echo $sql;
    $affectedRows = $pdo->exec($sql);
  } catch (PDOException $e) {
    $error = 'Error performing insert: ' . $e->getMessage();
    include '../view/error.html.php';
    exit();
  }

  $output = "Updated $affectedRows rows.";
  include '../view/output.html.php';
}
