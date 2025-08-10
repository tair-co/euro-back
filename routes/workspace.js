var express = require("express");
const { getWorkspaces, createWorkspace } = require("../controllers/workspace");
var router = express.Router();

/* GET workpaces */
router.get("", getWorkspaces).post("/create", createWorkspace);

module.exports = router;
