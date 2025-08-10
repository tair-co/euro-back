var express = require("express");
const { login } = require("../controllers/login");
var router = express.Router();

/* POST login controller */

router.post("/login", login);

module.exports = router;
