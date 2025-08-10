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
  workspacePage: async (req, res, next) => {
    let workspaces;

    // get Data
    try {
      workspaces = await Workspace.findAll();
    } catch (error) {
      return next(error);
    }

    res.render("workspace", { workspaces });
  },
};
