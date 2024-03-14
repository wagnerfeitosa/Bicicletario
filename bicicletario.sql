/*PROJETO BICICLETARIO*/

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(30) NOT NULL,
	SEXO ENUM('M','F') NOT NULL,
	CPF VARCHAR(11) NOT NULL,
	RUA VARCHAR(100) NOT NULL,
	BAIRRO VARCHAR(30) NOT NULL,
	CIDADE VARCHAR(30) NOT NULL,
	ESTADO CHAR(2) NOT NULL
);

CREATE TABLE TELEFONE(
	ID_TELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('COM','RES','CEL') NOT NULL,
	NUMERO VARCHAR(11) NOT NULL,
	ID_CLIENTE INT,
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE BICICLETA(
	ID_BICICLETA INT PRIMARY KEY AUTO_INCREMENT,
	MODELO VARCHAR(30),
	COR VARCHAR(30) ,
	ID_CLIENTE INT NOT NULL,
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE BICICLETARIO(
	NUMERO INT NOT NULL ,
	DISPINIVEL BOOLEAN NOT NULL,
	ENTRADA DATE,
	SAIDA DATE,
	ID_CLIENTE INT,
	ID_BICICLETA INT,
	FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE(IDCLIENTE),
	FOREIGN KEY (ID_BICICLETA) REFERENCES BICICLETA(ID_BICICLETA)
);



