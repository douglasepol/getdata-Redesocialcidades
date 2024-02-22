
-- CREATE dados_cidade
/*
CREATE TABLE dados_cidade (
    user_goal TEXT,
    state_name VARCHAR(255),
    axis_aux1 TEXT,
    region_id INTEGER,
    formula VARCHAR(255),
    axis_aux2 TEXT,
    axis_aux3 TEXT,
    city_name VARCHAR(255),
    axis_name VARCHAR(255),
    formula_human TEXT,
    institute_id INTEGER,
    period VARCHAR(255),
    region_dl TEXT,
    region_name TEXT,
    value VARCHAR(255),
    variation_order TEXT,
    observations TEXT
);
*/

-- CREATE cidades
/*
CREATE TABLE cidades (
    id SERIAL PRIMARY KEY,
    longitude NUMERIC,
    name_uri TEXT,
    name TEXT,
    uf CHAR(2),
    pais CHAR(2),
    summary TEXT,
    latitude NUMERIC
);
*/


-- CREATE demographic_data
/*
CREATE TABLE demographic_data (
    source TEXT NULL,
    measurement_unit_name VARCHAR(255),
    valid_from DATE,
    cognomen VARCHAR(255),
    city_name VARCHAR(100),
    variable_id INTEGER,
    city_id INTEGER,
    is_basic TEXT,
    institute_id INTEGER,
    period VARCHAR(50),
    exp_source TEXT,
    value NUMERIC,
    name VARCHAR(255),
    observations TEXT,
    updated_at TIMESTAMP WITHOUT TIME ZONE,
    type VARCHAR(50),
    user_id INTEGER
);
*/




/*
TRUNCATE demographic_data;
TRUNCATE cidades;
TRUNCATE dados_cidade;
*/

SELECT * FROM cidades 


-- Exemplo de Insert
INSERT INTO cidades (longitude, name_uri, name, uf, pais, summary, latitude)
	VALUES (-46.633309, 'sao-paulo', 'São Paulo', 'SP', 'BR', 'Capital do estado de São Paulo.', -23.550520);


--Exemplo de Update
UPDATE cidades SET summary = 'Maior cidade da América Latina.' WHERE name = 'São Paulo';



-- Nome e UF das cidades brasileiras disponíveis pela API
SELECT name, uf 
FROM cidades 
WHERE pais ~* 'BR';



-- Cidades e a quantidade de registros 
SELECT c.name, COUNT(dd.city_name)
FROM cidades c
LEFT JOIN demographic_data dd ON c.name = dd.city_name
GROUP BY c.name;



-- Últimas observações demográficas de cada cidade
WITH tb_latest AS (
    SELECT city_name, MAX(updated_at) AS last_update
    FROM demographic_data
    GROUP BY city_name
),
last_data AS (
    SELECT dd.*
    FROM demographic_data dd
    JOIN tb_latest  ON dd.city_name = tb_latest.city_name AND dd.updated_at = tb_latest.last_update
)
SELECT *
FROM last_data
ORDER BY city_name;




