const Quota = require("./quotas");
const Token = require("./Token");
const User = require("./User");
const Workspace = require("./Workspace");

User.hasMany(Workspace, { foreignKey: "user_id", as: "workspaces" });
Workspace.belongsTo(User, { foreignKey: "user_id", as: "user" });

Workspace.hasMany(Token, { foreignKey: "workspace_id", as: "tokens" });
Token.belongsTo(Workspace, { foreignKey: "workspace_id", as: "workpaces" });

Workspace.hasMany(Quota, { foreignKey: "workspace_id", as: "quotas" });
Quota.belongsTo(Workspace, { foreignKey: "workspace_id", as: "workpaces" });
