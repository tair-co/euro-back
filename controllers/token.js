require("dotenv").config();
const Token = require("../models/Token");
const jwt = require("jsonwebtoken");

module.exports = {
  createToken: async (req, res, next) => {
    const { name } = req.body;
    const { workspaceId } = req.params;

    if ((!name && name.length === 0) || name.length > 100) {
      return res.redirect(
        `/v1/workspace/${workspaceId}?message=Invalid Provided Token name`
      );
    }

    try {
      const token = jwt.sign(
        { name, workspace_id: workspaceId },
        process.env.SECRET_JWT
      );

      console.log(token);
      await Token.create({ name, token, workspace_id: workspaceId });

      res.redirect(`/v1/workspace/${workspaceId}?token=${token}`);
    } catch (error) {
      return next(error);
    }
  },
  revokeToken: async (req, res, next) => {
    const { tokenId } = req.params;

    // check for token

    try {
      const existToken = await Token.findOne({ where: { id: tokenId } });

      if (!existToken) {
        return res.redirect(
          `/v1/workspace/${workspaceId}?messageToken=Not found Token`
        );
      }
      existToken.update({ revocationDate: Date.now() });
      await existToken.save();

      res.redirect(`/v1/workspace/${existToken.workspace_id}`);
    } catch (error) {
      next(error);
    }
  },
};
