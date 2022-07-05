import Image from "next/image";
import Link from "next/link";
import Socialicons from "./common/SocialIcons";
import { useContext } from "react";
import { layoutContext } from "../pages/_app";

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
      <div className="max-w-7xl mx-auto flex py-2 w-full sm:px-12 2xl:px-0">
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
        <div className="flex w-11/12 self-center ">
          <div className="lg:mr-4 xl:mr-16 w-3/5 sm:hidden xl:block">
            <span className="leading-relaxed">{description}</span>
          </div>
          <div className="lg:mr-1 xl:mr-8 w-1/2">
            <h3 className="font-bold md:block sm:hidden">{title_mail}</h3>
            <Link href="mailto:howurtm@gmail.com">{mail}</Link>
          </div>
          <div className="w-1/2 flex justify-end ml-1">
            <Socialicons />
          </div>
        </div>
      </div>
      <div className="w-full md:h-12 xl:h-14 sm:bg-grey xl:bg-black sm:px-12 2xl:px-0">
        <div className="max-w-7xl mx-auto space-x-12 flex  justify-between sm:border-t-2 sm:py-2 xl:py-1 sm:border-white xl:border-none relative h-full items-center">
          <p className="xl:text-white w-1/2 sm:text-xs md:text-base">
            {permission}
          </p>
          <div className="flex self-center w-1/2 justify-end">
            <span className="sm:text-black xl:text-white sm:text-xs md:text-base">{devBy}</span>

            <span className="sm:hidden xl:block relative w-32 mb-2 lg:mb-0 h-6">
              <Link href="https://hillitilsimat.com.tm/">
                <a>
                  <Image
                    src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter_dev}`}
                    objectFit="contain"
                    layout="fill"
                    priority
                    className="cursor-pointer"
                    alt="Hilli tilsimat"
                  />
                </a>
              </Link>
            </span>
            <span className="xl:hidden sm:block relative w-32 mb-2 lg:mb-0 h-6 self-center">
              <Link href="https://hillitilsimat.com.tm/">
                <a>
                  <Image
                    // Тут рендерится черный лого
                    src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter_dev1}`}
                    objectFit="contain"
                    layout="fill"
                    priority
                    className="cursor-pointer"
                    alt="Hilli tilsimat"
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
