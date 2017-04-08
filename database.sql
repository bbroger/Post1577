CREATE TABLE `clientes` (
 `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
 `nome` varchar(60) NOT NULL,
 `telefone` varchar(15),
 `email` varchar(80),
 PRIMARY KEY (`id`)
) ENGINE=InnoDB;

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (1, 'Kaua Ribeiro Cardoso', '(74) 8414-6200', 'KauaRibeiroCardoso@armyspy.com');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (2, 'Guilherme Ferreira Barros', '(12) 8865-4022', 'GuilhermeFerreiraBarros@teleworm.us');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (3, 'Murilo Azevedo Martins', '(96) 9572-6402', 'MuriloAzevedoMartins@jourrapide.com');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (4, 'Gabriel Melo Castro', '(11) 6048-4953', 'GabrielMeloCastro@rhyta.com');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (5, 'Luan Castro Goncalves', '(21) 8790-5998', 'LuanCastroGoncalves@rhyta.com');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (6, 'Sophia Sousa Almeida', '(62) 4566-3895', 'SophiaSousaAlmeida@teleworm.us');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (7, 'Fernanda Carvalho Pinto', '(44) 5505-7193', 'FernandaCarvalhoPinto@dayrep.com');
INSERT INTO `clientes` (`id`, `nome`, `telefone`, `email`) VALUES (8, 'Rebeca Sousa Cunha', '(14) 5928-5119', 'RebecaSousaCunha@rhyta.com');
