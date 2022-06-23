import { fetchAPI } from "../../lib/api";
import { ServicesComponent } from "../../components/services/ServicesComponent";
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
	const { locale } = ctx.locale;

	const {
		data: { attributes: data },
	} = await fetchAPI(`/${slug}`, {
		populate: [
			"component",
			"component.img1",
			"component.img2",
			"component.img3",
		],
		locale,
	});

	if (!data) {
		return {
			notFound: "blocking",
		};
	}
	return {
		props: { data },
	};
}
export default function Services({ data: { component } }) {
	return <ServicesComponent props={component} />;
}
