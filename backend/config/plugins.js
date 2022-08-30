module.exports = ({ env }) => ({
  // ...
  email: {
    config: {
      provider: "nodemailer",
      providerOptions: {
        host: "smtp.sanly.tm",
        port: 465, // no need to set host or port etc.
        secure: true,
        auth: {
          user: "howur@sanly.tm",
          pass: `Miras@480812`,
        },
      },
      settings: {
        defaultFrom: "Howur <howur@sanly.tm>",
        defaultReplyTo: "Howur <howur@sanly.tm>",
      },
    },
  },
  // ...
});
