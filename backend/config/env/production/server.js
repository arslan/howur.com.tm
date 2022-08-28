module.exports = ({ env }) => ({
  host: env("HOST", "0.0.0.0"),
  port: env.int("PORT", 1337),
  url: env("URL", "https://howur.com.tm/strapi"),
  app: {
    keys: env.array("APP_KEYS"),
  },

  hcaptchaSecret: env(
    "HCAPTCHA_SECRET_KEY",
    "0xcA1D0294a348213315e083166471E85e0Fa9F9A2"
  ),
});
