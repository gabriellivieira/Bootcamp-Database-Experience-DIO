# Git GitHub

Principais ferramentas usadas para armazenamento de código e versionamento.

Temas que serão estudados: 

- Controle de Versão
- Armazenamento
- Comandos
- Funcionamento

---

## Git

É um sistema de versionamento de codigo, que nos ajuda a criar e monitorar as diferentes versões do software dentro da nossa máquina. 

Criado por Linus Torvalds durante a criação do sistema operacional Linus, uma vez que o Linux foi criado de forma colaborativa, Linus precisava de um sistema de versionamento eficiente o suficiente para suportar uma grande quantidade de pessoas trabalhando nos arquivos. 

O Git é um software cpm desing do tipo CLI (command line interface), não possui interface grafica seu uso é por linha de comando. Hoje existem software que adicionam uma interface grafica para a facilitação do uso.

▶**Comandos básicos no Git** 

- Mudar de pasta:
    
    
    - Windows: cd
    
    - Unix/Linux: cd
- Listar as pastas:
    
    
    - Windows: dir
    
    - Unix/Linux: ls / ls  -a (arquivos ocultos)
- Criar pastas/arquivos:
    
    
    - Windows: mkdir
    
    - Unix/Linux: mkdir
- Deletar pastas/arquivos:
    
    
    - Windows: del (somente para arquivos) / rmdir /S /Q (para pastas)
    
    - Unix/Linux: rm / rf
- Limpar tela:
    
    
    - Windows: cls / CTRL + L
    
    - Unix/Linux: clear

> **“>” simbolo de direcionar recurso, podendo direcionar um “echo” (comenda que exibe uma mensagem) para um arquivo como ex.txt**
> 

[CMD Comandos Windowns - Documents](https://docs.microsoft.com/pt-br/windows-server/administration/windows-commands/windows-commands)

▶**Como o Git funciona**

- SHA1.
    - Secure Hash Algorithm - Algoritimo de criptografia, que gera um conjunto de caracteres identificador de 40 dígitos criptografando o repositorio a cada alteração. (Comando “ openssl sha1 nome_arquivo)
- Objetos Fundamentais.
    
    Blobs, Trees, Commits são os três tipos básico de objetos responsáveis pelo versionamento no git.
    
    - Blobs: Contem metadados (**\**0) do git, como tamanho da string, tipo do objeto, tamanho do arquivo etc.
    - Trees: Armazenam as blobs que são os blocos básicos da composição. Este guarda o nome do arquivo, monta toda a estrutura onde estão localizados os arquivos que podem apontar para blobs ou outras árvores.
    - Commit junto toda a alteração, ele aponta para a tree, um parente (outro commit) e um autor. Ele da significado para o processo de atualização dos dados.
- Sistema distribuído.
    - É um sistema de processamento paralelo que interliga varios nós de processamentos, no caso do git, o sistema distribuido permite que em um grupo de pessoas que esteja mantendo/alterando um mesmo arquivo, todas essas pessoas terão a versão mais atualizada.
- Segurança.
    - Devido ao seu processo de criptografia no qual a cada alteração do arquivo funciona em cadeia, mudando o Sha1 de todos os objetos participantes em cada alteração/atualização. Fazendo com que seja impossível mudar um arquivo sem ser identificado, sendo impossível alterar um commit que já existe.

 

▶Autenticação Git/GitHub

- Chave SSH: É uma forma de estabelecer uma conexão segura entre duas maquinas, ex: maquina local com o GitHub (chave privada e publica). Como uma assinatura da maquina onde o GitHub vai reconhecer sua maquina.
- Token: É um token de acesso pessoal que seja gerado no GitHub e sempre que precisar fazer um commit será necessário usar esse token gerado pelo Git. Este é um processo menos seguro que o a Chave SSH, uma vez que com a chave configurada no GitHub e Git ao fazer um commit não será pedido senha.

▶Comandos GitHub - CMD Bash

- Git init
    - Inicializar o git e ele comece a gerenciar e versionar o codigo. Ele cria um repositório no git dentro da pasta.
- Trackecd and Untracked
    - Tracked são arquivos que o git tem a ciência deles.
    - Untracked aqueles que o git não tem ciência.
    
    ![download (1).jpg](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/017da7e6-6205-4510-b352-cea82e5105dd/download_(1).jpg)
    
    Unmodifield (arquivo não modificado); Modifield (arquivo modificado), Staged (Onde fica os arquivos que estão se preparando para outros agrupamentos rumo ao commit).
    
- Git add
    - Git add que move o arquivo de Unmodifield para Modifield e depois Stage.
    - Git add nomeAquivo; Git add * (envia todos os arquivos que foram modificaram); Git add .
- Git commit -m “mensagem”
    - Após o commit os arquivos são enviados novamente para o Unmodifield para novas modificações, o commit envelopa os arquivos e faz um “snap shoot” (uma foto) e estão prontos para ser enviados ao repositório do GitHub.
    
- Git Status
    - Mostra o status que o arquivo esta, se ele esta Unmodifield ,Modifield ou Staged

> **Resumo:** Após o Git Init (iniciar), damos o Git add que move o arquivo de Unmodifield para Modifield e depois Stage. É realizado o commit dos arquivos que são enviados novamente para o Unmodifield para novas modificações, o commit envelopa os arquivos e faz um “snap shoot” (uma foto), assim os arquivos estão prontos para ser enviados ao repositório online.
> 

 

- Git remote add origin (apelido da origem) LinkRepositorioGit
    - “origin” é o apelido para o link do repositorio para que não tenhamos que informar todo o link.
    - Cria a conexão com o Git remoto, pois ao criar o repositório no  GitHub
- Git push origin master
    - Para enviar/empurrar os arquivos para o repositório no github
- Git pull origin master
    
    Para pegar/puxar um diretório que esta online no GitHub.
    
- Git clone linkDoRepositorio
