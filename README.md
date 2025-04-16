## Tecnologias
- Node.js (Framework)
- VsCode (IDE)
- Insomnia (IDE de testes)
- Prisma (ORM)
- XAMPP (IDE) SGBD MySQL

## Passo a passo para testar
- 1 Clone este repositório
- 2 Abrir com Vscode
- 3 Criar o arquivo **.env** na pasta API contendo:
```js
DATABASE_URL="mysql://root@localhost:3306/pizzaria?schema=public&timezone=UTC"
```
- Obs: certifique-se de não ter um banco de dados chamado **Escola** no seu MySQL.
- 4 Abrir o XAMPP e dar start em MySQL
- 5 No VsCode abra um terminal **CTRL + '** cmd ou bash e digite os seguintes comandos para baixar as dependências e instalar o Banco de dados
```bash
cd api
npm install
npm i prisma -g
npx prisma migrate dev --name init
npx nodemon
# ou
npm start
```
- 6 Abra o Insomnia e importe o arquivo **./docs/insomnia.yaml** para realizar os testes.

## Prints dos testes
![Print01](./docs/prints/Create%20Alunos.png)
![Print02](./docs/prints/read%20alunos.png)
![Print03](./docs/prints/ReadOne%20Alunos.png)
![Print04](./docs/prints/Remove%20Alunos.png)
![Print05](./docs/prints/UpDate%20Alunos.png)
![Print05](./docs/prints/Create%20Atividade.png)
![Print05](./docs/prints/read%20atividades.png)
![Print05](./docs/prints/ReadOne%20Atividade.png)
![Print05](./docs/prints/Remove%20Atividades.png)
![Print05](./docs/prints/UpDate%20Atividades.png)
![Print05](./docs/prints/Create%20Telefones.png)
![Print05](./docs/prints/read%20telefones.png)
![Print05](./docs/prints/ReadOne%20telefones.png)
![Print05](./docs/prints/Remove%20Telefones.png)
![Print05](./docs/prints/UpDate%20telefones%20(2).png)