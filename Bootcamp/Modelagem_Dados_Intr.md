# Overview sobre modelagem de dados

## O que é modelagem de dados

Dentro do contexto de SGBD, a modelagem possui foco na descrição e relacionamento dos elementos que compõem a representação do contexto (mini-mundo, o que quero refletir com meus dados).

Esta relacionada a criação de um modelo, como acontece no desenvolvimento de software que se cria um protótipo ou em uma construção que é feito primeiro uma planta baixa.

A modelagem acontece para maior compreensão do sistema e conseguir otimizar o tempo de implementação do sistema.

A modelagem pode ser dividida em 3 grandes contextos, ao pensar em modela se pensa em representação, um modelo que vai servir de base para outros cenários.

**Schema:** Tem função de definir e criar uma estrutura de alto nível que depende do modelo relacional, ela fornece a estrutura que os dados terão quando forem persistido e facilita a compreensão do contexto. Existe duas formas de representar esse schema, sendo: Entidade-Relacionamento e UML (Unified Modeling Language), a UML caiu em desuso.

## O que é SQL?

É uma linguagem declarativa voltada para consulta de dados dentro do SGBD baseada na teoria de conjuntos usados para inserir informações dentro do SGBD.

Para acessar as informações através do SQL é possível usar o terminal de comando, uma interface gráfica como o phpMyAdmin ou através de programação se conectando ao banco de dados.

### MySQL Shell

- Conexão com o root.
    
    A abrir o MySQL Shell será necessário informar ao CMD do shell que você quer se conectar ao SQL e depois informar o root e a senha. Segue passo a passo de comando. 
    
    - \sql
    - \connect
    - \connect root@127.0.0.1 (127.0.0.1 é o IP configurado no root, disponível em: (C:\Windows\System32\drivers\etc) arquivo hosts)
    - Informe a senha do root.
- Criar tabela
    - CREATE DATABASE ‘nome_da_database’; (criar a data base para depois criar a tabela)
    - USE ‘nome database’ (para selecionar e usar uma database especifico na criação das tabelas)
    - CREATE TABLE ‘nome_da_tabela’ ( informe dentro o nome da coluna e seu tipo, exemplo abaixo)
        
        CREATE TABLE periodicos (
        id INT auto_increment PRIMARY KEY,
        nome_periodico VARCHAR(20),
        issn INT UNIQUE, (o comando UNIQUE se informa que a informação não se repita na tabela)
        id_editora INT
        );
        
- Incluir informação
    
    INSERT INTO ‘nome_tabela’ (nome_coluna_tabela01, nome_coluna_tabela02…) VALUES (’valor_para preencher_coluna01’, ’valor_para preencher_coluna02’…);
    
    EX: INSERT INTO editora (nome_editora, pais) VALUE ('IEEE', 'EUA'), ('DataScienceMagazine', 'EUA');
    
- Consultar informações
    
    SELECT * FROM nome_tabela;
    
    EX: SELECT * FROM editora;
    
- ALTER TABLE
    
    Comando usado na aula para interligar as tabelas periodicos e editora através de uma FOREING KEY. 
    
    ALTER TABLE artigos ADD CONSTRAINT fk_autor_artigo FOREIGN KEY (id_autor) REFERENCES autor(id);
    
    - Explicação do codigo
        
        ALTER TABLE (alterar tabela) 'tabela_que será_alterada' ADD CONSTRAINT (Qual a ação? será ADD de adicionar uma CONSTRAINT) 'nome_da_constraint'  'tipo_de_constraint' (nesse caso foi a FOREING KEY) (qual é a foreing key na tabela periodicos?) REFERENCES 'nome_tabela'(id)