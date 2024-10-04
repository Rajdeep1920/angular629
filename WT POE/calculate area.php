<?php
// Function to calculate the area of a circle
function circleArea($radius)
{
    return M_PI * pow($radius, 2);
}

// Function to calculate the area of a triangle
function triangleArea($base, $height)
{
    return 0.5 * $base * $height;
}

// Function to calculate the area of a rectangle
function rectangleArea($length, $width)
{
    return $length * $width;
}

// Sample inputs for testing
$circleRadius = 5;
$triangleBase = 6;
$triangleHeight = 8;
$rectangleLength = 4;
$rectangleWidth = 10;

// Calculate and display the areas
echo "Area of Circle: " . circleArea($circleRadius). "\n";
echo "Area of Triangle: " . triangleArea($triangleBase, $triangleHeight) . "\n";
echo "Area of Rectangle: " . rectangleArea($rectangleLength, $rectangleWidth) . "\n";
?>
