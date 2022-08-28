"use strict";
/**
 * `verifyCaptcha` policy.
 */
const axios = require("axios").default;

module.exports = async (ctx) => {
  const secret = strapi.config.get("server.recaptchaSecret");
  const token = ctx.request.body.token;
  const { name, email, message } = ctx.request.body;

  if (!name || !message || !email) {
    return 400;
  }

  if (!token) {
    return 400;
  }

  try {
    console.log(secret, token);
    await axios({
      method: 'post',
      url: 'https://www.google.com/recaptcha/api/siteverify',
      params: {
        secret: secret,
        response: token,
      },
    }).then((res) => {
      if (res.data.success) {
        return true;
      } else {
        console.log(res.data);
        return 400;
      }
    });
  } catch (error) {
    console.log(error);
    return 500;
  }
};
