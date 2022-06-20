import "../styles/globals.css";

import { appWithTranslation } from "next-i18next";
import Layout from "../components/Layout";

const MyApp = ({ Component, pageProps, auth }) => {
  return (
    <Layout>
      <Component {...pageProps} />
    </Layout>
  );
};

export default appWithTranslation(MyApp);
