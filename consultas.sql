-- consulta.sql
CREATE OR REPLACE VIEW view_contas_nao_pagas AS
SELECT 
    cr.ID AS 'ID_Conta',
    c.Nome AS 'Cliente_Nome',
    c.CPF AS 'Cliente_CPF',
    cr.DataConta AS 'Data_Vencimento',
    cr.Valor AS 'Valor'
FROM ContaReceber cr
INNER JOIN Cliente c ON cr.Cliente_ID = c.ID
WHERE cr.Situação = '1';