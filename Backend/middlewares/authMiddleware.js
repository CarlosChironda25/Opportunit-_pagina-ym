require('dotenv').config();

exports.authenticate = (req, res, next) => {
    const authHeader = req.headers['authorization'];
    if (!authHeader || authHeader !==  process.env.AUTH_TOKEN) {
        return res.status(401).json({ error: 'Unauthorized' });
    }
    next();
};

