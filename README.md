# Solução de Análise de Dados com API Pública
Este projeto foi desenvolvido com o objetivo de demonstrar habilidades em coletar, armazenar e processar dados a partir de uma API pública. Utilizando a linguagem Python, a solução abrange desde a extração de dados até a inserção em um banco de dados.

## Objetivo
O objetivo principal deste projeto é extrair dados da API pública Rede Social de Cidades, processar esses dados e armazená-los em um banco de dados PostgreSQL. Essa solução visa demonstrar competências em:

Interagir com APIs para coleta de dados;

Utilizar práticas eficientes de manipulação e processamento de dados em Python;

Armazenar dados coletados em um banco de dados relacional.

## Tecnologias Utilizadas
Python: Linguagem de programação escolhida para o desenvolvimento do projeto.

PostgreSQL: Sistema de gerenciamento de banco de dados relacional utilizado para armazenar os dados coletados.

Bibliotecas Python: requests para realizar requisições HTTP, psycopg2 para interação com o banco de dados PostgreSQL, e python-dotenv para gerenciamento de variáveis de ambiente.

## Estrutura do Projeto
O projeto inclui a seguinte estrutura de arquivos:

Redesocialcidades.ipynb: Jupyter Notebook contendo todo o código desenvolvido para a extração, processamento e inserção de dados.

.env: Arquivo (não incluído por questões de segurança) para armazenar variáveis de ambiente, como credenciais do banco de dados.

### Funcionalidades
Extração de Dados: Coleta de dados da API pública, com tratamento de exceções para garantir a robustez da solução.

Processamento de Dados: Manipulação dos dados coletados para adequá-los à estrutura do banco de dados.

Armazenamento de Dados: Inserção dos dados processados em um banco de dados PostgreSQL, utilizando operações de inserção em lote para eficiência.


## Como Usar
Clone o repositório para seu ambiente local.

Garanta que o PostgreSQL esteja instalado e configurado em seu sistema. Para isso use os comandos do arquivo queries.sql para criar as tabelas no banco.

Crie um arquivo .env na raiz do projeto com as variáveis de ambiente necessárias (DB_NAME, DB_USER, DB_PASSWORD, DB_HOST, DB_PORT).

Execute o Jupyter Notebook Redesocialcidades.ipynb para iniciar a extração, processamento e armazenamento dos dados.
