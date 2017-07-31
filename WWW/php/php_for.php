<?php
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];

if ($firstname == 'Foo' and $lastname == 'Bar') {
  for ($i=0; $i < 10; $i++) {
    echo "STUPID!<br />";
  }
} else {
  echo "Welcome $firstname $lastname!";
}
?>
