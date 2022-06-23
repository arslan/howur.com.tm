import Head from "next/head";
import Image from "next/image";
export const ServicesComponent = ({
	props: {
		heading,
		description,
		under_description,
		img1: {
			data: {
				attributes: { url: url1 },
			},
		},
		img2: {
			data: {
				attributes: { url: url2 },
			},
		},
		img3: {
			data: {
				attributes: { url: url3 },
			},
		},
	},
}) => {
	return (
		<>
			<Head>
				<title>{heading}</title>
				<meta name="Hovur's Website" content='Construction' />
				<link rel='icon' href='/favicon.ico' />
			</Head>
			<h1 className='text-7xl'>{heading}</h1>
			<p>{description}</p>
			<p>{under_description}</p>
			<Image
				src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url1}`}
				width={500}
				height={500}
			/>
			<Image
				src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url2}`}
				width={500}
				height={500}
			/>
			<Image
				src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
				width={500}
				height={500}
			/>
		</>
	);
};
