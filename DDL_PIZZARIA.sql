CREATE TABLE cliente (
	NomeCliente varchar(50) not null,
    idCliente int primary key auto_increment,
    telefone varchar(11) not null,
    email varchar(50) not null unique,
    endereco varchar(200) not null,
    dataCadastro date
);

CREATE TABLE funcionario (
	idFuncionario int primary key auto_increment,
	nomeFuncionario varchar(50) not null,
    cargoFuncionario varchar(100) not null,
    salario varchar(50) not null,
    dataAdimissao date
);

CREATE TABLE pedido (
	idPedido int primary key auto_increment,
	dataPedido date,
    pedidoStatus boolean,
    tipoEntrega varchar (20) not null,
    total decimal(8,2)
);

