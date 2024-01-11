<?php
require_once __DIR__ . '/../vendor/autoload.php';

// Jalar las 2 dependencias
use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;
use Dotenv\Dotenv;

$dotenv = Dotenv::createImmutable(__DIR__ . '/..');
$dotenv->load();

// Configuración de Doctrine
$isDevMode = true;
$config = Setup::createAnnotationMetadataConfiguration(array(__DIR__ . "/../models"), $isDevMode);

// Conexión a la base de datos
$conn = [
    'driver' => 'pdo_mysql',
    'host' => getenv('DB_HOST'),
    'user' => getenv('DB_USER'),
    'password' => getenv('DB_PASSWORD'),
    'dbname' => getenv('DB_NAME'),
];

// Crear el EntityManager
$entityManager = EntityManager::create($conn, $config);