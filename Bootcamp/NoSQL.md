# NoSQL

## O que é o NoSQL

O termo 'NoSQL' se refere a tipos não relacionais de bancos de dados, e esses bancos de dados armazenam dados em um formato diferente das tabelas relacionais. No entanto, os bancos de dados NoSQL podem ser consultados usando APIs de linguagem idiomática, linguagens de consulta estruturadas declarativas e linguagens de consulta por exemplo, razão pela qual também são chamados de bancos de dados "não apenas SQL".

## Tipo de NoSQL

### **Bancos de dados colunares**

Banco de dados colunares possuem o armazenamento orientado a colunas, o que influencia significativamente na sua performance, já que diminuem a quantidade de dados que você precisará carregar no disco.

EX: **Cassandra**

### **Bancos de dados orientado a documentos**

Também conhecido como armazenamento por documentos, os bancos de dados orientados a documentos são um modelo de banco de dados projetado para gerenciar, armazenar e recuperar informações orientadas a documentos, não carecendo de colunas pré-montadas, como vimos acima no Cassandra, e é um modelo eficiente para o trabalho com dados não estruturados (que não podem ser organizados em tabelas).

EX: **MongoDB**

### **Bancos de dados orientados a grafos**

Com a armazenagem de documentos em forma de grafos, no banco de dados orientado a grafos os dados são predispostos no formato de arcos conectados por arestas.

EX: **Neo4j**

### **Banco de dados do tipo chave-valor**

Bastante simples, o banco de dados do tipo chave-valor é formado apenas por pares de chaves com valores associados, permitindo obter os valores quando uma consulta é realizada a uma chave.

EX: **Redis**