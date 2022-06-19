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
                <img src="IMG/banner.png" height = "140px" width="auto" style="margin-left: 300px;">
            </div>

            <div id="main-politics">
                <aside style="border-top: 10px solid green;">
                    <h1 id="aside-h1">
                        Sport
                    </h1>
                </aside>
                <section>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                <article id="pol-item">
                                    <div id="pol-img">
                                        <img src="<?php 
                                        $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                        die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                        //echo "Uspjesno spajanje na bazu<br>";
                                       
                                        $query="SELECT id, slika_link FROM vijesti";
                                        $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '15'){
                                                echo $row['slika_link'];
                                                }
                                            }
                                        
                                        ?>" width="303px" height="180px" title="img" alt="img">
                                    </div>
                                    <div id="pol-naslov">
                                        <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            //echo "Uspjesno spajanje na bazu<br>";
                                           
                                            $query="SELECT id, naslov FROM vijesti";
                                            
                                            $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                
                                                if($row['id'] == '15'){
                                                    echo $row['naslov'];
                                                }
                                            } 
                                        ?>
                                    </div>
                                    <div id="kratki-tekst">
                                    <?php
                                        $query="SELECT id, short_text FROM vijesti";

                                        
                                    
                                        $result=mysqli_query($dbc, $query) or
                                        die('Error querying database.');
                                        while($row=mysqli_fetch_array($result)){
                                            if($row['id'] == '15'){
                                                echo $row['short_text'];
                                                
                                            }
                                            
                                        }
                                    ?>
                                    </div>
                                    
                                    <form method="get" action="clanak.php">
                                        
                                        <input type="hidden" name="id" value="15">
                                        <input type="submit" name="submit" id="clanak-out" value="Saznaj više">
                                    </form>
                                </article>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                <article id="pol-item">
                                    <div id="pol-img">
                                        <img src="<?php 
                                        $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                        die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                        //echo "Uspjesno spajanje na bazu<br>";
                                       
                                        $query="SELECT id, slika_link FROM vijesti";
                                        $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '16'){
                                                    echo $row['slika_link'];
                                                    
                                                }
                                            }
                                        
                                        ?>" width="303px" height="180px" title="img" alt="img">
                                    </div>
                                    <div id="pol-naslov">
                                        <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            //echo "Uspjesno spajanje na bazu<br>";
                                           
                                            $query="SELECT id, naslov FROM vijesti";
                                            
                                            $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '16'){
                                                    echo $row['naslov'];
                                                }
                                            } 
                                        ?>
                                    </div>
                                    <div id="kratki-tekst">
                                    <?php
                                        $query="SELECT id, short_text FROM vijesti";
                                    
                                        $result=mysqli_query($dbc, $query) or
                                        die('Error querying database.');
                                        while($row=mysqli_fetch_array($result)){
                                            if($row['id'] == '16'){
                                                echo $row['short_text'];
                                                
                                            }
                                            
                                        }
                                    ?>
                                    </div>
                                    
                                    <form method="get" action="clanak.php">
                                    <input type="hidden" name="id" value="16">
                                        <input type="submit" name="submit" id="clanak-out" value="Saznaj više">
                                    </form>
                                </article>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                <article id="pol-item">
                                    <div id="pol-img">
                                        <img src="<?php 
                                        $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                        die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                        //echo "Uspjesno spajanje na bazu<br>";
                                       
                                        $query="SELECT id, slika_link FROM vijesti";
                                        $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '17'){
                                                    echo $row['slika_link'];
                                                    
                                                }
                                                
                                            }
                                        
                                        ?>" width="303px" height="180px" title="img" alt="img">
                                    </div>
                                    <div id="pol-naslov">
                                        <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            //echo "Uspjesno spajanje na bazu<br>";
                                           
                                            $query="SELECT id, naslov FROM vijesti";
                                            
                                            $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '17'){
                                                    echo $row['naslov'];
                                                }
                                            } 
                                        ?>
                                    </div>
                                    <div id="kratki-tekst">
                                    <?php
                                        $query="SELECT id, short_text FROM vijesti";
                                    
                                        $result=mysqli_query($dbc, $query) or
                                        die('Error querying database.');
                                        while($row=mysqli_fetch_array($result)){
                                            if($row['id'] == '17'){
                                                echo $row['short_text'];
                                                
                                            }
                                            
                                        }
                                        
                                    ?>
                                    </div>
                                    
                                    <form method="get" action="clanak.php">
                                        <input type="hidden" name="id" value="17">
                                        <input type="submit" name="submit" id="clanak-out" value="Saznaj više">
                                    </form>
                                </article>
                            </div>
                            
                        </div>
                    </div>


                </section>

            </div>


            <div id="main-politics">
                <aside style="border-top: 0px solid green;">
                    
                </aside>
                <section>
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                <article id="pol-item">
                                    <div id="pol-img">
                                        <img src="<?php 
                                        $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                        die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                        //echo "Uspjesno spajanje na bazu<br>";
                                       
                                        $query="SELECT id,slika_link FROM vijesti";
                                        $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '6'){
                                                echo $row['slika_link'];
                                                }
                                            }
                                        
                                        ?>" width="303px" height="180px" title="img" alt="img">
                                    </div>
                                    <div id="pol-naslov">
                                        <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            //echo "Uspjesno spajanje na bazu<br>";
                                           
                                            $query="SELECT id, naslov FROM vijesti";
                                            
                                            $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '6'){
                                                    echo $row['naslov'];
                                                }
                                            } 
                                        ?>
                                    </div>
                                    <div id="kratki-tekst">
                                    <?php
                                        $query="SELECT id, short_text FROM vijesti";
                                    
                                        $result=mysqli_query($dbc, $query) or
                                        die('Error querying database.');
                                        while($row=mysqli_fetch_array($result)){
                                            if($row['id'] == '6'){
                                                echo $row['short_text'];
                                            }
                                            
                                        }
                                    ?>
                                    </div>
                                    
                                    <form method="get" action="clanak.php">
                                        <input type="hidden" name="id" value="6">
                                        <input type="submit" name="submit" id="clanak-out" value="Saznaj više">
                                    </form>
                                </article>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                <article id="pol-item">
                                    <div id="pol-img">
                                        <img src="<?php 
                                        $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                        die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                        //echo "Uspjesno spajanje na bazu<br>";
                                       
                                        $query="SELECT id, slika_link FROM vijesti";
                                        $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '7'){
                                                    echo $row['slika_link'];
                                                    }
                                            }
                                        
                                        ?>" width="303px" height="180px" title="img" alt="img">
                                    </div>
                                    <div id="pol-naslov">
                                        <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            //echo "Uspjesno spajanje na bazu<br>";
                                           
                                            $query="SELECT id, naslov FROM vijesti";
                                            
                                            $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '7'){
                                                    echo $row['naslov'];
                                                }
                                            } 
                                        ?>
                                    </div>
                                    <div id="kratki-tekst">
                                    <?php
                                        $query="SELECT id, short_text FROM vijesti";
                                    
                                        $result=mysqli_query($dbc, $query) or
                                        die('Error querying database.');
                                        while($row=mysqli_fetch_array($result)){
                                            if($row['id'] == '7'){
                                                echo $row['short_text'];
                                            }
                                            
                                        }
                                    ?>
                                    </div>
                                    
                                    <form method="get" action="clanak.php">
                                    <input type="hidden" name="id" value="7">
                                        <input type="submit" name="submit" id="clanak-out" value="Saznaj više">
                                    </form>
                                </article>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-12 col-12">
                                <article id="pol-item">
                                    <div id="pol-img">
                                        <img src="<?php 
                                        $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                        die('Error connecting to MySQL server.'.mysqli_connect_error());
                                
                                        //echo "Uspjesno spajanje na bazu<br>";
                                       
                                        $query="SELECT id, slika_link FROM vijesti";
                                        $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '8'){
                                                    echo $row['slika_link'];
                                                    }
                                            }
                                        
                                        ?>" width="303px" height="180px" title="img" alt="img">
                                    </div>
                                    <div id="pol-naslov">
                                        <?php
                                            $dbc=mysqli_connect('localhost', 'root', '','pwa_projekt') or
                                            die('Error connecting to MySQL server.'.mysqli_connect_error());
                                    
                                            //echo "Uspjesno spajanje na bazu<br>";
                                           
                                            $query="SELECT id, naslov FROM vijesti";
                                            
                                            $result=mysqli_query($dbc, $query) or
                                            die('Error querying database.');
                                            while($row=mysqli_fetch_array($result)){
                                                if($row['id'] == '8'){
                                                    echo $row['naslov'];
                                                }
                                            } 
                                        ?>
                                    </div>
                                    <div id="kratki-tekst">
                                    <?php
                                        $query="SELECT id, short_text FROM vijesti";
                                    
                                        $result=mysqli_query($dbc, $query) or
                                        die('Error querying database.');
                                        while($row=mysqli_fetch_array($result)){
                                            if($row['id'] == '8'){
                                                echo $row['short_text'];
                                                
                                            }
                                            
                                        }
                                    ?>
                                    </div>
                                    
                                    <form method="get" action="clanak.php">
                                    <input type="hidden" name="id" value="8">
                                        <input type="submit" name="submit" id="clanak-out" value="Saznaj više">
                                    </form>
                                </article>
                            </div>
                            
                        </div>
                    </div>


                </section>

            </div>
    </main>

    <footer>
        <h1>
            Franffurter Allgemeine
        </h1>
    </footer>

</body>

</html>