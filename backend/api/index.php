<?php

header("Content-Type: application/json");
header("Access-Control-Allow-Origin: *");

echo json_encode([
    "message" => "Practica Profesionalizante 2",
    "nombre" => "Tomas Miola"
]);