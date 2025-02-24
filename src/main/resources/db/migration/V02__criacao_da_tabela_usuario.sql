CREATE TABLE usuario (
	id BIGINT(20) AUTO_INCREMENT,
	id_endereco BIGINT,
	nome VARCHAR(50) NOT NULL,
	sobrenome VARCHAR(100) NOT NULL,
	sexo CHAR(1) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
    foto BLOB,
	email VARCHAR(50),
	senha VARCHAR(150),
	PRIMARY KEY (id),
	FOREIGN KEY (id_endereco) REFERENCES endereco(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE permissao (
	id BIGINT(20) PRIMARY KEY,
	descricao VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE usuario_permissao (
	id_usuario BIGINT(20) NOT NULL,
	id_permissao BIGINT(20) NOT NULL,
	PRIMARY KEY (id_usuario, id_permissao),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id),
	FOREIGN KEY (id_permissao) REFERENCES permissao(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usuario (id, nome, sobrenome, sexo, cpf, email, senha) values (2, 'Administrador', '1', 'M', '23115115123', 'admin', '$2a$10$v6INs3LnW3SPyK6CXSNAS.Fm6skO0K99dRRGPB68Wdkpcm.Xp0ohq');