<?php

// Definindo dados para conexão com o banco de dados
$config = [
    'driver'   => 'mysql',
    'host'     => 'localhost',
    'database' => 'rafaelcouto',
    'username' => 'root',
    'password' => '',
];

// Iniciando objeto de conexão da biblioteca
// A partir de agora podemos instanciar uma query utilizando QB
new \Pixie\Connection('mysql', $config, 'QB');