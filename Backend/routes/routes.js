const express = require('express');
const router = express.Router();
const { authenticate } = require('../middlewares/authMiddleware');

const categoryController = require('../controllers/categoryController');
const locationController = require('../controllers/locationController');
// const userController = require('../controllers/userController');


//category routes
router.get('/api/category/get', authenticate, categoryController.get);
router.post('/api/category/create', authenticate, categoryController.create);
router.post('/api/category/update', authenticate, categoryController.update);
router.post('/api/category/delete', authenticate, categoryController.delete);

//location routes
router.get('/api/location/get', authenticate, locationController.get);
router.post('/api/location/create', authenticate, locationController.create);
router.post('/api/location/update', authenticate, locationController.update);
router.post('/api/location/delete', authenticate, locationController.delete);


module.exports = router;

