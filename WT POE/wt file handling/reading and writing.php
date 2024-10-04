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

$file = fopen($filePath, "w");
if ($file) {
    fwrite($file, "Hello, I am Vinayak Mandare");
    fclose($file);
    echo "File created and written successfully.";
} else {
    echo "Error creating the file.";
}
?>
</div>
</body>
</html>
