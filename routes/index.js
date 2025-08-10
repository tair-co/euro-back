var express = require("express");
const { loginPage, workspacePage, workspacesPage } = require("../controllers");
const { getBill } = require("../controllers/bill");
var router = express.Router();

/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});
/* GET  Login page. */
router.get("/login", loginPage);

/* GET  Workspaces page. */
router.get("/workspaces", workspacesPage);
router.get("/workspace/:id", workspacePage);

/* GET bill page */
router.get("/workspaces/:workspaceId/billing", getBill);

module.exports = router;
