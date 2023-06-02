var express = require("express");
var router = express.Router();

var cisternaController = require("../controllers/cisternaController");

router.get("/puxarLitros", function (req, res) {
  cisternaController.puxarLitros(req, res);
});

module.exports = router;
