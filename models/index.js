const User = require("./User");
const Workspace = require("./Workspace");

User.hasMany(Workspace, { foreignKey: "user_id", as: "workspaces" });
Workspace.belongsTo(User, { foreignKey: "user_id", as: "user" });
