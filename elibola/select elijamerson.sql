# Saber os servidores que estão nesse horario disponivel 
select * from servidor where Hdisponível = "6:00";

# Filtrar a forma de pagamento para saber qual servidor aceita esse tipo de pagamento
select * from servidorPagamento where fk_pagamento_cod = "1";

# Filtrar o servidor que tem essa profissão
select * from profissao where nome = "professor";

# ele vai contar quantos cliente esse servidor TONHO@GAMIL.COM tem
select COUNT(fk_cliente_email) from clienteServidor where fk_servidor_login = "TONHO@GAMIL.COM";

# Vai pegar o servidor que recebe o valor menor que 200.00 
select * from servidor where valorDoServico <= 200.00;

# vai pegar todos os clientes naquele bairro 
select * from cliente  where endereco like "Tabuleiro%";

# Ordenando os valores de cada sevidor do maior para o menor
select * from servidor ORDER BY valorDoServico desc;

