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
      descTiady,
      descONV,
      descOB,
      brands: { data: brands },
    },
    about: {
      heading: aboutHeading,
      under_heading: aboutUnderHeading,
      description: aboutDesc,
      descImg: aboutDescImg,
      headImg: aboutHeadImg,
    },
    certificate: {
      heading: headCert,
      under_heading: underHeadCert,
      certificate_lists: { data: certificate_lists },
      logo: {
        data: {
          attributes: { url: logoCert },
        },
      },
    },
    form: {
      heading: formHead,
      name: formName,
      message: formMess,
      mail: formMail,
      button: formButton,
      form_number: { number: form_number },
      form_mail: { mail: form_mail },
      form_address: { address: form_address },
    },
  },
}) {
  return (
    <div className="">
      <Head>
        <meta name="Hovur's Website" content="Construction" />
        <link rel="icon" href="/favicon.ico" />
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
          descTiady,
          descONV,
          descOB,
          brands,
        }}
      />
      <AboutUsSection
        data={{
          aboutHeading,
          aboutUnderHeading,
          aboutHeadImg,
          aboutDesc,
          aboutDescImg,
        }}
      />
      <SertificatesSection
        data={{
          headCert,
          underHeadCert,
          certificate_lists,
          logoCert,
        }}
      />
      <ContactSection
        data={{
          formHead,
          formName,
          formMess,
          formMail,
          formButton,
          form_number,
          form_mail,
          form_address,
        }}
      />
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
      "certificate.certificate_lists.img",
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
