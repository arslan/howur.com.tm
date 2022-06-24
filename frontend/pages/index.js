import Head from "next/head";

import ServicesSection from "../components/ServicesSection";
import AboutUsSection from "../components/AboutUsSection";
import SertificatesSection from "../components/SertificatesSection";
import ContactSection from "../components/ContactSection";
import Hero from "../components/Hero";
import ProductsSection from "../components/products/ProductsSection";
import { fetchAPI } from "../lib/api";

export default function Home({
	data: {
		headImg: {
			data: {
				attributes: { url: headImg },
			},
		},
		services: {
			heading,
			under_heading,
			description,
			button,
			service_lists: { data: service_lists },
		},
		product: {
			heading: proHeading,
			description: proDesc,
			brands: {
				product_lists: { data: product_lists },
				name: brand,
			},
		},
	},
}) {
	return (
		<div className=''>
			<Head>
				<meta name="Hovur's Website" content='Construction' />
				<link rel='icon' href='/favicon.ico' />
			</Head>
			<Hero img={headImg} />
			<ServicesSection
				data={{
					heading,
					under_heading,
					description,
					button,
					service_lists,
				}}
			/>
			<ProductsSection
				data={{
					proHeading,
					proDesc,
					product_lists,
					brand,
				}}
			/>
			<AboutUsSection />
			<SertificatesSection />
			<ContactSection />
		</div>
	);
}

export const getStaticProps = async ({ locale }) => {
	const {
		data: { attributes: data },
	} = await fetchAPI("/main", {
		populate: [
			"headImg",
			"services",
			"services.service_lists.img",
			"product",
			"product.brands.product_lists.img",
			"about",
			"about.headImg",
			"about.descImg",
			"certificate",
			"certificate.logo",
			"certificate.certificate_lists",
			"form",
			"form.form_address",
			"form.form_mail",
			"form.form_number",
		],
		locale,
	});
	return {
		props: { data },
	};
};
