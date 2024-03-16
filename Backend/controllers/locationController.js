
const db = require('../knex-init');
const moment = require('moment');
var timestamp = moment().format('YYYY-MM-DD HH:mm:ss');


exports.get = async (req, res) => {
    try {
        const get_data = await db.select('id', 'name').table('location').where({ is_deleted: 0, is_active: 1 });
        res.json({ status: 'success', msg: 'success', total_count: get_data.length, data: get_data })

    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.create = async (req, res) => {
    // validation
    const name = req.body?.name;


    if (!name || name.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter location Name' };
        return res.json(output);
    }

    try {

        const get_data = await db.select('id', 'name').table('location').where('name', name);

        if (get_data.length == 0) {

            const status = await db.table('location').insert({
                name: name,
                is_active: 1,
                created_at: timestamp
            });

            if (status) {
                res.json({ status: 'success', msg: 'Successfully inserted' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'location with same name already exist' })
        }


    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error }); 
    }
};

exports.update = async (req, res) => {
    // validation
    const name = req.body?.name;
    const id = req.body?.id;


    if (!name || name.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter location Name' };
        return res.json(output);
    }

    if (!id || id === '') {
        const output = { status: "failed", msg: 'Please Enter location id' };
        return res.json(output);
    }

    try {
        const get_data = await db.select('id', 'name').table('location').where('id', id);

        if (get_data.length > 0) {

            const status = await db.table('location').where('id', id).update({
                name: name,
                is_active: 1,
                updated_at: timestamp
            });

            if (status) {
                res.json({ status: 'success', msg: 'Successfully updated' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'location with same name not exist' })
        }


    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error }); 

    }
};

exports.delete = async (req, res) => {
    // validation
    const id = req.body?.id;

    if (!id || id === '') {
        const output = { status: "failed", msg: 'Please Enter location id' };
        return res.json(output);
    }

    try {
        const get_data = await db.select('id', 'name').table('location').where('id', id);

        if (get_data.length > 0) {

            const status = await db.table('location').where('id', id).update({
                is_deleted: 1,
                updated_at: timestamp
            });

            if (status) {
                res.json({ status: 'success', msg: 'Successfully deleted' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'location with same name not exist' })
        }


    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};



