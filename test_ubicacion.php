<?php

$servername = "localhost";
$username = "";
$password = "";
$dbname = "ubicaciones";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
mysqli_set_charset($conn, "utf8");
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Bucaramanga Coordinates
$lat = 19.6605625152588;
$lon = -99.0087890625000;

// Only show places within 100km
$distance = 15;

$lat = mysqli_real_escape_string($conn, $lat);
$lon = mysqli_real_escape_string($conn, $lon);
$distance = mysqli_real_escape_string($conn, $distance);

  $cadenaSQL = "
    SELECT * FROM (
        SELECT *, 
            (
                (
                    (
                        acos(
                            sin(( " . $lat . " * pi() / 180))
                            *
                            sin(( latitud * pi() / 180)) + cos(( " . $lat . " * pi() /180 ))
                            *
                            cos(( latitud * pi() / 180)) * cos((( " . $long . " - longitud) * pi()/180)))
                    ) * 180/pi()
                ) * 60 * 1.1515 * 1.609344
            )
        as distance 
            FROM 
                `cpostal` 
        GROUP BY codigoPostal
        
    ) markers
    WHERE 
        distance between 0 AND " . $distancia . "
    ORDER BY  distance ASC ";

$result = $conn->query($query);

if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo $row["nombre"] . "<br>";
    }
}

