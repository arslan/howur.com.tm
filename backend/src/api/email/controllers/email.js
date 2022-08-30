"use strict";

/**
 * A set of functions called "actions" for `email`
 */

module.exports = {
  send: async (ctx, next) => {
    const { email, name, message } = ctx.request.body;
    strapi.log.debug(`Trying to send an email from ${email} to ${process.env.EMAIL_SMTP_USER}`);

    try {
      const emailOptions = {
        from: "Howur <howur@sanly.tm>",
        to: process.env.EMAIL_SMTP_USER,
        subject: `Message From ${name}`,
        text: message + " | Sent from: " + email,
        html: `<div>${message}</div><p>Sent from:
          ${email}</p>`,
      };

      //await strapi.services["api::email.email"].send1(emailOptions); //sending a message through the created server.. works

      // sending emails through the nodemailer provider.. does not work
      await strapi.plugins["email"].services.email.send(emailOptions);

      strapi.log.debug(`Email sent to ${process.env.EMAIL_SMTP_USER}`);
      ctx.send({ message: "Email sent" });
    } catch (err) {
      strapi.log.error(`Error sending email to ${email}`, err);
      ctx.send({ error: "Error sending email" });
    }
  },
};
