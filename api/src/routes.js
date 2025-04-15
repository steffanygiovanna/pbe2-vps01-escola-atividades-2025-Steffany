const express = require('express');
const routes = express.Router();

const alunos = require('./controllers/alunos');
const atividade = require('./controllers/atividade');
const telefone = require('./controllers/telefone');

routes.get('/', (req, res) => {
  return res.json({ titulo: 'Escola ACME' });
});

Router.post('/alunos', alunos.create);
Router.post('/alunos', alunos.read);
Router.post('/alunos', alunos.readOne);
Router.post('/alunos', alunos.update);
Router.post('/alunos', alunos.remove);

Router.post('/atividade', atividade.create);
Router.post('/atividade', atividade.read);
Router.post('/atividade', atividade.readOne);
Router.post('/atividade', atividade.update);
Router.post('/atividade', atividade.remove);

Router.post('/telefone', telefone.create);
Router.post('/telefone', telefone.read);
Router.post('/telefone', telefone.readOne);
Router.post('/telefone', telefone.update);
Router.post('/telefone', telefone.remove);

module.exports = routes;