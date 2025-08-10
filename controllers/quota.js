const Quota = require("../models/quotas");

module.exports = {
  updateOrCreateLimit: async (req, res, next) => {
    const { workspaceId } = req.params;
    const { limit } = req.body;

    try {
      const exitQuota = await Quota.findOne({
        where: {
          workspace_id: workspaceId,
          month_number: new Date().getMonth() + 1,
        },
      });
      if (exitQuota) {
        exitQuota.update({ limit });
        await exitQuota.save();
        res.redirect(`/v1/workspace/${workspaceId}`);
      } else {
        await Quota.create({
          limit: limit,
          workspace_id: workspaceId,
          month_number: new Date().getMonth() + 1,
        });
        res.redirect(`/v1/workspace/${workspaceId}`);
      }
    } catch (error) {
      next(error);
    }
  },
  removeQuota: async (req, res, next) => {
    const { quotaId } = req.params;

    let workspace_id;
    try {
      const quota = await Quota.findOne({ where: { id: quotaId } });
      workspace_id = quota.workspace_id;
      quota.destroy();
      await quota.save();

      res.redirect(`/v1/workspace/${workspace_id}`);
    } catch (error) {
      next(error);
    }
  },
};
