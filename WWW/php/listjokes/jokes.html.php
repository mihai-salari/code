<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Jokes</title>
  </head>
  <body>
    <p>Here are all the jokes in the database:</p>
    <?php foreach ($jokes as $joke): ?>
      <blockquote>
        <p>
          <?php htmlout($joke['text']); ?>
          (by <a href="mailto:<?php htmlout($joke['email']); ?>"><?php htmlout($joke['name']); ?></a>)
        </p>
      </blockquote>
    <?php endforeach; ?>
  </body>
</html>
