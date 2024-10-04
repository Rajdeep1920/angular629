<?php
function renameFile($fileName, $newFileName) {
    if (rename($fileName, $newFileName)) {
        echo "File renamed successfully.";
    } else {
        echo "Error renaming the file.";
    }
}

$fileName = "example.txt";
$newFileName = "newFile.txt";
$directory = "demo/";
$filePath = $directory . $fileName;

renameFile($filePath, $directory . $newFileName);
?>
