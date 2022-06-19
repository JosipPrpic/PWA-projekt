<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PWA Projekti zadatak</title>
    <link rel="shortcut icon" href="https://lms-2020.tvz.hr/pluginfile.php/1/theme_lambda/favicon/1652961002/favicon.ico">

    <link rel="stylesheet" href="CSS/style.css">
    <link rel="stylehseet" href="CSS/article-master.css">

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
                <h1>Franffurter Allgemeine - članak site</h1>
            </div>
            <?php 
                // dohvati id od članka na koji je user kliknuo i na temelju njega ispiši naslov, kratki opis i tekst članka
                $id = $_GET['id'];
                // echo $id;
            ?>
            <div id="article-main">
                <div id="article-img">
                <img src="<?php 
                    $id = $_GET['id'];
                                $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                //echo "Uspjesno spajanje na bazu<br>";
                                       
                                $query="SELECT id, slika_link FROM vijesti where ID = $id";
                                $result=mysqli_query($dbc, $query) or
                                    die('Error querying database.');
                                    while($row=mysqli_fetch_array($result)){
                                        
                                            echo $row['slika_link'];
                                         
                                    }
                    ?>"
                 width="100%" height="500px" title="img" alt="img">                   
                </div>
                <div id="article-header">
                <?php 
                    $id = $_GET['id'];
                                $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                //echo "Uspjesno spajanje na bazu<br>";
                                       
                                $query="SELECT id, naslov FROM vijesti where ID = $id";
                                $result=mysqli_query($dbc, $query) or
                                    die('Error querying database.');
                                    while($row=mysqli_fetch_array($result)){
                                        
                                            echo "<h1><br><br><b>" . $row['naslov'] . "</b><br><br></h1>";
                                         
                                    }
                    ?>
                </div>
                <div id="article-text">
                <?php 
                    $id = $_GET['id'];
                                $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                //echo "Uspjesno spajanje na bazu<br>";
                                       
                                $query="SELECT id, text FROM vijesti where ID = $id";
                                $result=mysqli_query($dbc, $query) or
                                    die('Error querying database.');
                                    while($row=mysqli_fetch_array($result)){
                                        
                                            echo "<p><br><br>" . $row['text'] . "<br><br></p>";
                                            echo "<p><b>Članak i fotografije preuzeti su sa:</b> <a href='https://www.index.hr/' target='_blank'>Index.hr</a><br><br><br><br></p>";
                                         
                                    }
                    ?>
                </div>
            </div>

            
        </div>
    </main>

    <footer>
        <h1>
            Franffurter Allgemeine
        </h1>
    </footer>

</body>

</html>