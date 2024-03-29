import Image from "next/image";
import Link from "next/link";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import { MdOutlineEmail } from "react-icons/md";
import Socialicons from "./common/SocialIcons";
import Form from "./Form";

const AboutUsSection = ({
  data: {
    aboutHeading,
    aboutUnderHeading,
    aboutHeadImg: {
      data: {
        attributes: { url: aboutHeadImg },
      },
    },
    aboutDesc,
    aboutDescImg: {
      data: {
        attributes: { url: aboutDescImg },
      },
    },
  },
}) => {
  return (
    <div className="bg-[linear-gradient(40deg,#cd320212_0%,#cd320200_41.63%)] pt-12">
      <div className="mx-auto max-w-7xl 2xl:px-0 sm:px-12" id="aboutUs">
        <div>
          <div className="flex items-center">
            <div className="relative w-1/2">
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${aboutHeadImg}`}
                width={800}
                height={500}
                alt=""
              />
            </div>

            <div className="sm:border-l-8 lg:border-l-[16px] border-red :-translate-x-1 lg:-translate-x-2 h-20"></div>
            <h2 className="text-3xl font-bold">{aboutHeading}</h2>
          </div>
          <div className="flex">
            <div className="w-1/3 px-6 ">
              <div className="sm:hidden xl:block">
                <h2 className="font-bold sm:text-sm lg:text-lg 2xl:text-[28px]">
                  {aboutUnderHeading}
                </h2>
                <p>{aboutDesc}</p>
              </div>
            </div>
            <div className="relative w-1/2 -translate-y-12 sm:ml-auto xl:mr-12 sm:-translate-x-12 sm:-translate-y-6">
              <Image
                src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${aboutDescImg}`}
                width={800}
                height={500}
                alt=""
              />
            </div>
          </div>
          <div className="sm:block xl:hidden ">
                <h2 className="font-bold sm:text-sm lg:text-lg 2xl:text-[28px]">
                  {aboutUnderHeading}
                </h2>
                <p>{aboutDesc}</p>
              </div>
        </div>
      </div>
    </div>
  );
};

export default AboutUsSection;
