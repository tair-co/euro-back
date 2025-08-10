var express = require("express");
const { loginPage, workspacePage } = require("../controllers");
var router = express.Router();

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});
/* GET  Login page. */
router.get("/login", loginPage);

/* GET  Workspaces page. */
router.get("/workspace", workspacePage);

module.exports = router;
