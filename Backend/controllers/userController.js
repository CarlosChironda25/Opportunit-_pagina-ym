
const db = require('../knex-init');
const md5 = require('md5');
const moment = require('moment');
var timestamp = moment().format('YYYY-MM-DD HH:mm:ss');
const crypto = require('crypto');

exports.index = (req, res) => {
    res.json({ status: "success", msg: "connected" })
};

exports.createUser = (req, res) => {
    // Implementation to create a new user in the database
};

exports.get_user = async (req, res) => {
    try {
        const get_data = await db.select('id', 'name', 'email', 'contact', 'profile_img').table('users').where({ is_deleted: 0 });
        res.json({ status: 'success', msg: 'success', total_count: get_data.length, data: get_data })

    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.user_info = (req, res) => {
    const body = req.params;

    const sql = 'SELECT id, name, email, contact FROM users where id = ' + body.id;

    db.query(sql, (error, results) => {
        if (error) {
            console.error('Error executing MySQL query: ' + error.stack);
            res.status(500).json({ error: 'Internal server error' });
            return;
        }

        // Send the results as JSON
        output = { status: "success", data: results }
        res.json(output);

    });
};

exports.admin_login = async (req, res) => {
    const body = req.body;
    const get_data = await db.select('id', 'name', 'email', 'contact', 'profile_img', 'password').table('users').where({ email: body.username, is_deleted: 0 }).first();

    if (get_data && get_data != '') {
        if (get_data.password == md5(body.password)) {
            output = { status: "success", msg: "successfully logged in", token: this.generateRandomToken() }
        } else {
            output = { status: "failed", msg: "Invalid Credientials!!!" }
        }
    } else {
        output = { status: "failed", msg: "Invalid Credientials!!!" }

    }

    res.json(output);
};


exports.generateRandomToken = () => {
    let length = 40;
    return crypto.randomBytes(Math.ceil(length / 2)).toString('hex').slice(0, length);

};

