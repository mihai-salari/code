<?php
// Workaround for magic quotes...
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

// Load form for user to add a new post, if HTTP GET addpost is set
if (isset($_GET['addpost'])) {
  include 'view/form.html.php';
  exit();
}

// Connect to the database
try {
  $pdo = new PDO('mysql:host=localhost;dbname=csdb', 'csdb', 'password');
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $pdo->exec('SET NAMES "utf8"');
} catch (PDOException $e) {
  $error = 'Unable to connect to the database server.';
  include 'view/error.html.php';
  exit();
}

// Received a form submission from HTTP POST method
if (isset($_POST['post_body'])) {
  try {
    $sql = 'INSERT INTO post SET
      post_header = :post_header,
      post_body = :post_body,
      post_author = :post_author';
    $s = $pdo->prepare($sql);
    $s->bindValue(':post_header', $_POST['post_header']);
    $s->bindValue(':post_body', $_POST['post_body']);
    $s->bindValue(':post_author', $_POST['post_author']);
    $s->execute();
  } catch (PDOException $e) {
    $error = 'Error adding submitted post: ' . $e->getMessage();
    include 'view/error.html.php';
    exit();
  }

  // Reload the main index page, we don't want to submit the form twice to
  // end up with duplicate entries in the database
  header('Location: .');
  exit();
}

// If user click on the delete post button, let's do it then
if (isset($_GET['deletepost'])) {
  try {
    $sql = 'DELETE FROM post WHERE id = :id';
    $s = $pdo->prepare($sql);
    $s->bindValue(':id', $_POST['id']);
    $s->execute();
  } catch (PDOException $e) {
    $error = 'Error deleting post: ' . $e->getMessage();
    include 'view/error.html.php';
    exit();
  }

  // And return to the main index page happily
  header('Location: .');
  exit();
}

// Now let's show something to the World, aren't we?
try {
  $sql = 'SELECT * FROM post';
  $result = $pdo->query($sql);
} catch (PDOException $e) {
  $error = 'Error fetching posts: ' . $e->getMessage();
  include 'view/error.html.php';
  exit();
}

// Massage the data received into an array of associative arrays... wtf
foreach ($result as $row) {
  $posts[] = array(
    'id' => $row['id'],
    'post_header' => $row['post_header'],
    'post_author' => $row['post_author'],
    'post_body' => $row['post_body'],
    'post_date' => $row['post_date']);
}

// Some interesting stuff here, latest should go to the top, right?
$postsReversed = array_reverse($posts);

include 'view/post.html.php';
