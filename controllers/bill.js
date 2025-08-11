const Bill = require("../models/Bill");
const User = require("../models/User");
const Workspace = require("../models/Workspace");

function separateByTokens(arr) {
  let obj = {};

  for (let i = 0; i < arr.length; i++) {
    const token = arr[i].api_token_name;

    if (!obj[token]) {
      obj[token] = [];
    }

    const index = obj[token].findIndex(
      (item) => item.service_name === arr[i].service_name
    );

    if (index !== -1) {
      obj[token][index].usage_duration_in_ms = (
        (Number(obj[token][index].usage_duration_in_ms) +
          Number(arr[i].usage_duration_in_ms)) /
        1000
      ).toFixed(3);
      obj[token][index].service_cost_per_ms = (
        Number(obj[token][index].service_cost_per_ms) +
        Number(arr[i].service_cost_per_ms)
      ).toFixed(4);
      obj[token][index].total = (
        Number(obj[token][index].usage_duration_in_ms) /
        Number(obj[token][index].service_cost_per_ms)
      ).toFixed(2);
    } else {
      obj[token].push({ ...arr[i] });
    }
  }

  return obj;
}

function calcGrandTotal(tokensObj) {
  let grandTotal = 0;

  for (const token in tokensObj) {
    if (Array.isArray(tokensObj[token])) {
      for (const item of tokensObj[token]) {
        grandTotal += Number(item.total || 0);
      }
    }
  }

  return grandTotal;
}

module.exports = {
  getBill: async (req, res, next) => {
    const { workspaceId } = req.params;
    const { month } = req.query;

    try {
      const exitWorkspaces = await Workspace.findOne({
        raw: true,
        where: { id: workspaceId },
      });
      const user = await User.findOne({
        id: req.session.user_id,
      });
      const findBillings = await Bill.findAll({
        raw: true,
        where: {
          workspace_title: exitWorkspaces.title,
          username: user.username,
        },
      });

      if (month) {
        const filteredData = findBillings.filter(
          (b) => Number(month) === new Date(b.usage_started_at).getMonth() + 1
        );

        return res.render("bill", {
          filteredData: separateByTokens(filteredData),
          month,
        });
      } else {
        const tokens = separateByTokens(findBillings);

        console.log(tokens);

        return res.render("bill", {
          filteredData: tokens,
          month: "none",
          grandTotal: calcGrandTotal(tokens),
        });
      }
    } catch (error) {
      next(error);
    }
  },
};
