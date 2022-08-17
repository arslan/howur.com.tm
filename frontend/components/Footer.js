import Image from 'next/image';
import Link from 'next/link';
import Socialicons from './common/SocialIcons';
import { useContext } from 'react';
import { layoutContext } from '../pages/_app';

const Footer = () => {
  const {
    attributes: {
      footer: {
        description,
        title_mail,
        mail,
        logo: {
          data: {
            attributes: { url: urlFooter },
          },
        },
      },
      footer_dev: {
        permission,
        logo_dev: {
          data: {
            attributes: { url: urlFooter_dev },
          },
        },
        logo_dev1: {
          data: {
            attributes: { url: urlFooter_dev1 },
          },
        },
        devBy,
      },
    },
  } = useContext(layoutContext);

  return (
    <div className="w-full bg-grey">
      <div className="flex w-full py-2 mx-auto max-w-7xl sm:px-12 2xl:px-0">
        <div className="w-1/12 mr-12">
          <span className="cursor-pointer sm:hidden xl:block">
            <Link href="/" passHref>
              <a>
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter}`}
                  width={98}
                  height={118}
                  alt=""
                />
              </a>
            </Link>
          </span>
          <span className="cursor-pointer xl:hidden sm:block">
            <Link href="/" passHref>
              <a>
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter}`}
                  width={42}
                  height={55}
                  alt=""
                />
              </a>
            </Link>
          </span>
        </div>
        <div className="flex self-center w-11/12 ">
          <div className="w-3/5 lg:mr-4 xl:mr-16 sm:hidden xl:block">
            <span className="leading-relaxed">{description}</span>
          </div>
          <div className="w-1/2 lg:mr-1 xl:mr-8">
            <h3 className="font-bold md:block sm:hidden">{title_mail}</h3>
            <Link href="mailto:howurtm@gmail.com">{mail}</Link>
          </div>
          <div className="flex justify-end w-1/2 ml-1">
            <Socialicons />
          </div>
        </div>
      </div>
      <div className="w-full md:h-12 xl:h-14 sm:bg-grey xl:bg-black sm:px-12 2xl:px-0">
        <div className="relative flex items-center h-full mx-auto sm:flex-col xl:flex-row xl:space-x-12 xl:justify-between max-w-7xl sm:border-t-2 sm:py-2 xl:py-1 sm:border-white xl:border-none">
          <p className="w-full xl:text-left sm:text-center sm:mb-4 xl:mb-0 xl:text-white sm:text-xs md:text-base">
            {permission}
          </p>
          <div className="flex self-center xl:justify-end sm:justify-center">
            <span className="xl:w-[5.5rem] my-auto sm:mr-1 xl:mr-0 sm:text-black xl:text-white sm:text-xs ">
              {devBy}
            </span>
            <span className="text-xs font-bold xl:hidden sm:block">
              <Link href="https://hillitilsimat.com.tm/">
                <a>hillitilsimat.</a>
              </Link>
            </span>

            <span className="relative w-24 h-6 mb-2 sm:hidden xl:block lg:mb-0">
              <Link href="https://hillitilsimat.com.tm/">
                <a>
                  <Image
                    src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter_dev}`}
                    objectFit="contain"
                    layout="fill"
                    priority
                    className="cursor-pointer"
                    alt="Hilli Tilsimat"
                  />
                </a>
              </Link>
            </span>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Footer;
