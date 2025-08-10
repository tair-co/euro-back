const User = require("../models/User");
const bcrypt = require("bcrypt");

module.exports = {
  login: async (req, res, next) => {
    const { username, password } = req.body;

    // if data not provided sent again to login page
    if (!username || !password) {
      return res.redirect("/v1/login?message=invalid data provided");
    }

    try {
      const findUser = await User.findOne({
        where: { username: username },
        raw: true,
      });

      if (!findUser) {
        return res.redirect("/v1/login?message=not found user");
      }

      const comparePasword = await bcrypt.compare(password, findUser.password);

      if (!comparePasword) {
        return res.redirect("/v1/login?message=invalid password");
      }

      return res.redirect("/v1/workspaces");
    } catch (error) {
      console.log(error);
      next(error);
    }
  },
};
