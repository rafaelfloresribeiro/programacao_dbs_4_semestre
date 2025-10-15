-- inserir.sql
USE Loja;

-- Inserir Estados
INSERT INTO Estado (ID, Nome, UF) VALUES
(1, 'Rio de Janeiro', 'AL'),
(2, 'Maranhão', 'RJ'),
(3, 'Santa Catarina', 'AC');

-- Inserir Municípios
INSERT INTO Municipio (ID, Estado_ID, Nome, CodIBGE) VALUES
(1, 2, 'Ponte Preta', 4651823),
(2, 2, 'Bonfinópolis', 2282336),
(3, 2, 'Gracho Cardoso', 3387926);

-- Inserir Clientes
INSERT INTO Cliente (ID, Nome, CPF, Celular, EndLogradouro, EndNumero, EndMunicipio, EndCEP, Municipio_ID) VALUES
(1, 'Giulia Veloso', '04717394569', '88942701559', 'Rodovia Sirineu Lessa', '430', 3, '50419537', 3),
(2, 'Felícia Quaresma', '09898893435', '68946604131', 'Rodovia Clarice', 's/n', 1, '93551594', 1),
(3, 'Bernardo das Neves', '05678752618', '34971961115', 'Travessa Carlos Eduardo', '931', 2, '84962384', 2);

-- Inserir Contas a Receber
INSERT INTO ContaReceber (ID, Cliente_ID, FaturaVendaID, DataConta, Valor, Situação) VALUES
(1, 1, 8544, '2025-10-18', 929.91, '1'),
(2, 3, 6071, '2025-11-04', 720.85, '2'),
(3, 3, 1621, '2025-10-22', 968.15, '1');