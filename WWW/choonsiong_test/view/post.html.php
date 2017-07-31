<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="stylesheet/main.css">
    <title>Miniposts</title>
  </head>
  <body>
    <header>
      <h1>Here are all the posts in the databases:</h1>
      <nav class="page_nav">
        <!-- ?addpost if for HTTP GET, it is not some filename or directory name -->
        <p><a href="?addpost">Add your own post</a></p>
      </nav>
    </header>
    <section class="page_main">
    <?php foreach ($postsReversed as $post): ?>
      <article class="post">
        <h3>
          <?php echo htmlspecialchars($post['post_header'], ENT_QUOTES, 'UTF-8'); ?>
        </h3>
        <span class="post_date">
          <?php echo 'Posted by ' . htmlspecialchars($post['post_author'], ENT_QUOTES, 'UTF-8') . ' at ' . htmlspecialchars($post['post_date'], ENT_QUOTES, 'UTF-8'); ?>
        </span>
        <form class="" action="?deletepost" method="post">
        <p>
          <?php echo htmlspecialchars($post['post_body'], ENT_QUOTES, 'UTF-8'); ?>
          <input type="hidden" name="id" value="<?php echo $post['id']; ?>">
          <input type="submit" name="" value="Delete">
        </p>
        </form>
      </article>
    <?php endforeach; ?>
    </section>
  </body>
</html>
