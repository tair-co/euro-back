const Workspace = require("../models/Workspace");

module.exports = {
  getWorkspaces: async (req, res, next) => {
    try {
      const workspaces = await Workspace.findAll();

      res.status(200).json(workspaces);
    } catch (error) {
      next(error);
    }
  },
};
