# Cenário na Área de Banco de Dados

É um conjunto de dados que transmite informação, qual entre esses dados existe um relacionamento para o entendimento dos dados e coleta das informações, sendo vantajoso pela persistência e confiabilidade dos dados.

Dados são efetivamente um fato, como um diamante bruto que precisa ser lapidado. Com os dados é necessário organizar e limpar para tirar a informação.

---

## SGBD

SGBD (Sistema de Gerenciamento de Banco de Dados) ou DBMS (Database Manager System) é um software com o propósito de gerenciar os dados que estão sendo persistido / gravados.

A ideia de SGBD surgiu em 1960 pela IBM com o intuito de diminuir custos com pessoal e a ideal do modelo relacional em 1970.

Ele é um software modular composto por outros softwares insite que auxilia nas tarefas, como o armazenamento dos dados, consultas etc.

### **Fases do SGBD**

- **Definição:** Tipo de dados, Estrutura, Contranis;
- **Construção:** Inserção dos dados, persistência dos dados.
- **Manipulação:** *Query*, recuperação de informações, geração de relatórios;
- **Compartilhamento:** SGBD cria regras para gerenciar acessos simultâneos de diferentes grupos a um determinado dado. Se cria/executa uma série de ações que são agregados ao conjunto de comandos de uma transação, que é submetido a base onde o SGBD retorna os dados consultados, Envio da Query(solicitação) e retorno dos dados.

**Outras características:** Pode ser utilizado por um longo prazo sem o comprometimento da base; proteção do mal funcionamento, podendo usar replicas e regras para contornar mal funcionamento do sistema e usar um log para retornar o estado do BD; Proteção de acesso através do controle desses.

> **Metadados:** Informações que fornecem uma descrição concisa dos dados contidos no BD, são dados sobre dados, que permite que dados inteligíveis para um computador possa ser entendido, assim os metadados facilitam o entendimento dos relacionamentos e a utilidade das informações dos dados.
> 

### Gerenciamento de dados

Para conseguir gerenciar dados é necessário de uma estrutura as diretrizes que vão reger a estrutura que esta contido em um modelo. 

**Modelo baseado em sistemas de arquivos:**

- Modelo hierárquico: Sistema de gerenciamento voltado para a informação onde se busca o registro ao invés de uma estrutura geral. Esse tipo de modelo agrega complexidade e lentidão nas buscas das buscas.
- **Modelo de rede:** Links que são os ponteiros entre os nós que formam um grafo, o principal problema são que a pessoal que irá utilizar esse modelo precisa conhecer a estrutura física no banco.
- **Modelo relacional:** Baseado na teoria de conjuntos, ou seja, quando é feito uma consulta é feito uma operação que pode abstrair a estrutura de cada entidade que possui um atributo específico a ela.

**Modelo Relacional**

Criado por Ted Cobb 1970, com base em cálculo e álgebra relacional e com a teoria de conjuntos pode trazer o modelo de forma generalista conseguindo trazer um nível alto de transparência para o usuário. Também definindo o SQL.

No SQL é feito a consulta de uma operação que pode abstrair a estrutura de cada entidade que possui um atributo específico a ela, pois foi criado baseado na teoria de conjuntos.

Dentro desse ambiente existem dois tipos de usuários:

- **Administrador do BD (DBA):** Determina as regras que vão fornecer as diretivas do contexto, determina as tabelas e entidades e seus atributos, é responsável pela manipulação e eventuais mudanças no schema. LDD ou DDL são os comandos usados por esse use. O Desing do BD auxilia na modelagem de alto nível.
- **User convencional:** Ele alterar e extrai informações usando uma linguagem de manipulação dos dados ao invez de definição, ele recupera informação através de consultas e updates dos dados.

> **Storage Buffer**  - É preciso que tenha um gerenciamento do armazenamento da memórias logicas (Storage Buffer) e também um gerenciador de buffer, mesmo que essa situação seja vista pelo sistema operacional, pela SGBD ter uma grande importância em termo de performance ele possui um mecanismo especifico para esse processo de trazer a memória do HD para a RAM.
> 

**Cenários de integração entre SGBD’s**

Em cenários de integração dos diferentes SGBD que podem ser usados pela empresa, pode ser usado mediadores (middleware) ou repositórios centralizados (Data warehouses).

- EX: Esquema relacionado a um sistema de integração de um Portal de Espécies e Ocorrências.
    
    É possível ver que existem uma série de fontes de informações diferentes que precisam ser integradas no qual esta associado a esse sistema integrado os Metadados que vão definir a estrutura. É preciso processar isso tudo para poder prover determinado serviço, neste caso o serviço do Portal de Espécies e Ocorrências.

    ![download.jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/eb869d81-58c6-476e-875d-6017f4beb30f/download.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220908%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220908T004246Z&X-Amz-Expires=86400&X-Amz-Signature=d3ac4d136f918ba499ed37d81cca9b36035e46de5091f93ca9bb0e43e0040087&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download.jpg%22&x-id=GetObject)

**SGBD mais usados pelo mercado:**

- **Oracle:** Foi o pioneiro e foi projetado para demandas maiores.
- **MySQL:** Mais popular e de código aberto. Muito utilizado em aplicações web por ser mais leve. A Oracle mantem essa SGBD também.
- **SQLServer:** Mais sofiscada que possui ferramentas para integrações com BI.
- **Redis:** No SQL orientado a chave valor. leituras são extremamente rápidas por rodar 100% na RAM.
- **ElasticSearch:** Mecanismo de busca distribuida. Usado em análise de logs principalmente. NoSQL
- **Microsoft Access:**
- **Cassandra:** Voltado em um ambiente de gerenciamento de larga escala.

**O que enfluencia na escolha de uma SGBD**

- Tempo de mercado
- Documentação
- Robustez
- Confiabilidade
- Segurança
- Multiplataforma

**Carreiras voltados para dados**

Esse novo cenário de profissões se preocupam a usar os dados para a tomada de decisões dentro de uma empresa. 

- **Engenheiro:** Focado no desenho e construção da solução, onde ele vai manter a persistência dos dados para serem consumidos pelos cientistas e analistas. Aqui existe a extração de dados heterogêneos. EX: Como manter o fluxo de dados dentro da rede da empresa de maneira mais eficiente? Pode ser usado um sistema de mensageria.
- **Cientista:** Tem como principal skil a modelagem, reconhecimento de padrões e predição. Ele busca responder algumas perguntas atrelados ao contexto do negócio. Buscando insights através de técnicas de modelagem.
- **Analista:** Esta preocupado na representação visual dos dados, na criação de dashboards. Busca entender o comportamento do negócio a partir dos dados. Realiza o diagnóstico, identifica possíveis motivos para comportamentos e verifica métricas. Muito ligado as regras de negócio. Gera os relatórios para que os stakeholders possam tomar decisões.

> **Data-Driven** - Voltado para análise de dados, extração e limpeza afim de entender a estrutura dos dados para a análise. Usado por áreas estratégicas como gerenciamento, marketing por exemplo. Tem o foco no consumidor.
> 

**Modelo NoSQL**

NoSQL significa “Not only SQL”, criado para preencher o gap deixado pelos bancos relacionais, neste conceito pode ser usado outros tipos de bancos além do SQL em uma mesma estrutura. Esse modelo tem alta performance e alto poder computacional, interessante em cenários pontuais como a Black Friday onde a demanda de dados é extremamente alta.

**Tipos de NoSQL e exemplos**

- **Documentos:** MongoDB
- **Wide-Columns:** Cassandra
- **Key-Value:** Redis
- **Grafos:** Neo4j
- **Orientação a Objeto:** DB4objects

## **Paradigmas, HPC e BigData.**

- Slides professora ****Juliana Mascarenhas.****

![download (2).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/505c75b6-aff3-4c99-bca6-b1b7bc20b1f5/download_%282%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220908%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220908T004354Z&X-Amz-Expires=86400&X-Amz-Signature=ccc2dedb22cd66ea66c872f8df16661abe84b4cbc8e5aaf5852d56537f37ce75&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%282%29.jpg%22&x-id=GetObject)

![download (1).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/f399b8c4-361d-4cb5-96bc-1e415915ceea/download_%281%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220908%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220908T004415Z&X-Amz-Expires=86400&X-Amz-Signature=17dd2be2028bbb1aefcdc22cea3e3831e4c63bd664ec3c5c24f7a5085cade75b&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%281%29.jpg%22&x-id=GetObject)

![download (3).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6b66cfb7-9bbb-4220-8053-524ee10db851/download_%283%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220908%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220908T004431Z&X-Amz-Expires=86400&X-Amz-Signature=dc4aa447aafa4ed173b29bc0e6ab11e6b6ec2cfa5fc95e7880e47a9be3d6d044&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%283%29.jpg%22&x-id=GetObject)

![download (4).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/6b66cfb7-9bbb-4220-8053-524ee10db851/download_%283%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220908%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220908T004431Z&X-Amz-Expires=86400&X-Amz-Signature=dc4aa447aafa4ed173b29bc0e6ab11e6b6ec2cfa5fc95e7880e47a9be3d6d044&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%283%29.jpg%22&x-id=GetObject)

![download (5).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/8407317c-8fb7-47a4-bc28-5479c7a564ae/download_%285%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220908%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220908T004608Z&X-Amz-Expires=86400&X-Amz-Signature=b4177926fa14e9c0eca0c2c3994d9ba588c7ec5554c99a3a4928fe2081a23750&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%285%29.jpg%22&x-id=GetObject)
