import { fetchAPI } from "../../lib/api";
import { ServicesComponent } from "../../components/services/ServicesComponent";
export async function getStaticPaths({ locales }) {
	const { data } = await fetchAPI("/pagas-services", {});
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
	const { locale } = ctx;

	const { data } = await fetchAPI(`/pagas-services`, {
		populate: "*",
		"filters[slug][$eq]": slug,
		locale,
	});

	if (!data) {
		return {
			notFound: "blocking",
		};
	}
	const responseData = data[0].attributes;
	return {
		props: { responseData },
	};
}

export default function Services({ responseData }) {
	return <ServicesComponent props={responseData} />;
}
