<?php
  if (!isset($_REQUEST['firstname'])) {
    include 'form.html.php';
  } else {
    $firstname = $_REQUEST['firstname'];
    $lastname = $_REQUEST['lastname'];

    if ($firstname == 'Foo' and $lastname == 'Bar') {
      $output = 'Welcome, holy shit!';
    } else {
      $output = 'Welcome to our website, ' . htmlspecialchars($firstname, ENT_QUOTES, 'UTF-8') . ' ' . htmlspecialchars($lastname, ENT_QUOTES, 'UTF-8') . '!';
    }

    include 'welcome.html.php';
  }
