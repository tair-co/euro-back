const Quota = require("../models/quotas");
const Token = require("../models/Token");
const Workspace = require("../models/Workspace");

// pages render controller

module.exports = {
  loginPage: async (req, res, next) => {
    const { message } = req.query;

    if (message) {
      return res.render("login", { message });
    }

    res.render("login");
  },

  workspacesPage: async (req, res, next) => {
    const { message } = req.query;

    let workspaces;

    // get Data
    try {
      workspaces = await Workspace.findAll();
    } catch (error) {
      return next(error);
    }

    if (message) {
      return res.render("workspaces", { workspaces, message });
    }
    res.render("workspaces", { workspaces });
  },
  workspacePage: async (req, res, next) => {
    const { message } = req.query;
    const { id } = req.params;

    let workspace;
    let quota;
    // get Data
    try {
      workspace = await Workspace.findOne({
        where: { id },
        include: [{ model: Token, as: "tokens" }],
      });

      quota = await Quota.findOne({
        where: { workspace_id: id, month_number: new Date().getMonth() + 1 },
      });
    } catch (error) {
      return next(error);
    }

    let transferObj = { workspace, quota };
    if (quota) {
      const today = new Date();
      const nextMonth = new Date(today.getFullYear(), today.getMonth() + 1, 1);
      const diffTime = nextMonth - today;
      const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

      transferObj.remainingDays = diffDays - 1;
    }

    if (Object.keys(req.query).length > 0) {
      return res.render("workspace", { ...transferObj, ...req.query });
    }

    res.render("workspace", { workspaceId: id, ...transferObj });
  },
};
