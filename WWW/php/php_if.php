<?php
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];

if ($firstname == 'Foo' and $lastname == 'Bar') {
  echo 'Welcome, Foolish Foo Bra!';
} else {
  echo "Welcome $firstname $lastname!";
}
?>
