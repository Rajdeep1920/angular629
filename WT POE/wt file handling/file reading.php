<html>
<head>
<title>PHP Programs</title>
</head>
<body>
<div>
<h1>File Operations</h1>
<?php
$fileName = "example.txt";
$directory = "demo/";
$filePath = $directory . $fileName;

$file = fopen($filePath, "r");
if ($file) {
    echo "File Data: ";
    echo fread($file, filesize($filePath));
    fclose($file);
} else {
    echo "Error opening the file.";
}
?>

</div>
</body>
</html>
