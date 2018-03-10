var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  connect.query("SELECT * FROM tbl_movies", (err, result) =>{
    if(err){
      throw err; console.log(err);
    } else{
      console.log(result);
      res.render('movies',
      {
        title: 'Roku Video Suite',
        message:'Hello, welcome to Roku!',
        movieInfo: result
       });
    }


  });

});

module.exports = router;
