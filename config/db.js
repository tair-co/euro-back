const { Sequelize } = require("sequelize");
const bcrypt = require("bcrypt");

const sequelize = new Sequelize("euroskills2023", "root", "", {
  host: "MySql-8.2",
  dialect: "mysql",
});

module.exports = sequelize;

const User = require("../models/User");

// func to create default users with password hashed

const createHash = async (name, password) => {
  try {
    await User.update(
      { password: await bcrypt.hash(password, 10) },
      { where: { username: name } }
    );
  } catch (error) {
    return error;
  }
};

require("../models/index");

// createHash("demo1", "skills2023d1");
// createHash("demo2", "skills2023d2");
