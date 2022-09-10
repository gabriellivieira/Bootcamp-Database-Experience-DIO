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