import Head from "next/head";
import { fetchAPI } from "../../lib/api";
// import { useTranslation } from "next-i18next";
// import { serverSideTranslations } from "next-i18next/serverSideTranslations";
export async function getStaticPaths({ locales }) {
	const {
		data: {
			attributes: {
				navbar: {
					under_navs: { data },
				},
			},
		},
	} = await fetchAPI("/layout", {
		populate: ["navbar.under_navs"],
	});
	const paths = data.flatMap(({ attributes: { slug } }) => {
		return locales.map((locale) => ({
			params: { slug },
			locale,
		}));
	});
	return {
		paths,
		fallback: false,
	};
}

export async function getStaticProps(ctx) {
	const { slug } = ctx.params;
	const {
		data: { attributes: data },
	} = await fetchAPI(`/${slug}`, {
		populate: ["component"],
		locale: ctx.locale,
	});
	console.log(data);
	if (!data) {
		return {
			notFound: "blocking",
		};
	}
	return {
		props: { data },
	};
}
export default function Services({
	data: {
		component: { heading },
	},
}) {
	// const { t } = useTranslation("common");

	return (
		<div className=''>
			<Head>
				<title>{heading}</title>
				<meta name="Hovur's Website" content='Construction' />
				<link rel='icon' href='/favicon.ico' />
			</Head>
			<p className='text-7xl'>{heading}</p>
		</div>
	);
}
