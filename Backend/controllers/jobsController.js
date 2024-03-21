
const db = require('../knex-init');
const moment = require('moment');
// const { search } = require('../routes/routes');
var timestamp = moment().format('YYYY-MM-DD HH:mm:ss');


exports.get = async (req, res) => {
    try {
        const get_data = await db.select('jobs.id', 'jobs.title', 'jobs.job_description', 'jobs.requirement',
            'jobs.company_profile', 'jobs.is_published', 'jobs.publication', 'jobs.location_id', 'jobs.category_id', 'location.name as location_name', 'category.name as category_name', 'jobs.is_active as status')
            .table('jobs')
            .leftJoin('category', 'jobs.category_id', 'category.id')
            .leftJoin('location', 'jobs.location_id', 'location.id')
            .where('jobs.is_deleted', '0')


        res.json({ status: 'success', msg: 'success', total_count: get_data.length, data: get_data })

    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.get_details = async (req, res) => {
    const id = req.params?.id

    try {
        const get_data = await db.select('jobs.id', 'jobs.title', 'jobs.job_description', 'jobs.requirement',
            'jobs.company_profile', 'jobs.is_published', 'jobs.publication', 'jobs.location_id', 'jobs.category_id', 'location.name as location_name', 'category.name as category_name', 'jobs.is_active as status')
            .table('jobs')
            .leftJoin('category', 'jobs.category_id', 'category.id')
            .leftJoin('location', 'jobs.location_id', 'location.id')
            .where('jobs.is_deleted', '0').where('jobs.id', id)
            .first();

        res.json({ status: 'success', msg: 'success', data: get_data })

    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.create = async (req, res) => {
    // validation
    const title = req.body?.title;
    const job_description = req.body?.job_description;
    const requirement = req.body?.requirement;
    const company_profile = req.body?.company_profile;
    const is_published = req.body?.is_published;
    const publication = req.body?.publication;
    const location_id = req.body?.location_id;
    const category_id = req.body?.category_id;


    if (!title || title.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Title' };
        return res.json(output);
    }

    if (!job_description || job_description.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Description' };
        return res.json(output);
    }

    if (!location_id || location_id.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Location' };
        return res.json(output);
    }

    if (!category_id || category_id === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Category' };
        return res.json(output);
    }

    try {

        const status = await db.table('jobs').insert({
            title: title,
            job_description: job_description,
            requirement: requirement,
            company_profile: company_profile,
            is_published: is_published,
            publication: publication,
            location_id: location_id,
            category_id: category_id,
            is_active: 1,
            created_at: timestamp
        });

        if (status) {
            res.json({ status: 'success', msg: 'Successfully inserted' })
        } else {
            res.json({ status: 'failed', msg: 'Something went wrong' })
        }



    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.update = async (req, res) => {
    // validation
    const id = req.body?.id;
    const title = req.body?.title;
    const job_description = req.body?.job_description;
    const requirement = req.body?.requirement;
    const company_profile = req.body?.company_profile;
    const is_published = req.body?.is_published;
    const publication = req.body?.publication;
    const location_id = req.body?.location_id;
    const category_id = req.body?.category_id;

    if (!id || id === '') {
        const output = { status: "failed", msg: 'Please Enter jobs id' };
        return res.json(output);
    }

    if (!title || title.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Title' };
        return res.json(output);
    }

    if (!job_description || job_description.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Description' };
        return res.json(output);
    }

    if (!location_id || location_id.trim() === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Location' };
        return res.json(output);
    }

    if (!category_id || category_id === '') {
        const output = { status: "failed", msg: 'Please Enter jobs Category' };
        return res.json(output);
    }

    try {
        const get_data = await db.select('id', 'title', 'job_description', 'requirement',
            'company_profile', 'is_published', 'publication', 'location_id', 'category_id').table('jobs').where('id', id);

        if (get_data.length > 0) {

            const status = await db.table('jobs').where('id', id).update({
                title: title,
                job_description: job_description ?? get_data.job_description,
                requirement: requirement ?? get_data.requirement,
                company_profile: company_profile ?? get_data.company_profile,
                is_published: is_published ?? get_data.is_published,
                publication: publication ?? get_data.publication,
                location_id: location_id ?? get_data.location_id,
                category_id: category_id,
                is_active: 1,
                updated_at: timestamp
            });

            if (status) {
                res.json({ status: 'success', msg: 'Successfully updated' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'jobs with same name not exist' })
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
        const output = { status: "failed", msg: 'Please Enter jobs id' };
        return res.json(output);
    }

    try {
        const get_data = await db.select('id').table('jobs').where('id', id);

        if (get_data.length > 0) {

            const status = await db.table('jobs').where('id', id).update({
                is_deleted: 1,
                updated_at: timestamp
            });

            if (status) {
                res.json({ status: 'success', msg: 'Successfully deleted' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'jobs with same name not exist' })
        }


    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.status = async (req, res) => {
    // validation
    const id = req.body?.id;
    const status = req.body?.status;

    if (!id || id === '') {
        const output = { status: "failed", msg: 'Please Enter jobs id' };
        return res.json(output);
    }

    if (!status || status === '') {
        const output = { status: "failed", msg: 'Please Enter status (0: inactive, 1: active)' };
        return res.json(output);
    }


    try {
        const get_data = await db.select('id').table('jobs').where('id', id);

        if (get_data.length > 0) {

            const update_status = await db.table('jobs').where('id', id).update({
                is_active: status,
                updated_at: timestamp
            });

            if (update_status) {
                res.json({ status: 'success', msg: 'Successfully updated status' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'jobs with same name not exist' })
        }


    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.mark_as_features = async (req, res) => {
    // validation
    const id = req.body?.id;
    const status = req.body?.status;

    if (!id || id === '') {
        const output = { status: "failed", msg: 'Please Enter jobs id' };
        return res.json(output);
    }

    if (!status || status === '') {
        const output = { status: "failed", msg: 'Please Enter status (0: inactive, 1: active)' };
        return res.json(output);
    }


    try {
        const get_data = await db.select('id').table('jobs').where('id', id);

        if (get_data.length > 0) {

            const update_status = await db.table('jobs').where('id', id).update({
                is_featured: status,
                updated_at: timestamp
            });

            if (update_status) {
                res.json({ status: 'success', msg: 'Successfully updated featured' })
            } else {
                res.json({ status: 'failed', msg: 'Something went wrong' })
            }
        } else {
            res.json({ status: 'failed', msg: 'jobs with same name not exist' })
        }


    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.featured = async (req, res) => {
    try {
        const get_data = await db.select('id', 'title', 'job_description', 'requirement',
            'company_profile', 'is_published', 'publication', 'location_id', 'category_id').table('jobs').where({ is_deleted: 0, is_active: 1, is_published: 1, is_featured: 1 });
        res.json({ status: 'success', msg: 'success', total_count: get_data.length, data: get_data })

    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

exports.filter = async (req, res) => {
    const search_term = req.body?.search_term;
    const category_id = req.body?.category_id;
    const location_id = req.body?.location_id;



    try {
        const query = db.select('id', 'title', 'job_description', 'requirement',
            'company_profile', 'is_published', 'publication', 'location_id', 'category_id').table('jobs').where({ is_deleted: 0, is_active: 1, is_published: 1 });

        if (location_id && location_id != '') {
            query.where('location_id', location_id);
        }

        if (category_id && category_id != '') {
            query.where('category_id', category_id);
        }

        if (search_term && search_term !== '') {
            query.whereILike('title', '%' + search_term + '%')
        }

        get_data = await query;

        res.json({ status: 'success', msg: 'success', total_count: get_data.length, data: get_data })

    } catch (error) {
        console.error(error);
        // Handle database operation error
        res.status(500).json({ error: 'Database Error', errorNote: error });
    }
};

