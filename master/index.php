<?php require_once('header2.php'); ?>
<?php
if(isset($_COOKIE['_ua_'])) {
    header("Location: admin_dashboard.php");
  }
?>
    <div class="container">
        <h2 class="text-uppercase mt-5 sign-in" style="text-align:center">Admin Login</h2>
        <?php
            if(isset($_POST['submit'])) {
                $user_name = trim($_POST['user-name']);
                $user_password = trim($_POST['user-password']);
                if(empty($user_name) || empty($user_password)) {
                    echo "<div class='alert alert-danger'>Field can't be empty!</div>";
                } else {
                    $sql = "SELECT * FROM admin";
                    $stmt = $pdo->prepare($sql);
                    $stmt->execute();
                    while($user = $stmt->fetch(PDO::FETCH_ASSOC)) {
                        $name = $user['username'];
                        $password = $user['password'];
                        if($user_name == $name && password_verify($user_password,$password)) {
                            setcookie('_ua_', md5(1), time() + (60*60*10), '', '', '', true);
                            header("Location: admin_dashboard.php");
                        } else {
                            echo "<div class='alert alert-danger'>Wrong credentials!</div>";
                        }
                     }
                }
            }
        ?>
        <form action="index.php" method="POST" class="py-2 d-flex justify-content-center flex-column">
            <div class="form-group m-3">
                <label for="username">Username</label>
                <input name="user-name" type="text" class="form-control" id="username" placeholder="Enter Username">
            </div>
            <div class="form-group m-3">
                <label for="password">Password</label>
                <input name="user-password" type="password" class="form-control" id="password" placeholder="Enter Password">
            </div>
            <button name="submit" type="submit" class="btn btn-primary m-3 align-self-end">SIGN IN</button>
        </form>
    </div>

    

<?php require_once('./includes/footer.php'); ?>