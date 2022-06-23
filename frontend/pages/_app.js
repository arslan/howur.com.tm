import "../styles/globals.css";
import App from "next/app";
import { fetchAPI } from "../lib/api";
import { useRouter } from "next/router";

import { appWithTranslation } from "next-i18next";
import Layout from "../components/Layout";
import { createContext } from "react";
export const layoutContext = createContext();
const MyApp = ({ Component, pageProps, auth }) => {
	const router = useRouter();
	const { layout } = pageProps;
	return (
		<layoutContext.Provider value={layout}>
			<Layout>
				<Component {...pageProps} />
			</Layout>
		</layoutContext.Provider>
	);
};

MyApp.getInitialProps = async (ctx) => {
	const {
		router: { locale },
	} = ctx;
	const appProps = await App.getInitialProps(ctx);
	const { data } = await fetchAPI("/layout", {
		populate: [
			"navbar.logo",
			"navbar.locals",
			"navbar.navigations",
			"navbar.under_navs",
			"address",
			"number",
			"footer_dev",
			"footer_dev.logo_dev",
			"footer.logo",
			"footer",
		],
		locale,
	});
	return { ...appProps, pageProps: { layout: data } };
};

export default appWithTranslation(MyApp);
