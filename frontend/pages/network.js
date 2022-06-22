import Head from "next/head";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";

import { useTranslation } from "next-i18next";

import dynamic from "next/dynamic";

export default function Home() {
  const { t } = useTranslation("common");

  return (
    <div className="">
      <Head>
        <title>{t("common.title")}</title>
        <meta name="Hovur's Website" content="Construction" />
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <p className="text-7xl">Network projection</p>
    </div>
  );
}

export const getStaticProps = async ({ locale }) => ({
  props: {
    ...(await serverSideTranslations(locale, ["common"])),
  },
});
