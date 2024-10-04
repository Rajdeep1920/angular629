<?php
function deleteFile($fileName) {
    if (unlink($fileName)) {
        echo "File deleted successfully.";
    } else {
        echo "Error deleting the file.";
    }
}

$fileName = "example.txt";
$directory = "demo/";
$filePath = $directory . $fileName;

deleteFile($filePath);
?>
