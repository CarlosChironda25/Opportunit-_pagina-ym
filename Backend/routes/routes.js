const express = require('express');
const router = express.Router();
const { authenticate } = require('../middlewares/authMiddleware');

const categoryController = require('../controllers/categoryController');
const locationController = require('../controllers/locationController');
const jobsController = require('../controllers/jobsController');
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

//jobs routes
router.get('/api/jobs/get', authenticate, jobsController.get);
router.get('/api/jobs/get/:id', authenticate, jobsController.get_details);
router.post('/api/jobs/create', authenticate, jobsController.create);
router.post('/api/jobs/update', authenticate, jobsController.update);
router.post('/api/jobs/delete', authenticate, jobsController.delete);
router.post('/api/jobs/status', authenticate, jobsController.status);
router.post('/api/jobs/mark_as_features', authenticate, jobsController.mark_as_features);
router.get('/api/jobs/featured', authenticate, jobsController.featured);
router.post('/api/jobs/filter', authenticate, jobsController.filter);



module.exports = router;
