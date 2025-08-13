const User = require("../models/User");
const bcrypt = require("bcrypt");

module.exports = {
  login: async (req, res, next) => {
    const { username, password } = req.body;

    // if data not provided sent again to login page
    if (!username || !password) {
      return res.redirect("/v1/login?message=Invalid username or password");
    }

    try {
      const findUser = await User.findOne({
        where: { username: username },
        raw: true,
      });

      if (!findUser) {
        return res.redirect("/v1/login?message=Invalid username or password");
      }

      const comparePasword = await bcrypt.compare(password, findUser.password);

      if (!comparePasword) {
        return res.redirect("/v1/login?message=Invalid username or password");
      }

      req.session.user_id = findUser.id;

      return res.redirect("/v1/workspaces");
    } catch (error) {
      console.log(error);
      next(error);
    }
  },
};
