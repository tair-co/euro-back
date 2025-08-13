var express = require("express");
const {
  getWorkspaces,
  createWorkspace,
  editWorkspace,
} = require("../controllers/workspace");
const { createToken, revokeToken } = require("../controllers/token");
const { removeQuota, updateOrCreateLimit } = require("../controllers/quota");
var router = express.Router();

/* GET workpaces */
router
  .get("", getWorkspaces)
  .post("/create", createWorkspace)
  .post("/:id/edit", editWorkspace);

// api/workspaces/create
/* CRUD Token */
router.post("/:workspaceId/tokens/create", createToken);
router.get("/tokens/:tokenId/revoke", revokeToken);

// CRUD Quota
router.post("/:workspaceId/quotas/create", updateOrCreateLimit);

router.get("/quotas/:quotaId/remove", removeQuota);

module.exports = router;
