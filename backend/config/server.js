module.exports = ({ env }) => ({
  host: env("HOST", "0.0.0.0"),
  port: env.int("PORT", 1337),
  url: env("URL", ""),
  app: {
    keys: env.array("APP_KEYS"),
  },
  hcaptchaSecret: env(
    "HCAPTCHA_SECRET_KEY",
    "0x0000000000000000000000000000000000000000"
  ),
});
