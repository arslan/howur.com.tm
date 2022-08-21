module.exports = ({ env }) => ({
  // ...
    email: {
      config: {
        provider: 'nodemailer',
	providerOptions: {
	  service: 'Yandex', // no need to set host or port etc.
	  auth: {
	    user: 'howur.com.tm@hillitilsimat.com',
	    pass: `fczvcuwgvbwwmoha`
	  },
	},
	settings: {
	  defaultFrom: 'howur.com.tm <howur.com.tm@hillitilsimat.com>',
          defaultReplyTo: 'howur.com.tm <howur.com.tm@hillitilsimat.com>',
	},
      },
    },
  // ...
});
