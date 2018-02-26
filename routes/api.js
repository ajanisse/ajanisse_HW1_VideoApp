var express = require('express');
var connect = require('../utils/sqlConnect'); // this is so we can run querys
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
});


router.get('/:id', function(req, res, next) {
  connect.query(`SELECT * FROM mainmodel where model="${req.params.id}"`, (err, result) => {
    if (err){
      throw err;
    }else{
      console.log(result);

      res.json(result); //this is just like echoing json with php
    }
  });


});

router.delete('/:id', (res, res) => {
  console.log('Hit the delete route!');
  connect.query(`DELETE FROM mainmodel WHERE model ="${req.params.id}"`, (err,
    result) => {

  if(err) {
    throw err;
  } else {
    console.log(result);
    res.json(result);
  }
});
});
module.exports = router;
