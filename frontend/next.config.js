const { i18n } = require("./next-i18next.config");

module.exports = {
	i18n,
	env: {
		NEXT_PUBLIC_RECAPTCHA_SITE_KEY: process.env.NEXT_PUBLIC_RECAPTCHA_SITE_KEY,
	},
	images: {
		domains: [process.env.IMAGE_DOMAIN],
	},
};
