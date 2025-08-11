module.exports = function authMiddleware(req, res, next) {
  if (!req.session.user_id) {
    return res.redirect("/v1/login"); // куда перенаправлять, если нет авторизации
  }
  next();
};
