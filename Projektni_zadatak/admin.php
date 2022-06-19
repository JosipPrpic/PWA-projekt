<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FFA // Admin</title>
    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylesheet" href="CSS/admin.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

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
    <main>
        <div id="main-cont">
            <!-- Glavni naslov portala -->
            <div id="main-header">
                <img src="IMG/banner.png" height = "140px" width="auto" style="margin-left: 300px;">
            </div>

            <div id="admin-wrapper">
                <div id="add-article">
                    <form method="post">
                        Tag (sport/vijest): <br><input name="add_tag" type="text"><br>
                        Naslov: <br><input name="add_naslov" type="text"><br>
                        Podnaslov: <br><input name="add_short_text" type="text"><br>
                        Tekst:<br> <textarea name="add_text" type="text" width="1000px"></textarea><br>
                        Link na sliku: <br><input name="add_img" type="text"><br><br><br>
                        <input type="submit" name="submit" id="clanak-out" value="Objavi članak!">
                    </form>
                    <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            // echo "Uspjesno spajanje na bazu<br>";

                                            $tag = $_POST['add_tag'];
                                            $naslov = $_POST['add_naslov'];
                                            $short = $_POST['add_short_text'];
                                            $text = $_POST['add_text'];
                                            $img = $_POST['add_img'];
                                            
                                            $query_naslov="INSERT INTO vijesti (id, tag, naslov, short_text, text, slika_link) VALUES('', '$tag','$naslov', '$short', '$text','$img')";
                                        
                                            $result=mysqli_query($dbc, $query_naslov) or
                                            die('Error querying database.');
                                            
                        
                    ?>
                    
                </div>
                

            </div>
        </div>
    </main>

    <footer>
    <img src="IMG/banner.png" height = "140px" width="auto" style="margin-left: 200px;">
    </footer>

</body>

</html>