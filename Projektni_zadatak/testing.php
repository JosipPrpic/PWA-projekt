<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        #item-wrapper {
            width: 300px;
            height: 500px;
            margin: 0 auto;
            background-color: gray;
            color: black;
            bordeR: 5px solid black;
        }
        
    </style>
</head>
<body>
    <?php
        $var = 30;

        for ($i = 0; $i < $var; $i++){
            echo "<div id='item-wrapper'>";
            echo "<h1>Item</h1>";
            echo "</div>";
        }


    ?>
    
</body>
</html>