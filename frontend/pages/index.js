import Head from "next/head";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";

import { useTranslation } from "next-i18next";
import ServicesSection from "../components/ServicesSection";
import AboutUsSection from "../components/AboutUsSection";
import SertificatesSection from "../components/SertificatesSection";
import ContactSection from "../components/ContactSection";
import Hero from "../components/Hero";
import ProductsSection from "../components/products/ProductsSection";


export default function Home() {
  const { t } = useTranslation("common");

  return (
    <div className="">
      <Head>
        <title>{t("common.title")}</title>
        <meta name="Hovur's Website" content="Construction" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Hero />
      <ServicesSection />
      <ProductsSection />
      <AboutUsSection />
      <SertificatesSection />
      <ContactSection />

    </div>
  );
}

export const getStaticProps = async ({ locale }) => ({
  props: {
    ...(await serverSideTranslations(locale, ["common"])),
  },
});
