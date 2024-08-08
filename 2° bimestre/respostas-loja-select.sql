SELECT * FROM vendedor
WHERE faixa_comissao = "B";

SELECT * FROM cliente
where estado = "AL";

SELECT * FROM itempedido
where FK_cod_produto = 4;

SELECT * FROM pedido
where prazo_entrega > 12;

SELECT * FROM itempedido
where FK_num_pedido = 3;

SELECT * FROM vendedor
order by salario_fixo;