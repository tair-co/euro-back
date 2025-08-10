// pages render controller

const Workspace = require("../models/Workspace");

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

    // get Data
    try {
      workspace = await Workspace.findOne({ raw: true, where: { id } });
    } catch (error) {
      return next(error);
    }

    if (message) {
      return res.render("workspace", { workspace, message });
    }
    res.render("workspace", { workspace });
  },
};
