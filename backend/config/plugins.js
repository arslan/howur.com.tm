module.exports = ({ env }) => ({
  // ...
  email: {
    provider: env("EMAIL_PROVIDER"),
    providerOptions: {
      service: env("EMAIL_SMTP_HOST"),
      auth: {
        user: env("EMAIL_SMTP_USER"),
        pass: env("EMAIL_SMTP_PASS"),
      },
    },
    settings: {
      defaultFrom: env("EMAIL_ADDRESS_FROM"),
      defaultReplyTo: env("EMAIL_ADDRESS_REPLY"),
    },
  },
  // ...
});
