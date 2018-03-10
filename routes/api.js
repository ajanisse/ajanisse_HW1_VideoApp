var express = require('express');
var connect = require('../utils/sqlConnect');
var bodyParser = require('body-parser');
var router = express.Router();

router.use(bodyParser.urlencoded({ extended : false }));
router.use(bodyParser.json());

router.get('/:id', (req, res) => {
  console.log(req.params.id);
  console.log('hit an api route');

  connect.query(`SELECT * FROM tbl_movies WHERE movie_id="${req.params.id}"`, (err, result) => {
    if (err) {
      throw err; console.log(err);
    } else {
      console.log(result);

      res.json({movieInfo: result});
    }
  });
});


module.exports = router;
