<?php
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];

$count = 1;

if ($firstname == 'Foo' and $lastname == 'Bar') {
  while ($count <= 10) {
    echo 'Welcome, FOOLISH!';
    ++$count;
  }
} else {
  echo "Welcome $firstname $lastname!";
}
?>
