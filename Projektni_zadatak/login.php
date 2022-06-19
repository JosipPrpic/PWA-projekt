<?php
$error = 0;

if(isset($_POST['login'])){
    //prihvati samo slova
    $username = preg_replace('/[^A-Za-z]/', '', $_POST['username']);
    $password = md5($_POST['password']);
    //provjeri postoji li korisnik
    if(file_exists('users/' . $username . '.xml')){
        $xml = new SimpleXMLElement('users/' . $username . '.xml', 0, true);
        //ako user postoji onda je login uspješan i skače se na index.php stranicu
        if($username == 'admin' && $password == $xml->password) {
            session_start();
            $_SESSION['username'] = $username;
            header('Location: admin.php');
            die;
        }else{
            if($password == $xml->password){
                session_start();
                $_SESSION['username'] = $username;
                header('Location: admin.php');
                die;
            }else{
                $error = 4;
            }
        }
    }
    elseif(!file_exists('users/' . $username . '.xml')){
        $error = 1;
    }
    if(!file_exists('users/' . $username . '.xml')){
        $error = 2;
    }
}
?>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>

        <link rel="stylesheet" href="CSS/article-master.css">
        <link rel="stylesheet" href="CSS/style.css">

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://kit.fontawesome.com/ecbdcc5fc9.js" crossorigin="anonymous"></script>
        
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans&family=Playfair+Display&display=swap" rel="stylesheet">

    </head>

    <body>
    <header>
        <div id="header-cont">
        <nav>
                <div id="nav-item-cont">
                    <a href="index.php">Početna</a>
                </div>
                <div id="nav-item-cont">
                    <a href="vijesti.php">Vijesti</a>
                </div>
                <div id="nav-item-cont">
                    <a href="sport.php">Sport</a>
                </div>
                <div id="nav-item-cont">
                    <a href="login.php">Administracija</a>
                </div>
            </nav>
        </div>
    </header>
        <div id="main-cont">
        <div id="main-header">
                <img src="IMG/banner.png" height = "140px" width="auto" style="margin-left: 300px;">
            </div>
            <div id="main-about-cont">
                
                <div id="about-p-cont">
                    <div id="form-wrapper">
                    <h1 style="text-align: center;">Admin login</h1>
                    <hr id="log-line">
                        <form method="post" action="" name="login">
                            <div id="form-content">
                                <p> Username:<br><input type="text" name="username" size="20" /></p>
                                <p> Password:<br><input type="password" name="password" size="20" /></p>
                                <p><input id="clanak-out" type="submit" value="Login" name="login" /> </p>
                                <br><br>
                                
                                <?php
                                //provjeri ima li errora i ispiši ih ako ih ima
                                if($error == 1){
                                    echo '<p style="color: red;" id="error-msg">Pogrešno korisničko ime i/ili lozinka!</p>';
                                }
                                elseif ($error == 2) {
                                    echo '<p style="color: red;" id="error-msg">Uneseno korisničko ime nema administratorske ovlasti!</p>';
                                }
                                elseif ($error == 4) {
                                    echo '<p style="color: red;" id="error-msg">Pogrešno korisničko ime i/ili lozinka!</p>';
                                }
                                
                            ?>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <footer>
    <img src="IMG/banner.png" height = "140px" width="auto" style="margin-left: 200px;">
    </footer>

    </body>

    </html>