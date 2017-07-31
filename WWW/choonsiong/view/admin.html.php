<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/7.0.0/normalize.min.css">
    <link rel="stylesheet" href="../stylesheet/form.css">
    <title>Admin Page</title>
  </head>

  <body>
    <h1>Submit a new post:</h1>
    <form class="form" action="" method="post">
      <span class="form-element">
        <label for="post_header">Title: <input type="text" name="post_header" value=""></label>
      </span>
      <span class="form-element">
        <label for="post_author">Author: <input type="text" name="post_author" value=""></label>
      </span>
      <span class="form-element">
        <label for="post_body">Post: </label>
        <textarea name="post_body" rows="20" cols="80"></textarea>
      </span>
      <span class="form-button">
        <input type="submit" name="" value="Submit">
      </span>
    </form>
  </body>
</html>
