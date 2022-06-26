import Head from "next/head";
import Image from "next/image";
import Router from "next/router";
import { useRouter } from "next/router";

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
  const router = useRouter();
  console.log(router.asPath);
  const links = [
    "/services/sonstruction-service",
    "/services/design-service",
    "/services/fire-safety-service",
    "/services/elevator-dispatching-service",
    "/services/network-service",
    "/services/video-surveillance",
  ];
  const prev = () => {
    let currentIndex = links.indexOf(router.asPath);
    let index = currentIndex;
    if (currentIndex == 0) {
      index = 5;
    } else {
      index = currentIndex - 1;
    }
    Router.push({
      pathname: links[index],
    });
  };

  const next = () => {
    let currentIndex = links.indexOf(router.asPath);
    let index = currentIndex;
    if (currentIndex == 5) {
      index = 0;
    } else {
      index = currentIndex + 1;
    }
    Router.push({
      pathname: links[index],
    });
  };
  return (
    <>
      <Head>
        <title>{heading}</title>
        <meta name="Hovur's Website" content="Construction" />
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <div>
        <div className="max-w-7xl mx-auto space-x-12 flex py-12 px-12">
          <div className="w-1/4">
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url1}`}
              width={316}
              height={238}
              className="rounded-sm"
            />
            <div className="h-6"></div>
            <Image
              src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url2}`}
              width={316}
              height={347}
              className="rounded-sm"
            />
          </div>
          <div className="w-3/4">
            <div className="flex space-x-8 h-3/5">
              <div className="w-1/3">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
                  width={316}
                  height={406}
                  className="rounded-sm"
                />
              </div>
              <div className="w-2/3 ">
                <h1 className="text-[32px] font-bold pb-6 ">{heading}</h1>
                <p className="leading-8">{description}</p>
              </div>
            </div>
            <div className="flex space-x-8 mt-12">
              <div className="bg-white rounded-lg drop-shadow-lg w-1/2 py-10">
                <div className="border-l-4 border-red ml-6 px-6">
                  <p className="font-bold text-2xl">{under_description}</p>
                </div>
              </div>
              <div className="w-1/2 flex space-x-6 items-end ">
                <button
                  onClick={() => prev()}
                  className="bg-red rounded-md h-12 w-1/2 text-white "
                >
                  Back
                </button>
                <button
                  onClick={() => next()}
                  className="bg-red rounded-md h-12 w-1/2 text-white "
                >
                  Next
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};
