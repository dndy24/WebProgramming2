<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous">
    <title>Hapus User</title>
  </head>
  <body>
    <center>
    <?php
    require_once 'koneksi.php';

    if (isset($_GET['id'])) {
      $sql = "DELETE FROM users WHERE id={$_GET['id']}";
      $connection->query($sql);
      echo "<div class=\"alert alert-success\" role=\"alert\">Data Dihapus!</div>";
      echo "<script>var time = setTimeout(function()
      {window.location = 'index.php'}, 500);</script>";
    } else {
      echo "<script>var time = setTimeout(function()
      {window.location = 'index.php'}, 1);</script>";
    }
    ?>
  </center>
  </body>
</html>
