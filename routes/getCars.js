var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  connect.query("SELECT * FROM mainmodel", (err, result) =>{
    if(err){
      throw err;
    } else{
      console.log(result);
      res.render('cars',
      {
        title: 'MiniCoopers',
        message:'Hello, welcome to my cars!',
        carData: result
       });
    }


  });

});

module.exports = router;
