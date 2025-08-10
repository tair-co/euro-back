const Bill = require("../models/Bill");
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
      // суммируем значения
      obj[token][index].usage_duration_in_ms += arr[i].usage_duration_in_ms;
      obj[token][index].service_cost_per_ms += arr[i].service_cost_per_ms;
    } else {
      obj[token].push({ ...arr[i] });
    }
  }

  return obj;
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

      const findBillings = await Bill.findAll({
        raw: true,
        where: { workspace_title: exitWorkspaces.title },
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

        return res.render("bill", { filteredData: tokens, month: "none" });
      }
    } catch (error) {
      next(error);
    }
  },
};
