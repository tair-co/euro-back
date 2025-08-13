var express = require("express");
const {
  loginPage,
  workspacePage,
  workspacesPage,
  workspaceEditPage,
} = require("../controllers");
const { getBill } = require("../controllers/bill");
var router = express.Router();
const authMiddleware = require("../utils/middleware");
/* GET home page. */
router.get("/", function (req, res, next) {
  res.render("index", { title: "Express" });
});
/* GET  Login page. */
router.get("/login", loginPage);

/* GET  Workspaces page. */
router.get("/workspaces", authMiddleware, workspacesPage);
router.get("/workspace/:id/edit", authMiddleware, workspaceEditPage);
router.get("/workspace/:id", authMiddleware, workspacePage);

/* GET bill page */
router.get("/workspaces/:workspaceId/billing", getBill);

module.exports = router;
