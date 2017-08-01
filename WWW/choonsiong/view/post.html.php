<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="stylesheet/main.css">
    <title>choon . siong</title>
  </head>
  <body>
	  <header class="main-header"></header>

	  <main class="main-content">
		  <!-- <section class="main-about">
			  <p>:: About ::</p>
			  <article class="article-about">
				  <p>I will write something here one day.</p>
			  </articl>
		  </section> -->

		  <section class="main-post">
			  <?php foreach ($postsReversed as $post): ?>
			  <article class="post">
		          <p><?php echo htmlspecialchars($post['post_body'], ENT_QUOTES, 'UTF-8') . ' -- ';?>
		            <span class="post-date">
		              <?php
		                $date = new DateTime($post['post_date']);
		                $date->setTimezone(new DateTimeZone('Asia/Kuala_Lumpur'));
		                echo htmlspecialchars($date->format('m/d g:ia'), ENT_QUOTES, 'UTF-8');
		              ?>
		            </span>
		            <span class="post-author"><?php echo ' (' . htmlspecialchars($post['post_author'], ENT_QUOTES, 'UTF-8') . ')'; ?></span>
		          </p>
			  </article>
			  <?php endforeach; ?>
		  </section>
	  </main>

	  <footer class="main-footer">
      <a href="https://github.com/choonsiong">Github</a> . <a href="http://choonsiong.com/public/">Public</a> . <a href="https://twitter.com/choonsionglee">Twitter</a> | <?php echo $show_all ?>
	  </footer>

  </body>
</html>