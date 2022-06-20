import Head from "next/head";
import { serverSideTranslations } from "next-i18next/serverSideTranslations";
 
import { useTranslation } from "next-i18next"; 

import dynamic from "next/dynamic";
 

export default function Home() {
    const { t } = useTranslation("common");

    return (
        <div className="">
            <Head>
                <title>   </title>
                <meta
                    name="  "
                    content=" "
                />
                <link rel="icon" href="/favicon.ico" />
            </Head>

             <h1 className="text-red">salam</h1>
        </div>
    );
}

export const getStaticProps = async ({ locale }) => ({
    props: {
        ...(await serverSideTranslations(locale, ["common"])),
    },
});
