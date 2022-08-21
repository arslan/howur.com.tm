import ServicesSection from '../components/ServicesSection';
import AboutUsSection from '../components/AboutUsSection';
import ContactSection from '../components/ContactSection';
import Hero from '../components/Hero';
import ProductsSection from '../components/products/ProductsSection';
import { fetchAPI } from '../lib/api';
import { NextSeo } from 'next-seo';

import dynamic from 'next/dynamic';

const DynamicCertificates = dynamic(
  () => import('../components/Certificates'),
  { ssr: false }
);

import Certificates from '../components/Certificates';

export default function Home({
  data: {
    headVideo: {
      data: {
        attributes: { url: headVideo },
      },
    },
    head,
    desc,
    headButton,
    services: {
      heading,
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
    <>
      <NextSeo
        title="Höwür | Ваш надежных партнёр в Туркменистане."
        description="Construction, CCTV, Networking, Elevators, Design, Fire Safety."
        canonical="https://www.howur.com.tm/"
      />
      <div className="">
        <Hero data={{ headVideo, head, desc, headButton }} />
        <ServicesSection
          data={{
            heading,
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
        <DynamicCertificates
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
    </>
  );
}

export const getStaticProps = async ({ locale }) => {
  const service_lists = await fetchAPI('/service-lists', {
    populate: '*',
    locale,
    sort: 'sort_id',
  });
  const {
    data: { attributes: data },
  } = await fetchAPI('/main', {
    populate: [
      'headVideo',
      'services',
      'product',
      'product.brands.product_lists.img',
      'about',
      'about.headImg',
      'about.descImg',
      'certificate',
      'certificate.logo',
      'certificate.certificate_lists.img',
      'form',
      'form.form_address',
      'form.form_mail',
      'form.form_number',
    ],
    locale,
  });
  data.services = { ...data.services, service_lists };
  return {
    props: { data },
	  revalidate: 10,
  };
};
