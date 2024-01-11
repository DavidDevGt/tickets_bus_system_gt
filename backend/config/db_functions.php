<?php
require_once 'db.php';

/**
 * Ejecuta una consulta SQL y devuelve el resultado.
 *
 * @param string $sql La consulta SQL a ejecutar.
 * @param array $params Parámetros para la consulta.
 * @return array
 */
function dbQuery(string $sql, array $params = []) {
    global $entityManager;

    $stmt = $entityManager->getConnection()->prepare($sql);
    $result = $stmt->executeQuery($params);

    return $result->fetchAllAssociative();
}

/**
 * Ejecuta una consulta SQL y devuelve una fila como un array asociativo.
 *
 * @param string $sql La consulta SQL a ejecutar.
 * @param array $params Parámetros para la consulta.
 * @return array|null
 */
function dbFetchAssoc(string $sql, array $params = []) {
    global $entityManager;

    $stmt = $entityManager->getConnection()->prepare($sql);
    $result = $stmt->executeQuery($params);

    return $result->fetchAssociative();
}

/**
 * Ejecuta una consulta SQL y devuelve todas las filas en un array asociativo.
 *
 * @param string $sql La consulta SQL a ejecutar.
 * @param array $params Parámetros para la consulta.
 * @return array
 */
function dbFetchAll(string $sql, array $params = []) {
    return dbQuery($sql, $params);
}