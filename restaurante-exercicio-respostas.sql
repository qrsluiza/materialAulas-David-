# Liste os nomes dos clientes que fizeram pedidos, o nome do restaurante onde o pedido foi feito e o valor total do pedido.
SELECT u.nome AS cliente, r.nome AS restaurante, p.valor_total AS valor
FROM usuario u
INNER JOIN pedido p ON  u.id = p.FK_usuario_id 
INNER JOIN restaurante r ON r.id = p.FK_restaurante_id;

# Liste os nomes dos pratos e os restaurantes que os servem, junto com o preço de cada prato.
SELECT p.nome , r.nome AS restaurante, p.preco AS valor
FROM prato p
INNER JOIN restaurante r ON r.id = p. FK_restaurante_id; 

# Encontre todos os pedidos feitos em um determinado restaurante (por exemplo, "Restaurante A") e liste os nomes dos clientes e o valor total de cada pedido.
SELECT u.nome AS cliente, r.nome AS restaurante, p.valor_total AS valor
FROM usuario u
INNER JOIN pedido p ON u.id = p.FK_usuario_id
INNER JOIN restaurante r ON r.id = p.Fk_restaurante_id
WHERE r.nome = "Restaurante A";

# Liste os pratos pedidos por cada cliente, a quantidade pedida e o nome do restaurante que serviu o prato.
SELECT u.nome, p.nome, ip.quantidade AS quantidade, r.nome AS restaurante
FROM prato p
INNER JOIN itempedido ip ON p.id = ip.FK_prato_id
INNER JOIN pedido e ON e.id = ip.FK_pedido_id
INNER JOIN restaurante r ON r.id = e.FK_restaurante_id
INNER JOIN usuario u ON u.id = e.FK_usuario_id;

# Liste todos os pratos que estão no cardápio de um determinado restaurante, juntamente com o nome do restaurante e o período de validade do cardápio.
SELECT c.nome AS Cardapio, p.nome AS prato, r.nome AS Restaurante, c.data_fim AS Validade
FROM prato p
INNER JOIN cardapio_prato cp ON p.id = cp.FK_prato_id
INNER JOIN cardapio c ON cp.FK_cardapio_id = c.id
INNER JOIN restaurante r ON r.id = c.FK_restaurante_id
WHERE r.nome = "Restaurante C";

# Encontre os clientes que já fizeram mais de 3 pedidos em qualquer restaurante. Liste o nome do cliente e a quantidade total de pedidos que ele fez.
SELECT u.nome, COUNT(p.id) AS quantidade
FROM usuario u
INNER JOIN pedido p ON u.id = p.FK_usuario_id
GROUP BY u.id HAVING COUNT(p.id) > 3;

# Liste os clientes que fizeram pedidos em mais de um restaurante, mostrando o nome do cliente e a quantidade de restaurantes diferentes em que ele fez pedidos.
SELECT u.nome AS clientes, COUNT(p.FK_restaurante_id) AS pedidos
FROM usuario u
INNER JOIN pedido p ON u.id = p.FK_usuario_id
GROUP BY u.id HAVING COUNT(p.FK_restaurante_id) > 1;

# Liste os restaurantes e o número total de pratos que cada restaurante possui em seus cardápios.
SELECT r.nome AS Restaurante, COUNT(cp.FK_prato_id) AS quantidade
FROM restaurante r
INNER JOIN cardapio c ON r.id = c.FK_restaurante_id
INNER JOIN cardapio_prato cp ON c.id = cp.FK_cardapio_id
GROUP BY r.id;

# Liste os pratos que pertencem a restaurantes localizados em uma cidade específica (por exemplo, "São Paulo"), mostrando o nome do restaurante, o nome do prato e o preço.
SELECT r.nome AS restaurante, p.nome AS pratos, p.preco AS preco
FROM restaurante r
INNER JOIN prato p ON r.id = p.FK_restaurante_id
WHERE r.cidade = "Belo Horizonte";

# Liste os clientes que fizeram pedidos em restaurantes localizados em cidades diferentes da cidade onde moram, mostrando o nome do cliente, o nome do restaurante e a cidade do restaurante.
SELECT u.nome, r.nome, r.cidade
FROM usuario u
INNER JOIN pedido p ON u.id = p.FK_usuario_id
INNER JOIN restaurante r ON r.id = p.FK_restaurante_id
WHERE u.cidade != r.cidade;

# DESAFIO
# Encontre os clientes que pediram o mesmo prato em diferentes restaurantes, listando o nome do cliente, o nome do prato e os restaurantes onde o prato foi pedido.


