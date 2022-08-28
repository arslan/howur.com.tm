module.exports = ({ env }) => ({
  // ...
  email: {
    config: {
      provider: "nodemailer",
      providerOptions: {
        host: "smtp.yandex.ru",
        port: 465, // no need to set host or port etc.
        secure:true,
        auth: {
          user: "howur.com.tm@hillitilsimat.com",
          pass: `fczvcuwgvbwwmoha`,
        },
      },
      settings: {
        defaultFrom: "howur.com.tm <howur.com.tm@hillitilsimat.com>",
        defaultReplyTo: "howur.com.tm <howur.com.tm@hillitilsimat.com>",
      },
    },
  },
  // ...
});
