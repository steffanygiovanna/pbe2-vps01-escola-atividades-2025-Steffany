const express = require('express');
const routes = express.Router();

const alunos = require('./controllers/aluno');
const atividade = require('./controllers/atividade');
const telefone = require('./controllers/telefone');

routes.get('/', (req, res) => {
  return res.json({ titulo: 'Escola ACME' });
});

routes.post('/alunos', alunos.create);
routes.get('/alunos', alunos.read);
routes.get('/alunos', alunos.readOne);
routes.put('/alunos', alunos.update);
routes.delete('/alunos', alunos.remove);

routes.post('/atividade', atividade.create);
routes.get('/atividade', atividade.read);
routes.get('/atividade', atividade.readOne);
routes.put('/atividade', atividade.update);
routes.delete('/atividade', atividade.remove);

routes.post('/telefone', telefone.create);
routes.get('/telefone', telefone.read);
routes.get('/telefone', telefone.readOne);
routes.put('/telefone', telefone.update);
routes.delete('/telefone', telefone.remove);

module.exports = routes;