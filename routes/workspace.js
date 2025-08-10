var express = require("express");
const { getWorkspaces } = require("../controllers/workspace");
var router = express.Router();

/* GET workpaces */
router.get("", getWorkspaces);

module.exports = router;
