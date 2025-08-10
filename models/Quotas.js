const { DataTypes } = require("sequelize");
const sequelize = require("../config/db");

const Quota = sequelize.define(
  "quotas",
  {
    id: {
      primaryKey: true,
      autoIncrement: true,
      allowNull: false,
      type: DataTypes.INTEGER,
    },
    limit: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    workspace_id: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
    month_number: {
      type: DataTypes.INTEGER,
      allowNull: false,
    },
  },
  {
    timestamps: false,
  }
);

module.exports = Quota;
