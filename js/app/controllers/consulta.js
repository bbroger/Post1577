angular.module('appModule')
    .controller('consultaController', function($http) {

        // Armazenando o objeto do controller para evitar conflitos
        var self = this;

        // Filtros da consulta
        self.filtros = [];

        // Lista de clientes
        self.clientes = [];

        // Controla a exibição da barra de progresso da pesquisa
        self.consultando = false;

        // Método responsável pela consulta dos registros
        self.consultar = function(pagina) {

            // Se nenhuma página definida, define como primeira página
            if (!pagina) pagina = 1;

            // Habilita a barra de progresso
            self.consultando = true;

            // Fazendo requisição AJAX com o servidor e passando os filtros por parâmetro
            $http.get('api/consulta.php?pagina=' + pagina, {
                params: self.filtros
            }).then(function(response) {

                // Armazena os clientes retornados
                self.clientes = response.data.registros;

                // Definindo dados para a paginação
                self.paginacao = response.data.paginacao;

            }).finally(function() {

                // Quando terminar a requisição, desabilita a barra de progresso
                self.consultando = false;

            });
        };

    });