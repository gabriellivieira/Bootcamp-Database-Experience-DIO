# ****Arquitetura de Banco de Dados****

## Modelos

Esta associado na capacidade de abstração, que é trazer algo especifico do contexto de forma mais abrangente/genénico. Focar no que é essencial. Ao pensar no modelo de SGBD é necessário pensar que dentro do modelo de dados é preciso pensar nos relacionamentos dos objetos que compoem esses relacionamentos, definindo a estrutura, as caracteristicas, as contrains e as operações relacionadas. Assim, se define primeiro um modelo geral e depois se pensa nas restrições. 

**Classificação dos modelos, esta atrelado a estrutura, assim temos 3 modelos**.

- Modelo de dados conceitual de alto nível atrelado ao modelo de entidade-relacionamento.
    
    Visa somente representar o modelo onde os dados estão inseridos, visa trazer de forma simples para quem é leigo. O modelo esta relacionado a entidades, atributos e relacionamento.
    
- Modelo de dados de implentação se define atraves do SQL a estrutura do BD.
    
    Se define as constrains através da linguagem SQL no qual se consegue definir as operações. Relação de schema relacional.
    
- Modelo de dados físico, de baixo nível relacionado a implementação do sistemas.
    
     Atrelado a especificidade do sistema no qual é feito por um especialista. Definindo por exemplo, como as informações serão persistidas, criação dos indices, qual será a estrutura de dados que será utilizada.
    

Esses modelos são modelos de dados auto-descritivos, facilitando a definição e descrição do mini-mundo e estrutura do dado.

## Esquemas e Instâncias

O schema é uma descrição do banco, como um esqueleto. ele descreve o que tem de objetos e atributos e como eles se relacionam. Essa descrição é representada através de um diagrama, com foco em definir a estrutura dos dados.  Dentro do schema as entidades/objetos são denomidados Construct. 

> No schema terá somente o que compom, quais são as constructs.
> 

**Estado do banco de dados**

- A cada updade ou delete existe uma alteração do estado do banco. O Schema é equivalente ao estado inicial do dados, que é vazio.
- A cada atualização o estado é modificado.

**Meta dados**

- Dentro dos meta dados temos a descrição do esquena (uma foto do estado atual do banco), as constructs e as constrains(regras).

## Arquitetura three-Schema

Esse tipo de arquitetura possui o papel de definir qual é a função de cada schema dentro do SGBD, porem ela não é suportada pelo SGBD e por isso é necessário uma extensão. Nesse tipo de arquitetura, o objetivo é promover um isolamento de forma que uma modificação em um determinado schema não influencie o schema subsequente, tornando a manutenção do SGBD mais otimizada.

São três caracteriticas que dão suporte a essa arquitetura: isolamento data/program, catálogo, views que vão determinar os schemas.

---

 

## Linguagem, Interface e ambiente de SGBD’s

### Linguagem e Interfaces

Categorias do usuário

- Para consumir os dados e inserir é necessário uma linguagem bem definida, no caso do modelo relacional é a SQL.
- Para definir as informações do banco de dados, existe os camandos caracterizados como Data Definition Languagem - DDL (linguagem de definição de dados). DDL e DML são SQL usadas tanto pelo desing como o DBA mas que com elas é possível definir a que tipo de linguagem SQL cada comando terá.
- Também existe em alguns SGBD’s uma diferença entre a linguagem do desing e do DBA, onde o SDL tratara de persistência fisica para o armazenamento de dados, e a VDL especifica para views ligado ao desing.
- DDL: linguagem de definição de dados, definição schema.
- DML: com o intuito de que todo dados inserido será consumido por alguem. Possui dois tipos, a Não procedural (alto nível) onde as operações de banco são executadas por tempo e uma serie de dados por ser inclusas de uma só vez. E a Procedural (baixo nível) aqui é necessário criar uma aplicação separada para dar suporte a essa abordagem.

### Interfases de manipução dos dados

Essas interfaces estão relacionados aos stakerholders do SGBD’s, e possuem relação com as manipulações dentro do SGBD’s.

- **Web Clientes**: Baseado em listas, tem a caracteristicas onde as requisições e estruturas são através de menus.
- **App Mobile**: Acessar os dados através de um menu limitado de uma app.
- **Forms:** Interface para novos dados.
- **GUI**: Grafical use interface, disposta em forma de diagrama, no qual a Query esta manipulando o banco de dados.
- **NLI**: Natural linguage interface, onde existe um interprete/agente usando IA que acessa os dados para retornar as informações do dado. EX: Alexa quando fazemos um pedido a ela.
- **Pesquisa Keyword**: Pesquisas por palavras chaves, onde se verifica se vai ter um macht entre a palavra parcial ao total.
- **Speech input/output**: A solicitação e retorno feito por speech, também através da linguagem natual usando um agente intermediário. EX: Quando é usado o microfone para procurar algo no google.
- Interfaces
    
    **Naive**: Associado as operações repetitivas que podem acontecer dentro de um contexto.
    
    **DBA:** Perfil especialista. Possui comandos com nível de privilégio, que define toda a estrutura do banco, segurança, toda a estrutura e desempenho do sistema.
    

### Ferramentas/Utilities - Gerenciamento

- **Loading**: Reformatar os dados, carregar os dados, puxar do HD as informações para que os dados sejam reordenados e posteriormente carregados.
- **Backup**: Quando realizado conseguimos ter mais resiliência com relação as falhas, os backup são formas seguras de conseguir manter a rastreabilidade das informações sem perder dados sensiveis.
- **Reorganização do storage**: Reorganizar o armazenamento do BD e tornar ele mais performatico, é possível difinir os sistemas distribuídos para armazenamento dos dados.
- **Monitoramento**: É possível monitorar os SGBD’s através de alguns sistemas e tirar estatísticas e decisões do BD, sendo possível também usar queryes que possam retornar o estado do BD (estado das informações que estão contidas).

**Ferramentas e Aplicações**

- **Data dictionary system**: Armazena informações de decisão de desing, padrões de utilização, descrição de aplicações.
- **Software de comunicação**: Terminal, workstations, PC’s.
- **Designer**: DB Designer para criar os projetos e modelos conceituais de alto nível.

## Arquitetura cliente-servidor

**Arquitetura física-centralizada**

Modelo antigo quando a tecnologia era muito cara. O acesso ao banco era por terminal via rede para pegar as informações do SGBD. Aqui os recursos são centralizados em uma única máquina onde esta rodando todos os programas.

Com a evolução e democratização da tecnologia sugiram os PC’s, momento onde a arquitetura começa a mudar para o modelo cliente-servidor onde cada lado se preocupa com apenas a sua função. EX: o cliente vai se preocupar somente em fazer a requisição não importa como a resposta vai chegar e o servidor se preocupa somente em responder a requisição independente do objetivo do cliente.

Aqui, um não guarda o estado do outro. Temos então um provedor de serviços no servidor, EX: servidor se impressão, de arquivos e o SGBD.

Relacionado ao SGBD é preciso um ODBC Driver, a partir daqui usando uma linguagem de programa posso criar uma API que vai intermediar o banco de dados entre a solicitação e a resposta.

> **Two-Tier Arquitetura Lógica e física do cliente/servidor**
> 
> 
> Cenário onde cada cliente estará em um servidor específico de acordo com suas permissões, só o view, gravação, consulta. Esse formato trás simplicidade e compatibilidade com o mundo real. Esse é o formato mais comum e mais usado na criação de ferramentas.
> 

> **Three-tier Arquitetura Lógica cliente/servidor**
> 
> 
> Uma arquitetura com três camadas: Cliente (front end), Aplication Server ou Web Server (back end) e Database Server (SGBD).
> 

![download (1).jpg](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/cfd9a24a-e56b-41e5-b49c-d2766fdf53df/download_%281%29.jpg?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220917%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220917T004930Z&X-Amz-Expires=86400&X-Amz-Signature=dae8b63b36d7587f2f9eba1c951c29543d8e8bf019536aa71cd7793b965a0ee2&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22download%2520%281%29.jpg%22&x-id=GetObject)

## CLassificação das SGBD’s

Para classificar existe alguns parâmetros. 

- **Modelo de dados**: Será relacional ou NoSQL. Como é abordado essa estrutura?
- **Nª de usuários**: Existe um limite no modelo relacional e conforme ele for ficando muito grande o modelo começa a ficar muito lento podendo ser interessante o uso de uma NoSQL
- **Nª de sites**: É centralidado ou distribuido? Se for distribuído, como ele esta fazendo a conexão entre os nós do cluster? Como esta o processamento?Aqui temos o Big Data, Replicação, DB Federado, Heretogeinidade.
- **Custo**: Qual o custo do SGBD? É openseorce? É gratuito ou não?
- **Tipo de caminho de acesso**: Como o SGBD vai lidar com a estrutura de arquivos.
- **Performance**: Pode ser interessante especificar um pouco para ganhar performance. Pode ser usado um OLTP.

> **Artigo para reforço de conteúdo - O que é OLTP?**
> 
> 
> [O que é OLTP?](https://www.oracle.com/br/database/what-is-oltp/)
> 

## Arquitetura física-centralizada

Modelo antigo quando a tecnologia era muito cara. O acesso ao banco era por terminal via rede para pegar as informações do SGBD. Aqui os recursos são centralizados em uma única máquina onde esta rodando todos os programas.

Com a evolução e democratização da tecnologia sugiram os PC’s, momento onde a arquitetura começa a mudar para o modelo cliente-servidor onde cada lado se preocupa com apenas a sua função. EX: o cliente vai se preocupar somente em fazer a requisição não importa como a resposta vai chegar e o servidor se preocupa somente em responder a requisição independente do objetivo do cliente.

Aqui, um não guarda o estado do outro. Temos então um provedor de serviços no servidor, EX: servidor se impressão, de arquivos e o SGBD.

Relacionado ao SGBD é preciso um ODBC Driver, a partir daqui usando uma linguagem de programação posso criar uma API que vai intermediar o banco de dados entre a solicitação e a resposta.