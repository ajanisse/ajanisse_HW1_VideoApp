var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('home', { title: 'Express', message:"wewlad I love handlebars" });
});

module.exports = router;
