const db = require('../db');

exports.index = (req, res) => {
    res.json({ status: "success", msg: "connected" })
};

exports.createUser = (req, res) => {
    // Implementation to create a new user in the database
};

exports.get_user = (req, res) => {
    const sql = 'SELECT id, name, email, contact FROM users';
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