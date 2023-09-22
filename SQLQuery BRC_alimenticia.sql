-- CRIAÇÃO DE BANCO DE DADOS RECURSOS HUMANOS EMPRESA brc_ALIMENTICIA(VAREJO)

CREATE TABLE faixa_salarial (
  id INT PRIMARY KEY,
  faixa_min DECIMAL(10, 2),
  faixa_max DECIMAL(10, 2)
);


CREATE TABLE faixa_etaria (
  id INT PRIMARY KEY,
  faixa_min INT,
  faixa_max INT
);


CREATE TABLE nivel_hierarquico (
  id INT PRIMARY KEY,
  nome VARCHAR(50)
);

CREATE TABLE situacao (
  id INT PRIMARY KEY,
  nome VARCHAR(50)
);


CREATE TABLE sexo (
  id INT PRIMARY KEY,
  nome VARCHAR(10)
);

CREATE TABLE tipo_contratacao (
  id INT PRIMARY KEY,
  nome VARCHAR(50)
);


CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  cargo VARCHAR(50),
  data_contratacao DATE,
  data_demissao DATE,
  faixa_salarial_id INT,
  faixa_etaria_id INT,
  nivel_hierarquico_id INT,
  situacao_id INT,
  sexo_id INT,
  tipo_contratacao_id INT,
  FOREIGN KEY (faixa_salarial_id) REFERENCES faixa_salarial(id),
  FOREIGN KEY (faixa_etaria_id) REFERENCES faixa_etaria(id),
  FOREIGN KEY (nivel_hierarquico_id) REFERENCES nivel_hierarquico(id),
  FOREIGN KEY (situacao_id) REFERENCES situacao(id),
  FOREIGN KEY (sexo_id) REFERENCES sexo(id),
  FOREIGN KEY (tipo_contratacao_id) REFERENCES tipo_contratacao(id)
);


--dados funcionarios

insert into funcionarios (nome,cargo,data_contratacao,data_demissao,faixa_salarial_id,faixa_etaria_id,nivel_hierarquico_id,situacao_id,sexo_id,tipo_contratacao_id)
values

('João Silva', '35-45', 'Analista de Vendas', 'CLT', 'não', '2022-05-01', '2023-03-02', 'M', 'R$ 5.000-6.000', '2022-05-01'),
  ('Maria Santos', '25-35', 'Gerente de Recursos Humanos', 'CLT', 'sim', '2022-07-10', NULL, 'F', 'R$ 8.000-9.000', '2022-07-10'),
  ('Pedro Costa', '30-40', 'analista de TI', 'TEMPORÁRIO', 'sim', '2022-09-15', NULL, 'M', 'R$ 6.000-7.000', '2022-09-15'),
  ('Ana Rodrigues', '20-30', 'Estagiária de Marketing', 'CLT', 'sim', '2022-11-03', NULL, 'F', 'R$ 2.000-2.500', '2022-11-03'),
  ('Luiza Oliveira', '25-35', 'Analista Financeiro', 'PJ', 'sim', '2022-12-18', NULL, 'F', 'R$ 5.000-6.000', '2022-12-18'),
  ('Luiza Oliveira', '25-35', 'Analista Financeiro', 'PJ', 'sim', '2022-12-18', NULL, 'M', 'R$ 5.000-6.000', '2022-12-18'),
  ('Carlos Santos', '40-50', 'Gerente de Operações', 'CLT', 'não', '2023-02-05', '2023-04-04', 'F', 'R$ 10.000-12.000', '2023-02-05'),
  ('Marcela Lima', '30-40', 'Analista de Recursos Humanos', 'CLT', 'sim', '2023-03-20', NULL, 'M', 'R$ 4.000-5.000', '2023-03-20'),
  ('Rodrigo Fernandes', '35-45', 'Desenvolvedor de Software', 'TEMPORÁRIO', 'sim', '2023-05-08', NULL, 'F', 'R$ 6.000-7.000', '2023-05-08'),
  ('Patrícia Oliveira', '25-35', 'Analista de Marketing', 'CLT', 'sim', '2023-06-15', NULL, 'M', 'R$ 3.000-5.000', '2023-06-15'),
  ('André Almeida', '30-40', 'Analista Financeiro', 'PJ', 'sim', '2023-08-30', NULL, 'F', 'R$ 5.000-6.000', '2023-08-30'),
  ('João da Silva', '28-35', 'Gestor de vendas', 'CLT',	'sim',	'01/06/2022', NULL,	'M', 'R$ 4.500 - R$ 6.000',	'01/06/2022'),
 ('João da Silva', '28-35', 'Gestor de vendas', 'CLT', 'sim', '01/06/2022', NULL, 'M', 'R$ 4.500 - R$ 6.000', '01/06/2022'),
('Maria Santos', '22-27', 'Estagiária', 'CLT', 'sim', '01/06/2022', NULL, 'F', 'R$ 1.000 - R$ 1.500', '01/06/2022'),
('Felipe Souza', '36-40', 'Gerente de Vendas', 'PJ', 'sim', '01/06/2022', NULL, 'M', 'R$ 8.000 - R$ 10.000', '01/06/2022'),
('Ana Oliveira', '41-50', 'Analista Financeiro', 'CLT', 'sim', '15/06/2022', NULL, 'F', 'R$ 5.500 - R$ 7.000', '15/06/2022'),
('Luiz Costa', '28-35', 'Analista de Marketing', 'CLT', 'sim', '01/07/2022', NULL, 'M', 'R$ 4.500 - R$ 6.000', '01/07/2022'),
('Maria Santos', '25-35', 'Analista de RH', 'TEMPORÁRIO', 'sim', '03/02/2023', NULL, 'F', 'R$3.000-6.000', '03/02/2023'),
('Pedro Almeida', '45-55', 'Supervisor de Produção', 'PJ', 'sim', '15/03/2023', NULL, 'M', 'R$8.000-9.000', '15/03/2023'),
('Ana Oliveira', '30-40', 'Coordenadora de Marketing', 'PJ', 'sim', '01/04/2023', NULL, 'F', 'R$9.000-10.000', '01/04/2023'),
('André Santos', '25-35', 'Desenvolvedor de Software', 'TEMPORÁRIO', 'sim', '15/05/2023', NULL, 'M', 'R$6.000-7.000', '15/05/2023'),
('Luiza Pereira', '35-45', 'Analista Financeiro', 'CLT', 'sim', '01/06/2023', NULL, 'F', 'R$7.000-8.000', '01/06/2023'),
('Carlos Lima', '25-35', 'Estagiário', 'CLT', 'sim', '15/07/2023', NULL, 'M', 'R$1.000-1.500', '15/07/2023'),
('Laura Fernandes', '25-35', 'Analista de Vendas', 'TEMPORÁRIO', null,	'sim',	'01/08/2023',	'M',	'R$5.000-6.000',	'01/08/2023'),
('Lucas Costa', '35-45', 'Gerente de Projetos', 'PJ', 'sim', '15/09/2023', NULL, 'F', 'R$11.000-13.000', '15/09/2023'),
('João Silva', '35-40', 'Gerente de Vendas', 'CLT', 'sim', '02/01/2021', NULL, 'M', 'R$10.000-12.000', '02/01/2021'),
('Maria Santos', '25-30', 'Analista Financeiro', 'CLT', 'sim', '15/02/2021', NULL, 'F', 'R$5.000-6.000', '15/02/2021'),
('Pedro Costa', '40-45', 'engenheiro de produção', 'CLT', 'não', '10/03/2021', '15/07/2022', 'M', 'R$8.000-9.000', '10/03/2021'),
('Ana Oliveira', '30-35', 'analista de contas a pagar', 'CLT', 'não', '05/04/2021', '31/01/2022', 'F', 'R$7.000-8.000', '05/04/2021'),
('André Santos', '25-30', 'Estagiário', 'CLT', 'não', '01/05/2021', '30/05/2022', 'M', 'R$2.000-3.000', '01/05/2021'),
('Laura Fernandes', '35-40', 'Analista de Recursos Humanos', 'CLT', 'não', '10/05/2021', '31/08/2022', 'F', 'R$3.000-6.000', '10/05/2021'),
('João Silva', '35-40', 'Gerente de Vendas', 'TEMPORÁRIO', 'sim', '01/02/2020', NULL, 'M', 'R$10.000-12.000', '01/02/2020'),
('Maria Santos', '25-30', 'Analista Financeiro', 'CLT', 'sim', '15/03/2020', NULL, 'F', 'R$5.000-6.000', '15/03/2020'),
('Pedro Costa', '40-45', 'Engenheiro de produção', 'CLT', 'não', '10/04/2020', '15/11/2020', 'M', 'R$8.000-9.000', '10/04/2020'),
('Ana Oliveira', '30-35', 'Especialista de Marketing', 'PJ', 'sim', '20/07/2020', NULL, 'F', 'R$7.000-8.000', '20/07/2020'),
('André Santos', '25-30', 'Estagiário', 'CLT', 'não', '03/09/2020', '30/12/2020', 'M', 'R$2.000-3.000', '03/09/2020'),
('Laura Fernandes', '35-40', 'Analista de Recursos Humanos', 'CLT', 'sim', '12/11/2020', NULL, 'F', 'R$3.000-6.000', '12/11/2020'),
('João Silva', '40-45', 'Gerente de Vendas', 'CLT', 'sim', '01/02/2019', NULL, 'M', 'R$10.000-12.000', '01/02/2019'),
('Maria Santos', '25-30', 'Analista Financeiro', 'CLT', 'sim', '15/03/2019', NULL, 'F', 'R$5.000-6.000', '15/03/2019'),
('Pedro Costa', '30-35', 'Engenheiro de produção', 'CLT', 'sim', '10/04/2019', NULL, 'M', 'R$8.000-9.000', '10/04/2019'),
('Ana Oliveira', '35-40', 'Especialista de Marketing', 'PJ', 'sim', '20/07/2019', NULL, 'F', 'R$7.000-8.000', '20/07/2019'),
('André Santos', '22-25', 'Estagiário', 'CLT', 'não', '03/09/2019', '04/10/2021', 'M', 'R$2.000-3.000', '03/09/2019'),
('Laura Fernandes', '40-45', 'Analista de Recursos Humanos', 'PJ', 'sim', '12/11/2019', NULL, 'F', 'R$5.000-6.000', '12/11/2019'),
('Maria Santos', '27-30', 'Analista Financeiro', 'PJ', 'sim', '01/03/2019', NULL, 'F', 'R$5.000-6.000', '01/03/2019'),
('Pedro Costa', '38-40', 'Engenheiro de Produção', 'TEMPORÁRIO', 'sim', '05/06/2019', NULL, 'M', 'R$8.000-9.000', '05/06/2019'),
('Ana Oliveira', '28-30', 'Especialista de Marketing', 'PJ', 'sim', '20/08/2019', NULL, 'F', 'R$7.000-8.000', '20/08/2019'),
('André Santos', '23-26', 'Estagiário', 'CLT', 'não', '03/09/2019', '30/12/2019','M', 'R$2.000-3.000', '03/09/2019'),
('Laura Fernandes', '38-40', 'Analista de Recursos Humanos', 'PJ', 'sim', '12/11/2019', NULL, 'F', 'R$3.000-6.000', '12/11/2019'),
('João Silva', '40-45', 'Gerente de Vendas', 'PJ', 'sim', '01/02/2018', NULL, 'M', 'R$10.000-12.000', '01/02/2018'),
('Maria Santos', '26-30', 'Analista Financeiro', 'PJ', 'sim', '15/03/2018', NULL, 'F', 'R$5.000-6.000', '15/03/2018'),
('Pedro Costa', '37-40', 'Engenheiro de Produção', 'CLT', 'sim', '10/04/2018', NULL, 'M', 'R$8.000-9.000', '10/04/2018'),
('Ana Oliveira', '27-30', 'Especialista de Marketing', 'TEMPORÁRIO', 'sim', '20/07/2018', NULL, 'F', 'R$7.000-8.000', '20/07/2018'),
('André Santos', '22-25', 'Estagiário', 'TEMPORÁRIO', 'não', '03/09/2018', '30/12/2018', 'M', 'R$2.000-3.000', '03/09/2018'),
('Laura Fernandes', '37-40', 'Analista de Recursos Humanos', 'PJ', 'sim', '12/11/2018', NULL, 'F', 'R$3.000-6.000', '12/11/2018'),
('Tiago Santos', '35-37', 'Gerente de Operações', 'PJ', 'sim', '15/01/2018', NULL, 'M', 'R$12.000-15.000', '15/01/2018'),
('Juliana Souza', '25-27', 'Analista de Marketing', 'PJ', 'não', '01/03/2018', '05/06/2020', 'F', 'R$3.000-5.000', '01/03/2018'),
('José Oliveira', '45-48', 'Diretor Financeiro', 'CLT', 'sim', '05/06/2018', NULL, 'M', 'R$20.000-25.000', '05/06/2018'),
('Renata Silva', '28-30', 'Engenheira de Software', 'TEMPORÁRIO', 'sim', '20/08/2018', NULL, 'F', 'R$8.000-9.000', '20/08/2018'),
('Luís Fernandes', '33-35', 'Analista de Recursos Humanos', 'CLT',	'sim',	'12/11/2018', NULL,	'M',	'R$6.000-7.000',	'12/11/2018'),
('Marcos Oliveira', '21-23', 'Estagiário', 'TEMPORÁRIO', 'não', '03/12/2018', '30/12/2018', 'M', 'R$2.000-3.000', '03/12/2018'),
('Carla Santos', '27-29', 'Analista de Marketing', 'CLT', 'sim', '14/02/2017', NULL, 'F', 'R$3.000-5.000', '14/02/2017'),
('Pedro Silva', '42-44', 'Gerente de Operações', 'PJ', 'sim', '01/05/2017', NULL, 'M', 'R$8.000-9.000', '01/05/2017'),
('Ana Oliveira', '32-34', 'Engenheira de Produção', 'PJ', 'sim', '17/07/2017', NULL, 'F', 'R$8.000-9.000', '17/07/2017'),
('Rafaela Souza', '25-27', 'Analista de Recursos Humanos', 'PJ', 'sim', '02/10/2017', NULL, 'F', 'R$3.000-6.000', '02/10/2017'),
('Bruno Almeida', '35-37', 'Diretor Financeiro', 'PJ', 'sim', '20/11/2017', NULL, 'M', 'R$22.000-25.000', '20/11/2017'),
('Carolina Santos', '20-22', 'Estagiária', 'TEMPORÁRIO', 'não', '01/12/2017', '15/01/2018', 'F', 'R$1.500-2.500', '01/12/2017'),
('Lucas Silva', '32-35', 'Gerente de Vendas', 'TEMPORÁRIO', 'sim', '10/02/2017', NULL, 'M', 'R$10.000-12.000', '10/02/2017'),
('Rafaela Santos', '27-30', 'Analista Financeiro', 'CLT', 'sim', '15/03/2017', NULL, 'F', 'R$4.000-6.000', '15/03/2017'),
('Gabriela Costa', '35-40', 'Engenheira de Produção', 'CLT', 'sim', '20/06/2017', NULL, 'F', 'R$8.000-9.000', '20/06/2017'),
('André Oliveira', '24-26', 'Estagiário', 'TEMPORÁRIO', 'não', '05/08/2017', '30/12/2017', 'M', 'R$1.000-2.000', '05/08/2017'),
('Marina Fernandes', '38-40', 'Analista de Recursos Humanos', 'PJ', 'sim', '12/09/2017',  NULL,	'F',	'R$3.000-6.000',	'12/09/2017');


insert into tipo_contratacao(id, nome)
values
(1, 'CLT'),
       (2, 'CLT'),
       (3, 'TEMPORÁRIO'),
       (4, 'CLT'),
       (5, 'PJ'),
       (6, 'PJ'),
       (7, 'CLT'),
       (8, 'CLT'),
       (9, 'TEMPORÁRIO'),
       (10, 'CLT'),
       (11, 'PJ'),
       (12, 'CLT'),
       (13, 'CLT'),
       (14, 'PJ'),
	   (15, 'CLT'),
       (16, 'CLT'),
       (17, 'TEMPORÁRIO'),
       (18, 'PJ'),
       (19, 'PJ'),
       (20, 'TEMPORÁRIO'),
       (21, 'CLT'),
       (22, 'CLT'),
       (23, 'TEMPORÁRIO'),
       (24, 'PJ'),
       (25, 'CLT'),
       (26, 'CLT'),
       (27, 'CLT'),
       (28, 'CLT'),
       (29, 'CLT'),
       (30, 'CLT'),
       (31, 'TEMPORÁRIO'),
       (32, 'CLT'),
       (33, 'CLT'),
       (34, 'PJ'),
	   (35, 'CLT'),
       (36, 'CLT'),
       (37, 'CLT'),
       (38, 'CLT'),
       (39, 'CLT'),
       (40, 'PJ'),
       (41, 'CLT'),
       (42, 'PJ'),
       (43, 'PJ'),
       (44, 'TEMPORÁRIO'),
       (45, 'PJ'),
       (46, 'CLT'),
       (47, 'PJ'),
       (48, 'PJ'),
       (49, 'PJ'),
       (50, 'CLT'),
       (51, 'TEMPORÁRIO'),
       (52, 'TEMPORÁRIO'),
	   (53, 'PJ'),
       (54, 'PJ'),
       (55, 'PJ'),
       (56, 'CLT'),
       (57, 'TEMPORÁRIO'),
       (58, 'CLT'),
       (59, 'TEMPORÁRIO'),
       (60, 'CLT'),
       (61, 'PJ'),
       (62, 'PJ'),
       (63, 'PJ'),
       (64, 'PJ'),
       (65, 'TEMPORÁRIO'),
       (66, 'TEMPORÁRIO'),
       (67, 'CLT'),
	   (68, 'CLT'),
       (60, 'TEMPORÁRIO'),
       (70, 'PJ'),
	   (70, 'CLT');

