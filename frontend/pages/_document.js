import Document, { Html, Head, Main, NextScript } from "next/document";

class MyDocument extends Document {
	static async getInitialProps(ctx) {
		const initialProps = await Document.getInitialProps(ctx);
		return { ...initialProps };
	}

	render() {
		return (
			<Html>
				<Head>
					<link rel='preconnect' href='https://fonts.googleapis.com' />
					<link rel='preconnect' href='https://fonts.gstatic.com' crossOrigin="true" />
					<link
						href='https://fonts.googleapis.com/css2?family=Montserrat:wght@200;400&display=swap'
						rel='stylesheet'
					/>
					<meta name="Howur's Website" content='Your reliable partner in Turkmenistan.' />
					<meta name="google-site-verification" content="1zRIljHWLSquTw2zHhzTeg5hgSjrnuSQZ4dg1zEtFTc" />
					<meta name="yandex-verification" content="f7cb421ddf1bf5ef" />
					<link rel='icon' href='/favicon.ico' />
				</Head>
				<body>
					<Main />
					<NextScript />
				</body>
			</Html>
		);
	}
}

export default MyDocument;
