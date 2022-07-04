"use strict";

/**
 * A set of functions called "actions" for `email`
 */

module.exports = {
  send: async (ctx, next) => {
    const body = ctx.request.body;
    const sendTo = body.email;
    strapi.log.debug(`Trying to send an email to ${sendTo}`);

    try {
      const emailOptions = {
        to: sendTo,
        subject: "This is a test",
        text: "Welcome!",
      };

      await strapi.services["api::email.email"].send1(emailOptions); //sending a message through the created server.. works
      /**
       * sending emails through the nodemailer provider.. does not work
       * await strapi.plugins["email"].services.email.send(emailOptions);
       */

      strapi.log.debug(`Email sent to ${sendTo}`);
      ctx.send({ message: "Email sent" });
    } catch (err) {
      strapi.log.error(`Error sending email to ${sendTo}`, err);
      ctx.send({ error: "Error sending email" });
    }
  },
};
