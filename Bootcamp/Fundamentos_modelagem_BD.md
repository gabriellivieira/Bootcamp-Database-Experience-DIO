## Álgebra Relacional

**A lógica do predicado:** O predicado é a parte da oração que contém o verbo e que traz informações sobre o sujeito, então temos uma informação, um critério relacionado ao sujeito que será a base para consultas mais complexas usando os comandos Having e Where, por exemplo.

O modelo relacional é baseado na álgebra relacional que é uma linguagem formal para consulta e extração de dados, o SQL. São conjuntos de operações constituídas por operações da teoria de conjuntos e da parte de modelos relacionais. Esse conjunto de funções da para a base para as operações disponíveis para fazer consultas avanças usando as queries.

**Operações SQL na Álgebra Relacional**

Algumas operações mais usados no SQL: ANY, MAX, MIN, SUM, COUNT, AVG.

Com esses e outros comandos se cria ações que são enviadas ao SGBD que vai compilar esses informações e retornar o reflexo da tabela.

**Etapas de criação do BD**

- Projeto Conceitual
- Projeto Lógico
- Projeto Físico
- Validações
- Produção
- Manutenção

![download (2).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/c75ce98d-7cca-43d1-81c3-1ff667a37165/download_%282%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220923%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220923T005342Z&X-Amz-Expires=86400&X-Amz-Signature=50e775d01cca0e4954bae421efc0257cbe637f862f310091d0e5fbf9d49b633b&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%282%29.jpg%22&x-id=GetObject)

## Como implementar um BD?

Para criar é preciso entender o contexto e requisitos, o que será modelo e o que precisa ser representado no modelo para estar coerente com as informações que serão persistidos. Se cria uma narrativa sobre o contexto e o motivo para a criação do banco. Qual será o perfil de acesso?

Existem diversos cenários possível para a criação de um BD, como Colaboradores e suas informações, E-commerce, Universidade, Produção, Banco (financeiro), Farmácia, Bibliotecas.

Se inicia pelo modelo de alto nível (conceitual, o que vai ter no BD?), Lógico (Estrutura, como o relacional, Como será feito a estrura?), Físico (Se define o SGBS e Schema, implementa tudo que foi modelado).

## Projeto Conceitual

Como criar um modelo?

Existe duas maneiras mais comuns de representar algo, que pode ser pela linguagem textual (narrativa) ou gráfica (visual).

 Sendo assim, o primeiro passo é a coleta de dados do clinte e a análise onde se verificado se existe base para criar o que o cliente solicitou. 

**1ª Passo:** Coleta de Dados, Análise, Requisitos (Funcionais que é o que ele executa e Não Funcionais que é segurança e desempenho), perguntas que devem ser respondidas, visões. 

**2ª Passos:** Cria o esquema conceitual, criação do desing conceitual (DER)

## Projeto Lógico

Na descrição do modelo conceitual Em um modelo relacional, temos as tabelas que são as entidades, elas fornecem a estrutura que define a organização dos dados, estrutura que será determinado pelo SGBD.

Então é feito o mapeamento do projeto conceitual para a criação do schema do BD.  As caracteristicas do SGBD influenciam no schema conceitual.

![download (4.jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/4d7a1380-f66b-45bb-8244-5f08643d2807/download_%284.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220923%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220923T005423Z&X-Amz-Expires=86400&X-Amz-Signature=418e606925df31edead0cc37f9c28b18a144d58309378d4b9f1da429998f3388&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%284.jpg%22&x-id=GetObject)

## Projeto Físico

Esta diretamente ligado ao SGBD, ele descreve o projeto lógico, define como será implementado o SGBD, é ele vai definir diversos parâmetros fisicos como estrutura de Indices, Organizações e de Caminhos de Arquivos, Segurança e Performance.

![download (5.jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/103a6d63-efa7-4270-a171-3ffbb388159d/download_%285.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220923%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220923T005440Z&X-Amz-Expires=86400&X-Amz-Signature=9ee1a6f5934c3dbd5d3a06b9753a0b237d4dcd25d3718c5f3882f139ac38f6a9&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%285.jpg%22&x-id=GetObject)

![download (6.jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/d1eb8284-86f4-447b-8046-51a14a97f56a/download_%286.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220923%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220923T005452Z&X-Amz-Expires=86400&X-Amz-Signature=9aa1f9d190da2119faaa0e75610b0103c141f8ccdff48085d620c9b3baa64379&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%286.jpg%22&x-id=GetObject)