Faz parte do projeto conceitual, de alto nível, que define de forma abstrata os requisitos do sistema. É relacionado ao contexto do negócio que pretendo modelar e os elementos principais desse modelo são Entidades, Relacionamentos e Atributos que formam o diagrama, a estrutura do diagrama de entidade relacionamento.

O foco do diagrama esta no esquema, ganhando alguns benefícios como as raras modificações, a facilidade de manipular as informações e a facilidade de fazer o mapeamento desse esquema de Entidade Relacionamento baseado no banco de dados com o modelo relacional.

### Entidade

Entidade é como um objeto que possui um atributo, tem uma característica e propriedade, essa entidade então possui uma função. A entidade é um componente básico, possui uma importância dentro do cenário, tem sua existência independente. E um conjunto de entidades parecidas se chama **Instância**.

### Atributos

São propriedades de uma entidade, caracterizam/descrevem essa entidade que esta relacionado as instâncias, que são os valores desses atributos. 

Os atributos podem ser:

- **Atômicos,** quando o atributo possui apenas uma informação. Varia a estrutura;
- **Compostos**, quando o atributo é composto por mais partes como o nome que é composto por primeiro nome, nome do meio e ultimo nome. Varia a estrutura;
- **Multivalorados**, associado ao valor que o atributo possui, exemplo: Uma blusa pode ter varias cores. Varia o valor;
- **Armazenados**, são os que dificilmente vão se modificar, como a data de aniversário;
- **Derivador,** informação que pode ser recuperada através de uma operação SQL, como o resgate da idade usando a data de aniversário;
- **Atributos nulos**, são informações que são opcionais, como por exemplo as informações de casa e apartamento ao informar o endereço onde a casa não tem número como o apartamente.  **UNKNOWN** quando o item existe mas não é conhecido, como telefone fixo quando a pessoa tem mas não se lembra.
- **Atributo complexo**, esta associado a estrutura, como por exemplo o telefone que é formado por DDD + número, diferente do atributo composto que é formato por varios itens como o endereço formado por numero da rua, cidade…

> **Entidade Fraca** tem uma peculiaridade, onde esta só vai existir se estar vinculado a outra entidade, existe uma dependência da entidade fraca com a entidade forte. EX: Dependente de um funcionário, onde o dependente só existe se existir um funcionário.
> 

**Relaciomento entre as entidades são classificados em:**

- Grau (número de entidades que compõem o relacionamento podendo ser binário ou ternário);
- Auto-relacional ou não ( se ele se relaciona com ele mesmo ou não);
- Cardinalidade (qual número a função leva. EX: N elementos A pode levar a N elementos B)

> **Papel das entidades**, define o significado do relacionamento, o papel de cada entidade dentro daquela entidade.
> 

**Contraints de relacinamento binário**

- **Cardinalidade** corresponde ao número máximo de instância que participam de um determinado relacionamento.
- **Participação**, vão denotar de um relacionamento com dependência e associada a cardinalidade mínima (ou seja, classificada entre total e parcial onde é determinado se a participação da entidade é obrigatória quanto total ou opcional quando parcial);

**Relacionamento de Auto-Grau**

Quando existe relacionamento entre mais de duas entidades, como o ternário ou mais. Assim a perspectiva de relacinamento se torna diferente do binário por ter o relacionamento entre três instâncias que refletem a visão, nesse cenário temos um Trade-off na tomada de decisão e saber se realmente é necessário ter esse tipo de relação (ternário).

> **Símbolos de Diagrama ER e seus usos**
> 
> 
> [Símbolos de Diagramas ER e os Seus Usos](https://www.edrawsoft.com/pt/er-diagram-symbols.html)
> 

> **Tutorial do Diagrama ER**
> 
> 
> [Tutorial de Diagramas ER | Guia completo de Diagramas de Relacionamento com as Entidades](https://creately.com/blog/pt/diagrama/tutorial-de-diagrama-er/)
> 

> **Criar Diagrama ER**
> 
> 
> [Símbolos e notação de diagramas entidade-relacionamento](https://www.lucidchart.com/pages/pt/simbolos-de-diagramas-entidade-relacionamento)
> 

### Alternativas - UML

É uma linguagem padronizada para o desenvolvimento de software, onde ela oferece diversos diagramas que podem compor visões distintas em um mesmo cenário. 

Trabalha com visões: interpretada (acha que vai acontecer) e construída (A incrementada), para facilitar a compreensão, voltada a orientação objeto.

> UML - O que é?
> 
> 
> [https://blog.betrybe.com/tecnologia/uml/#:~:text=uma boa leitura!-,O que é UML%3F,de sistemas orientados a objetos](https://blog.betrybe.com/tecnologia/uml/#:~:text=uma%20boa%20leitura!-,O%20que%20%C3%A9%20UML%3F,de%20sistemas%20orientados%20a%20objetos).
> 

> Fundamentos de UML
> 
> 
> [UML Fundamentos: Aprendendo a Linguagem de Modelagem Unificada](https://www.devmedia.com.br/uml-fundamentos/8640)
> 
> Modelo Enhanced ER
> 
> 
> [Understanding the Enhanced ER Model Simplified 101 - Learn | Hevo](https://hevodata.com/learn/enhanced-er-model/)
>
---

## Conceitos formais do Modelo Relacional

**Tupla -** É a instância da tabela, cada linha de dados da tabela.

**Atributo -** Características da tabela, informações do cabeçalho da tabela.

**Relação -** A parte abstrata da estrutura

**Valor atômicos -** são os domínios, são valores indivisíveis associados a grupos, ex: nome e suas características como o tipo VARCHAR(40)

**Cardinalidade -** total de valores, total de instâncias.

**Predicado**, formado por um ou mais valores, é aquilo que se declara sobre a ação do sujeito, concordando em em número e pessoa com ele. seus resultados são verdadeiro ou falta.