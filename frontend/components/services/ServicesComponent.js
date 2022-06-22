import Head from "next/head";
export const ServicesComponent = ({ props }) => {
	return (
		<>
			<Head>
				<title>{props.heading}</title>
				<meta name="Hovur's Website" content='Construction' />
				<link rel='icon' href='/favicon.ico' />
			</Head>
			<h1 className='text-7xl'>{props.heading}</h1>
		</>
	);
};
