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
	const navigations = await fetchAPI("/navigations", {
		sort: "sort_id",
		locale,
	});
	const under_navs = await fetchAPI("/pagas-services", {
		sort: "sort_id",
		locale,
	});
	const { data } = await fetchAPI("/layout", {
		populate: [
			"navbar.logo",
			"navbar.locals",
			// "navbar.under_navs",
			"address",
			"number",
			"footer_dev",
			"footer_dev.logo_dev",
			"footer_dev.logo_dev1",
			"footer.logo",
			"footer",
		],
		locale,
	});
	data.attributes.navbar = {
		...data.attributes.navbar,
		navigations,
		under_navs,
	};
	const layout = { ...data };

	return { ...appProps, pageProps: { layout } };
};

export default appWithTranslation(MyApp);
