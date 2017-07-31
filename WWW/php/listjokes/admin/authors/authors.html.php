<?php
include_once $_SERVER['DOCUMENT_ROOT'] . '/php/listjokes/helper.inc.php';
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Manage Authors</title>
  </head>
  <body>
    <h1>Manage Authors</h1>
    <p><a href="?add">Add new author</a></p>
    <ul>
      <?php foreach ($authors as $author): ?>
      <li>
        <form class="" action="" method="post">
          <div class="">
            <?php htmlout($author['name']); ?> (<?php htmlout($author['email']); ?>)
            <input type="hidden" name="id" value="<?php echo $author['id']; ?>">
            <input type="submit" name="action" value="Edit">
            <input type="submit" name="action" value="Delete">
          </div>
        </form>
      </li>
      <?php endforeach; ?>
    </ul>
    <p><a href="..">Return to JMS home</a></p>
  </body>
</html>
