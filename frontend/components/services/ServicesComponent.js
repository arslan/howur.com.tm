import Head from 'next/head';
import Image from 'next/image';
import Link from 'next/link';

import Router from 'next/router';
import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import { VscDebugStackframeDot } from 'react-icons/vsc';
import { fetchAPI } from '../../lib/api';

export const ServicesComponent = ({
  props: {
    name,
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
  const router = useRouter();
  const [links, setLinks] = useState(false);
  const [loading, setLoading] = useState(true);
  const useFetch = async () => {
    const { data } = await fetchAPI('/pagas-services', {
      locale: router.locale,
    });
    const link = await data.map(({ attributes: { slug, name } }) => {
      return {
        src: `/services/${slug}`,
        name,
      };
    });
    setLinks(link);
    setLoading(false);
  };
  useEffect(() => {
    useFetch();
  }, []);

  return (
    <>
      <Head>
        <title>Höwür | {name}</title>
        <meta name="Höwür Website" content="Construction" />
        <link rel="icon" href="/favicon.svg" />
      </Head>

      <div>
        <div className="p-12 mx-auto max-w-7xl xl:flex">
          <div className="flex justify-center xl:w-1/4 sm:w-full sm:flex-row">
            <div>
              <div className="relative w-60 h-96 sm:hidden xl:block">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url1}`}
                  layout={'fill'}
                  objectFit={'cover'}
                  className="rounded-sm"
                />
              </div>
              <div className="relative mt-6 w-60 h-72 sm:hidden xl:block">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url2}`}
                  layout={'fill'}
                  objectFit={'cover'}
                  className="rounded-sm"
                />
              </div>
            </div>
            <div className="relative w-screen h-64 sm:block xl:hidden">
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
                layout={'fill'}
                objectFit={'cover'}
                className="rounded-sm"
              />
            </div>
          </div>
          <div className="w-full">
            <div className="flex h-3/5">
              <div className="relative w-1/3 mx-7 xl:block sm:hidden">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
                  layout={'fill'}
                  objectFit={'cover'}
                  className="rounded-sm"
                />
              </div>

              <div className="xl:w-2/3 sm:w-full sm:mt-8 xl:-mt-3">
                <h1 className="text-[32px] font-bold pb-6 ">{name}</h1>
                <p className="leading-8">{description}</p>
                {loading ? (
                  <p>Loading...</p>
                ) : (
                  <div className="flex flex-wrap leading-8 sm:w-full xl:w-full sm:justify-start xl:justify-start xl:mt-5 sm:mt-8 sm:gap-y-6 xl:gap-y-0">
                    {links.map(({ name, src }) => {
                      return (
                        <Link href={src} key={name}>
                          <a className="flex mr-4 font-bold hover:text-red">
                            <VscDebugStackframeDot className="mt-2" />
                            {name}
                          </a>
                        </Link>
                      );
                    })}
                  </div>
                )}
              </div>
            </div>
            <div className="flex -translate-x-28 xl:mt-20 2xl:mt-16">
              <div className="w-1/2 py-10 bg-white rounded-xl drop-shadow-xl xl:block sm:hidden">
                <div className="px-6 border-l-4 border-red sm:ml-0 xl:ml-6">
                  <p className="text-2xl font-bold">{under_description}</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};
