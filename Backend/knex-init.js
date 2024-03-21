// knex-init.js

const knex = require('knex');
const config = require('./Database');

const db = knex(config);

module.exports = db;
