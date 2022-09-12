# ****Explorando a Abordagem de SGBDs****

## Abordagem de BD’s

**Porque utilizar uma SGBD?**

A agilidade no gerenciamento, uma vez que sem a SGBD o DBA precisaria fazer todo gerenciamento desde a alocação de memória, definir a estrutura, armazenar em arquivos, puxar aqueles arquivos e manter a consistência dos dados, manter a concorrência de forma manual já que varias pessoas podem estar usando o mesmo arquivo em um mesmo momento. 

---

**Principais caracteristicas em uma SGBD:**

- **Abstração.** É através dela que podemos determinar a estrutura dos dados em um BD e conseguir manipular essas informações.
- **Auto-descrição:** Ele possui uma descrição descritiva e concisa dos dados dentro do BD dentro do sistema e assim consegue gerenciar os dados de maneira otimizada.
- **Isolamento:** O isolamento da estrutura do banco e o próprio banco facilitando uma eventual mudança no banco de dados sem a necessidade de alterar toda a aplicação.
- **Compartilhamento**: Consegue de maneira facilitado compartilhar os dados com diversos grupos distintos, e a questão de controle de concorrência.
- **Múltiplas visões:** É possível ter as mudanças de visões sobre os cenários uma vez que cada usuário pode ter um acesso personalizado de acordo com a necessidade.
- **Transação multiuser:** Precisam ser executados que levam o BD de um estado inicial para um estado posterior consistente. Ou seja, existe transações concorrentes e a SGBD precisam controlar/gerenciar esse acesso.

### Auto-descrição

**1ª das principais características de SGBD**

A natureza auto-descritiva trás a descrição de sua estrutura e regras, ele possui para isso o schema (estrutura bem definida sem a inserção dos dados) juntamente com os metadados.

O NoSQL não possui essa característica, pois cada documento tem sua auto-descrição, diferente do modelo relacional.

Na abordagem tradicional a descrição esta dentro da aplicação e pode ser um pouco complicada, uma vez que a estrutura esta definida dentro do arquivo de programação

### Isolamento e abstração de dados e programa

**2ª das principais características de SGBD**

entro de uma abordagem tradicional onde é definido o gerenciamento dos dados e estruturas, o nível de abstração elevado não permite uma separação entre a aplicação e todo o mecanismo relacionado aos dados.

Dessa forma, quando existe a necessidade de uma alteração do banco de dados de toda a aplicação deve ser alterado demandando um trabalho de alta complexidade.

Dito isso, o Isolamento é ótima para manutenção do sistema pois quando existe a necessidade de fazer uma alteração que se torna facilmente refletido na aplicação. Essa característica se chama **Program-data independence**.

A SGBD possui aplicação e o banco em duas estruturas diferentes, onde um componente é o próprio banco de dados onde existe a persistência dos dados e o outro componente é a estrutura que define o banco de dados a descrição desse banco, facilitando assim qualquer mudança no banco de dados sem alteração na aplicação que esta em produção e ira refletir tanto o schema quanto na persistência dos dados.

Porem, é importante salientar que fazer uma alteração no banco não é trivial uma vez que será necessário parar o banco que pode ter um grande volume de dados.

> **Resumo:** Modificação acarreta em reestruturação na abordagem tradicional, enquanto uma modificação no banco dentro de uma SGBD não irá acarretar em reestruturação devido o isolamento e abstração.
> 

- **Pontos no SGBD**
    1. **Abstração** é o pilar da independência do programa de dados, é o conceito de generalizar que ignora detalhes específicos que são irrelevantes no contexto.
    2. **Transparência:** O que o SGBD faz é transparente para o desenvolvedor que permite a visualização clara da estrutura do banco. 
    3. **Isolamento** vem pela utilização dos catalagos e metadados, toda a informação de estruturação do banco de dados.

### Múltiplas Visões

**3ª das principais característica de SGBD**

Vantagem interessante que fornece a possibilidade de perspectivas distintas de um mesmo conjunto de dados, chamado **views**.

Diversas pessoas estarão interessadas em um determinado conjunto de dados mas para objetivos diferentes, como em uma empresa onde setores distintos podem usar os dados para seus cenários específicos, como em marketing, vendas, financeiro, gerenciamento por exemplo.

Para isso existe a formação das views, no qual, a partir de um conjunto de tabelas é possível pegar informações respectivas, agregar ou puxar as informações de tabelas diferentes e fazer o processamento através de um **query** e atribuir uma visão que pode ser de apenas leitura (read-only), assim é possível excluir ou agregar informações em uma determinada view de acordo com a necessidade da pessoa que esta solicitando.

### Compartilhamento e Processamento de transações multiusuários

**4ª das principais características**

Um sistema pode possuir múltiplos acessos ao SGBD e com necessidades diferentes, dessa forma, a SGBD precisa ter mecanismos de controle de concorrência e manter os dados coerentes de forma que não se modifiquem, a não ser que existe uma ação específica para a mudança do dado. O mecanismo utilizado que permite o acesso desses diversos usuários se chama **Concurrency Control** (controle de concorrências)

Também, dentro da idéia de múltiplos acessos, temos o **OLTP** que significa Online Transaction Processing (Processamento de Transações Online), aqui se apresenta uma abordagem de aceso simultâneo onde existe uma sucessão de operações (Insert, Delet, Update) e estas são agregados em uma transação a fim de completar uma transação. São sistemas que tem a função de registrar todas as transação e garantir sua execução e esta relacionada a performance.

Ele requer um certo suporte para as transações em rede, precisando de uma conexão HTTP, API e softwares intermediário que permite que as transações rodem em diferentes plataformas distribuídas na rede. Em grandes aplicações sua eficiência vão depende do quão sofisticado é o softwares de gerenciamento de transação como um CICS, precisando de um ambiente mais otimizado.

O OLTP Prove performance para que seja realizado toda uma transação com execução constante. Sendo assim, a execução não tem interferência, podem, caso ocorra um erro ele para, característica chamada **Atomicidade**. O SGBD deve ser capaz de retroceder e voltar o banco ao estado original em caso de erro em uma transação.

O OLTP tem relação com o transation-driven, ambiente operacional voltado a decisões voltado a transações. Como a solicitação de consulta do extrato bancário.

- OLAP - Ambiente informativo onde se realiza a análise dos dados.

---

### Atores

**BDs simples**, de acesso único onde um ou poucas pessoas tem interesse em acessar as informações.

**Big Organization**, com grande quantidade de pessoas interessados nos dados do sistema.

- **Desing para modelar:** Vai identificar dados e requisitos, representar.
- **DBA:** gerencia os recursos, orquestra o sistema, ele define a autorização de acesso. Tudo que esta relacionado a configuração.
- **Manutenção equipe responsável pela manutenção:** Usabilidade de quem vai determinar a forma de funcionamento para satisfazer os requisitos do sistema.
- **Usuários finais:** Os interessados em consumir as informações.
    - Casuais: tem o acesso ocasional e busca diferentes tipos de dados, usa geralmente uma API para o acesso;
    - Ingênuos: a maior parte dos usuários,
    - Sofisticados: possui uma noção ou tem conhecimento prévio do sistema, da tecnologia como engenheiros e analistas;
    - Standalone: a pessoa com DB pessoal, só ele acessa a base.


### Workers em backgroud

Atores que não estão diretamente ligados ao SGBD.

Esses atores tem a função de manter o SGBD disponível para que outros atores possam acessar as informações, eles dão o suporte para que o SBGD possa cumprir sua função de gerenciamento do BD e existe uma serie de requisitos necessário sara que o SGBD possa operar no qual esses atores indiretos trabalham. 

- **Designer do sistema de SGBD** e **Implementação do Sistema de SGBD**: : Implementação dos módulo e interfaces do SGBD como um software package.
- **Pessoal de operação de manutenção**: Responsável pelo ambiente de hardware e software para SGBD.
- **Desenvolvedores de ferramentas**: Devs, que criam ferramentas opcionais para diversos fins, como: performance, modelagem, análise.

---

### Vantagens em utilizar a abordagem SGBD

- **Controle de Redundância:** Devido o uso de múltiplos usuários, a probabilidade de inconsistências nas informações é bem grande. Essa funcionalidade controla e reduz desperdício, redundância das informações, Inconsistências e updates desnecessários.
- **Restrição de acesso:** Restrição de permissões dos acessos para determinados usuários, esses acessos são criados pelos DBA’s.
- **Storage - prove persistência:** Questão de isolamento de dados que mantem os dados separados na estrutura. Ainda na persistência existe o Impedance Mismatch Problem, problema relacionado a falta de um match, de uma combinação entre estrutura do software e a SGBD.
- **Storage - prove estrutura**: A estrutura de armazenamento utilizado pelos SGBD geralmente ocorre em árvore e são estruturadas de forma que exista uma ligação entre eles, assim as buscas são mais eficientes. Existem queries, o SQL foi criado ara facilitar o entendimento do dev, sendo intuitiva. Técnicas relacionadas ao DBA que aumenta o desempenho: Caching (dados em cache), Buffering (buffer para inserir informações), e Indexação(torna o acesso mais rápido através de estruturas como a em árvore).
- **Backup e recovery:** Interessantes para recuperar recursos que foram permitidos. Esses bachups são gravados em outro local para a recuperação de uma possível perda de dados. O recovery é interessante quando ocorre uma falha por desastre que pode ser usado para recuperar um estado invalida dentro de um banco de dados.
- **Provendo interface Multi-use:** Para diferentes usuários com perfils e interesses diferentes. EX de interfaces: Mobile apps, Natural language interface (como a alexa), Query language, Forms & commands codes, Programming lang. interface(programação através de IPI’s ), Menu-driven.
- **Representação de relações complexas:** Retrata essa relações de forma fluida definindo o tipo de transação e sua ordem, como é a relação entre duas tabelas, por exemplo.

Integridade de dados: O SGBA precisa manter o status ativo do sistema, independente de qualquer problema. Caso isso ocorra existe o método de log para recuperação do banco, porem os dados são perdidos. Para manter a integrabilidade pode ser usado restrições, ex: regras de domínio, asserções, integridade referencial, gatilhos e dependências funcionais.

> Triggers: gatilhos que podem ser startado uma ação a partir de uma ação anterior.
> 

### Ganhos em utilizar a abordagem SGBD

- **Padronização**: Padronização dos dados que serão inseridos, assim se tem um ganho de consulta dos dados.
- **Redução de tempo no desenvolvimento da aplicação:** É possivel tirar features do app descontinuado e otimizar recursos.
- **Flexibilidade**: É possível tornar o ciclo de Requisitos, Desenvolver, Testar mais agil. Pois uma vez em produção, qualquer modificação no programa será complexo, mas devido o isolamento desse dado qualquer modificação não interfere na execusão do programa.
- **Disponibilidade de informações atualizadas**: Qualquer atualização é repletida quase instantanea dentro do SGBD.
- **Economia com escalabilidade**: Redução do custe de operação e gereciamento usando um SGBD, principalmente pela necessidade de manutenção ser baixa.
- **Padronização**: padronização dos dados que serão inseridos, assim se tem um ganho de consulta dos dados.
- **Redução de tempo no desenvolvimento da aplicação:** É possível tirar features do app descontinuado e otimizar recursos.
- **Flexibilidade**: É possível tornar o ciclo de Requisitos, Desenvolver, Testar mais agil. Pois uma vez em produção, qualquer modificação no programa será complexo, mas devido o isolamento desse dado qualquer modificação não interfere na execução do programa.
- **Disponibilidade de informações atualizadas**: Qualquer atualização é refletida quase instantanea dentro do SGBD.
- **Economia com escalabilidade**: Redução do custe de operação e gerenciamento usando um SGBD, principalmente pela necessidade de manutenção ser baixa.

### Quando não usar um SGBD?

Não use quando o custo beneficio relacionado ao investimento inicial, generelidade na definição e processamento, segurança, controle de concorrÇencia, recovery e funções de integridade não for bom.

É necessário consideração se a aplicação precisará de todos as ferramentas que o SGBD oferece.

Verifique se o banco de dados é simples e se vai precisar de mudanças, pois pode ser mais interessante usar a linguagem de programação para a persistencia dos dados no banco.

Alguns dispositivos que não usam SGBD: Dispositivos de redes, GIS systems e o Autocad.