<?php
    $db = mysqli_connect('localhost','ii','chalenyer','ii_admision_unsa')
    or die('Error conectando al server MySQL');
    
    $query = "SELECT * FROM Participante";
    $result = mysqli_query($db, $query) or die('Error en query');

    
$sql="SELECT Lastname,Age FROM Persons ORDER BY Lastname";
$result=mysqli_query($con,$sql);

// Numeric array
$row=mysqli_fetch_array($result,MYSQLI_NUM);
printf ("%s (%s)\n",$row[0],$row[1]);

// Associative array
$row=mysqli_fetch_array($result,MYSQLI_ASSOC);
printf ("%s (%s)\n",$row["Lastname"],$row["Age"]);

// Free result set
mysqli_free_result($result);

mysqli_close($con);

// Perform queries 
mysqli_query($con,"SELECT * FROM Persons");
mysqli_query($con,"INSERT INTO Persons (FirstName,LastName,Age) 
VALUES ('Glenn','Quagmire',33)");
//----------------------------------------------------

$servername = "localhost";
$username = "username";
$password = "password";


// Create connection
$conn = new mysqli($servername, $username, $password);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";

//-----

























































