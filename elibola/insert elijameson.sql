insert into cliente(email,senha,nome,endereco,numero) 
values("eligordo@gmail.com","gordo3221","Gordinho da Silva Pinto","Iraque, Rua lourenço, 85","82 99232-5342"), 
("jose@gamil.com","jose123","jose da Silva","Tabuleiro, Rua ana, 55","82 99135-8342"),
("teo@gamil.com","teo123","teo dos santos","Tabuleiro, Rua fenando, 115","82 99232-5352");

insert into servidor(nome,Hdisponível,login,valorDoServico) 
values("TONHO","6:00", "TONHO@GAMIL.COM", 200.00),
("eli","7:00", "eli@GAMIL.COM", 150.00),
("sandro","6:00", "sandro@GAMIL.COM", 100.00);

insert into profissao(nome,cod) values("imformatica", 1),
("professor", 2),
("mecanico", 3);

insert into pagamento(nome,cod) values("pix", 1),
("dinheiro", 2),
("cartão", 3);

insert into clienteServidor(fk_cliente_email, fk_servidor_login) values("eligordo@gmail.com", "TONHO@GAMIL.COM");

insert into servidorPagamento(fk_pagamento_cod, fk_servidor_login) values(1, "TONHO@GAMIL.COM");

insert into servidorProfissao(fk_profissao_cod, fk_servidor_login) values(1, "TONHO@GAMIL.COM");