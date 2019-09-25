<?php require_once 'koneksi.php'; ?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous">
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="css/style.css">
    <title>Tambah data</title>
  </head>
  <body>
<!-- NavBar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a href="#" class="navbar-brand">Tugas CRUD Validasi Web Programming 2</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a href="/blog-lanjutan/admin" class="nav-link">Dendy Jordan Wijaya ©2019</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <div class="container">
    <div class="row">
      <div class="col-10 mt-3">
        <h2>Tambah data</h2>
        <?php
        if (isset($_GET['id'])) {
          $id = $_GET['id'];
          $sql = $connection->query("SELECT * FROM users WHERE id={$_GET['id']}");
          $datanya = $sql->fetch_assoc();
        }?>

        <?php
        if (isset($_POST['save'])) {
          $name = $_POST['nama'];
          $username = $_POST['username'];
          $password = $_POST['password'];
          $email = $_POST['email'];

          $query = "INSERT INTO users (nama, username, password, email)
          VALUES('$name', '$username', '$password', '$email')";

          if (isset($_GET['id'])) {
            $query = "UPDATE users SET nama='$name', username='$username',
            password='$password', email='$email' WHERE id={$_GET['id']}";
          }

          if ($connection->query($query) === TRUE) {
            echo "<div class=\"alert alert-success\" role=\"alert\">Berhasil Disimpan!</div>";
            echo "<script>var time = setTimeout(function()
                  {window.location = 'index.php'}, 500);</script>";
          } else {
            echo "<div class=\"alert alert-danger\" role=\"alert\">Gagal Disimpan!</div>";
            echo "<script>var time = setTimeout(function()
                  {window.location = 'index.php'}, 500);</script>";
            echo mysqli_errno($connection).' '.mysqli_error($connection);
          }
        }
         ?>
        <!-- Form tambah data -->
        <form action="" method="post">
          <div class="form-group">
            <label for="nama">Nama</label>
            <!-- <input type="hidden" name="id" id="id" value="<?=$id;?>"> -->
            <input type="text" class="form-control" id="nama" name="nama" maxlength="40"
            pattern="[a-zA-Z]+([\s][a-zA-Z]+)*" placeholder="Masukkan Nama Lengkap"
            value="<?php if (isset($_GET['id'])) {
              echo $datanya['nama'];
            } ?>" required>
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" name="username" maxlength="100"
            id="username" placeholder="Masukkan Username" value="<?php if (isset($_GET['id'])) {
              echo $datanya['username'];
            } ?>" required>
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" name="password"
            id="password" placeholder="Masukkan Password" value="<?php if (isset($_GET['id'])) {echo trim($datanya['password']);} ?>"
            required>
          </div>
          <div class="form-group">
            <label for="email">Email</label>
            <input type="email" class="form-control" name="email" maxlength="100"
             id="email" placeholder="Masukkan Email" value="<?php if (isset($_GET['id'])) {
               echo $datanya['email'];
             } ?>" id="email">
             <small id="email_validation_error"></small>
          </div>
          <input type="submit" id="saveButton"
          name="save" value="Save" class="btn btn-success"></input>
          <a href="index.php" class="ml-3 btn btn-primary">Kembali</a>
        </form>
      </div>
    </div>
  </div>


    <!-- Deklarasi Script -->

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
     integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
     crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
     integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
     crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
     integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
     crossorigin="anonymous"></script>
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script type="text/javascript">

    // Validasi Nama

    $("#nama").keypress(
        function (e) {
        var charTyped = String.fromCharCode(e.which);
        var letterRegex = /[^0-9]/;

        if (charTyped.match(letterRegex)) {
            return true;
        }
        else {
            return false;
        }
    });

    // Validasi Username

    $("#username").keypress(
        function (e) {
        var charTyped = String.fromCharCode(e.which);
        var letterRegex = /[^0-9]/;

        if (charTyped.match(letterRegex)) {
            return true;
        }
        else {
            return false;
        }
    });

    // Validasi Password

    $("#password").keypress(
        function (e) {
        var charTyped = String.fromCharCode(e.which);
        var letterRegex = /[^0-9]/;

        if (charTyped.match(letterRegex)) {
            return true;
        }
        else {
            return false;
        }
    });

    // Validasi Email

    $('#email').keyup(function() {
      var pattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;

      if(!pattern.test($(this).val())) {
        console.log('not valid');
        $('#email_validation_error').removeClass();
        $('#saveButton').prop("disabled", true);
        $('#email_validation_error').addClass('text-danger');
        $('#email_validation_error').text('Email is not valid');
      }else {
        console.log('valid');
        $('#email_validation_error').removeClass();
        $('#saveButton').removeAttr("disabled");
        $('#email_validation_error').addClass('text-success');
        $('#email_validation_error').text('Email is valid');
      }
    });
  </script>
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/jquery.mi.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
</html>
