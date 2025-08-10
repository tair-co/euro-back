const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Bill = sequelize.define(
  "service_usages",
  {
    id: {
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
      type: DataTypes.INTEGER,
    },
    username: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    workspace_title: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    api_token_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    usage_duration_in_ms: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    usage_started_at: {
      type: DataTypes.DATE,
      allowNull: false,
    },
    service_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    service_cost_per_ms: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    timestamps: false,
  }
);

module.exports = Bill;
