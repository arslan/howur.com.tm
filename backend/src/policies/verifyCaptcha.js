"use strict";
const { verify } = require("hcaptcha");
/**
 * `verifyCaptcha` policy.
 */

module.exports = async (ctx, next) => {
  const secret = strapi.config.get("server.hcaptchaSecret");
  const token = ctx.request.body.token;
  const { name, email, message } = ctx.request.body;

  console.log(name, email, message, token);
  if (!name || !message || !email) {
    return 400;
  }

  if (!token) {
    return 400;
  }

  try {
    console.log(secret, token);
    let { success } = await verify(secret, token);
    console.log(success);

    if (success) {
      // Equivalent to sending a HTTP 200 status as a server response
      console.log("Message sent!");
      return true;
    } else {
      return 400;
    }
  } catch (error) {
    return 500;
  }
};
