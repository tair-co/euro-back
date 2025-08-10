class apiResponse {
  static success(res, data) {
    return res.status(200).json(data);
  }
}

module.exports = apiResponse;
