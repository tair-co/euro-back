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
  createWorkspace: async (req, res, next) => {
    const { title, description } = req.body;

    if (!title && title.length == "") {
      return res.redirect("/v1/workspaces?message=Title required");
    }

    try {
      // TODO: add user_id

      const exitsTitle = await Workspace.findOne({
        where: {
          title,
          //   user_id,
        },
      });

      if (exitsTitle) {
        return res.redirect(
          "/v1/workspaces?message=Workspace with this title already has"
        );
      }

      // TODO: CHANGE static user_id

      await Workspace.create({ title, description, user_id: 1 });

      res.redirect("/v1/workspaces");
    } catch (error) {
      next(error);
    }
  },
};
