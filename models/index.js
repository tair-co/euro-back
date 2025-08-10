const User = require("./User");
const Workspace = require("./Workspace");

Workspace.hasMany(User, { foreignKey: "user_id", as: "user" });
User.belongsTo(Workspace, { foreignKey: "user_id" });
