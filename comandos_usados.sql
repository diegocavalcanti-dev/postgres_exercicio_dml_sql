-- Inserir dados nas tabelas
INSERT INTO costumer (full_name, phone_number) 
VALUES 
('Davi Souza', '(11) 99999-9999'),
('Daniel Silva', '(21) 98888-8888'),
('Caio Oliveira', '(31) 97777-7777');

INSERT INTO product (product_name, price, stock_quantity) 
VALUES 
('Camiseta', 49.90, 50),
('Notebook Dell i7', 3499.00, 30),
('Tênis Nike Air Max', 299.90, 100);

INSERT INTO inventory (product_id, quantity) 
VALUES 
(1, 50),  -- Camiseta
(2, 30),  -- Notebook Dell i7
(3, 100); -- Tênis Nike Air Max

-- Consultas SELECT
SELECT * FROM costumer;
SELECT * FROM product;
SELECT * FROM inventory;

-- Atualizações
UPDATE product
SET price = 3999.00
WHERE product_name = 'Notebook Dell i7';

UPDATE inventory
SET quantity = 120
WHERE product_id = 3;

------------- extração do script
-- pg_dump -U postgres -d ebac_2 -f script_backup.sql