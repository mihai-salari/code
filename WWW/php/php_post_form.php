<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>PHP form</title>
  </head>
  <body>
    <form class="no" action="name_secure_with_post.php" method="post">
      <div class="firstname">
        <label for="firstname">First name: <input type="text" name="firstname" id="firstname"></label>
      </div>
      <br />
      <div class="lastname">
        <label for="lastname">Last name: <input type="text" name="lastname" value="" id="lastname"></label>
      </div>
      <br />
      <div class="submit">
        <input type="submit" name="submit" value="Go">
      </div>
    </form>
  </body>
</html>
