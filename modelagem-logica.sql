CREATE DATABASE oficina;
USE oficina;

CREATE TABLE ordermDeServico(
	idOrdemDeServico INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(45),
    dataEntrega DATE,
    valorTotal DOUBLE,
    dataEmissao VARCHAR(45),
    statusOrdemDeServiço VARCHAR(45)
);

CREATE TABLE pecasPorServico(
	quantitadeDePecas VARCHAR(45)
);

CREATE TABLE estoquePecas(
	peca VARCHAR(45),
    valor DOUBLE,
    fabricante VARCHAR(45),
    quantidade INT
);

CREATE TABLE maoDeObra(
	idMaoDeObra INT,
    tipo VARCHAR(45),
    descricao VARCHAR(45),
    valor DOUBLE
);

CREATE TABLE mecanica(
	idMecanico INT,
    nome VARCHAR(45),
    cpf VARCHAR(11),
    codigo VARCHAR(45),
    endereco VARCHAR(45),
    especialidade VARCHAR(45)
);

CREATE TABLE equipe(
	idVeiculo INT,
    idMecanico INT
);

CREATE TABLE servico(
	idVeiculo INT,
    idMaoDeObra INT,
    horasExecutadas TIME,
    idOrdermDeServico INT
);

CREATE TABLE veiculo(
	idVeiculo INT,
    tipo VARCHAR(45),
    modelo VARCHAR(45),
    ano VARCHAR(4),
    marca VARCHAR(45),
    idClient INT
);

CREATE TABLE clients(
	idClient INT,
    nome VARCHAR(45),
    cpf VARCHAR(11),
    endereco VARCHAR(45)
);

CREATE TABLE orcamento(
	idOrdemDeServico INT,
    idClient INT
);