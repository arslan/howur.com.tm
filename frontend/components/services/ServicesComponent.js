import Head from "next/head";
import Image from "next/image";
import Link from "next/link";

import Router from "next/router";
import { useRouter } from "next/router";
import { VscDebugStackframeDot } from "react-icons/vsc";

export const ServicesComponent = ({
  props: {
    heading,
    description,
    under_description,
    buttonBack,
    buttonNext,
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
    { src: "/services/sonstruction-service", name: "sonstruction-serviceding" },
    { src: "/services/design-service", name: "design-service" },
    { src: "/services/fire-safety-service", name: "fire-safety-service" },
    { src: "/services/elevator-dispatching-service", name: "elevator-dispatching-service" },
    { src: "/services/network-service", name: "network-service" },
    { src: "/services/video-surveillance", name: "video-surveillance" },
  ];
  let validButton = links.indexOf(router.asPath);
  const prev = () => {
    let currentIndex = links.indexOf(router.asPath);
    let index = currentIndex;
    if (currentIndex == 0) {
      index = 5;
    } else {
      index = currentIndex - 1;
      validButton = currentIndex - 1;
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
      validButton = currentIndex + 1;
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
        <div className="max-w-7xl mx-auto space-x-12 xl:flex p-12">
          <div className="xl:w-1/4 sm:w-full flex sm:flex-row xl:flex-col items-center justify-center md:space-x-6 sm:space-x-0">
            <div>
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
            <span className="sm:block xl:hidden sm:-translate-x-6 md:translate-x-0">
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
                width={316}
                height={500}
                className="rounded-sm "
              />
            </span>
          </div>
          <div className="w-3/4">
            <div className="bg-white rounded-lg drop-shadow-lg sm:w-full xl:w-1/2 py-10 xl:hidden sm:block">
              <div className="border-l-4 border-red ml-6 px-6">
                <p className="font-bold text-2xl">{under_description}</p>
              </div>
            </div>
            <div className="flex space-x-8 h-3/5">
              <div className="w-1/3 xl:block sm:hidden">
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
                  width={316}
                  height={406}
                  className="rounded-sm"
                />
              </div>

              <div className="xl:w-2/3 sm:w-full sm:mt-8 xl:mt-0">
                <h1 className="text-[32px] font-bold pb-6 ">{heading}</h1>
                <p className="leading-8">{description}</p>
              </div>
            </div>
            <div className="flex space-x-8 xl:mt-16 2xl:mt-12">
              <div className="bg-white rounded-lg drop-shadow-lg w-1/2 py-10 xl:block sm:hidden">
                <div className="border-l-4 border-red sm:ml-0 xl:ml-6 px-6">
                  <p className="font-bold text-2xl">{under_description}</p>
                </div>
              </div>
              {/* <div className='sm:w-full xl:w-1/2 flex space-x-6 items-end xl:mt-0 sm:mt-8 justify-center'>
								{validButton > 0 && (
									<button
										onClick={() => prev()}
										className='bg-red rounded-md h-12 w-1/2 text-white '
									>
										{buttonBack}
									</button>
								)}
								{validButton < links.length - 1 && (
									<button
										onClick={() => next()}
										className='bg-red rounded-md h-12 w-1/2 text-white '
									>
										{buttonNext}
									</button>
								)}
							</div> */}
              <div className='flex flex-wrap sm:w-full xl:w-1/2 sm:justify-start xl:justify-start xl:mt-0 sm:mt-8 sm:gap-y-6 xl:gap-y-0'>
                {links.map(({ name, src }) => {
                  return (
                    <Link href={src}>
                      <a className="flex hover:text-red font-bold mr-4">
                        <VscDebugStackframeDot className="mt-1"/>
						{/* Пропиши тут пожалуйста названия */}
                        {name}
                      </a>
                    </Link>
                  );
                })}
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
};
