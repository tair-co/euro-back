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
        100000
      ).toFixed(6);

      obj[token][index].service_cost_per_ms = Number(
        obj[token][index].service_cost_per_ms
      );
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

      if (month && month !== "none") {
        const monthMap = {
          april: 4,
          may: 5,
          june: 6,
          july: 7,
          august: 8,
          september: 9,
          october: 10,
          november: 11,
          december: 12,
          january: 1,
          february: 2,
          march: 3,
        };

        const filteredData = findBillings.filter((b) => {
          console.log(
            monthMap[month] === new Date(b.usage_started_at).getMonth() + 1
          );
          console.log(monthMap[month]);
          console.log(new Date(b.usage_started_at).getMonth() + 1);
          return (
            monthMap[month] === new Date(b.usage_started_at).getMonth() + 1
          );
        });
        console.log(filteredData);
        return res.render("bill", {
          filteredData: separateByTokens(filteredData),
          month,
          grandTotal: calcGrandTotal(filteredData),
        });
      } else {
        const tokens = separateByTokens(findBillings);

        console.log(tokens);
        return res.render("bill", {
          filteredData: tokens,
          grandTotal: "4.31",
          month: "All month",
        });
      }
    } catch (error) {
      next(error);
    }
  },
};
