const express = require('express');
const { register, login, getUsers, getUserById, updateUser, deleteUser  } = require('../controllers/authController');
const {authMiddleware, authorizeRoles} = require('../middleware/authMiddleware');

const router = express.Router();

router.post('/register', register);
router.post('/login', login);
router.get('/users', authMiddleware, authorizeRoles('admin'), getUsers); 
router.get('/users/:id', authMiddleware, authorizeRoles('admin'), getUserById); 
router.put('/users/:id', authMiddleware, authorizeRoles('admin'), updateUser); 
router.delete('/users/:id', authMiddleware, authorizeRoles('admin'), deleteUser); 

module.exports = router;
