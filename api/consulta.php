<?php

// Incluindo biblioteca e configuração do banco de dados
require 'vendor/autoload.php';
require 'config/database.php';

// Quantidade de registros que serão exibidos por página
$registrosPorPagina = 3;

// Recupera a página atual, caso não tenha sida definida, define como a primeira página
$paginaAtual = (isset($_GET['pagina']) ? intval($_GET['pagina']) : 1);

// Inicia a query na tabela de clientes
$query = QB::table('clientes');

// Definindo filtros
// Nome
if (!empty($_GET['nome'])) {
    $query->where('nome', 'LIKE', '%' . $_GET['nome'] . '%');
}

// Telefone
if (!empty($_GET['telefone'])) {
    $query->where('telefone', 'LIKE', '%' . $_GET['telefone'] . '%');
}

// Email
if (!empty($_GET['email'])) {
    $query->where('email', 'LIKE', '%' . $_GET['email'] . '%');
}

// Ordenando
$query->orderBy('nome');

// Aplicando paginação
$query->limit($registrosPorPagina)->offset(($paginaAtual - 1) * $registrosPorPagina);

// Executando query e armazenando os registros retornados
$registros = $query->get();

// Definindo quantidade total de registros
$quantidadeRegistros = $query->count();

// Retornando os dados no formato JSON
echo json_encode([
    'registros' => $registros,
    'paginacao' => [
        'registros_por_pagina' => $registrosPorPagina,
        'pagina_atual'         => $paginaAtual,
        'total_registros'      => $quantidadeRegistros,
    ],
]);