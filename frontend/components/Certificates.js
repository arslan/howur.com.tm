import { HiArrowNarrowLeft, HiArrowNarrowRight } from 'react-icons/hi';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import Link from 'next/link';
import {v4 as uuid_v4} from 'uuid'

import Image from 'next/image';

import { Navigation, Pagination, Mousewheel, Keyboard, Autoplay } from 'swiper';

const Certificates = ({
  data: { headCert, underHeadCert, certificate_lists, logoCert },
}) => {
  const img = certificate_lists.map(
    ({
      attributes: {
        img: {
          data: {
            attributes: { url: img },
          },
        },
      },
    }) => ({ img })
  );

  return (
    <div className="bg-[linear-gradient(133deg,#cd320212_0%,#cd320200_41.63%)] pt-12">
      <div className="bg-[linear-gradient(40deg,#cd320212_0%,#cd320200_41.63%)]">
        <div
          className="py-12 mx-auto max-w-7xl 2xl:px-0"
          id="sertificates"
        >
          <div className="flex flex-col items-center">
            <h2 className="text-3xl font-bold text-center">{headCert}</h2>
            <Link href="/" passHref>
              <a>
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${logoCert}`}
                  width={98}
                  height={118}
                  alt=""
                />
              </a>
            </Link>
          </div>
          <div className="flex flex-col">
            <div className="z-10 flex mx-auto mt-4 sm:hidden xl:block">
              <button as="div" className="z-20 mx-2 prev-button-hero">
                <HiArrowNarrowLeft color="red" size={36} />
              </button>

              <button as="div" className="z-20 mx-2 next-button-hero">
                <HiArrowNarrowRight color="red" size={36} />
              </button>
            </div>
            <Swiper
              loop={true}
              navigation={{
                nextEl: '.next-button-hero',
                prevEl: '.prev-button-hero',
              }}
              pagination={{
                clickable: true,
              }}
              breakpoints={{
                300: {
                    slidesPerView: 2,
                },
                768: {
                    slidesPerView: 5,
                }
              }}
              slidesPerView={5}
              mousewheel={true}
              keyboard={true}
              autoplay={true}
              centeredSlides={true}
              modules={[Navigation, Pagination, Mousewheel, Keyboard, Autoplay]}
              className="2xl:w-full sm:w-screen 2xl:px-0"
            >
              {img.map(({ img }) => {
                return (
                  <SwiperSlide key={uuid_v4()}>
                    {({ isActive }) => (
                      <div className="h-96">
                        <div
                          className={`flex items-center justify-center my-20 transition-all origin-bottom duration-300
                        ${isActive ? 'scale-125 h-80' : 'h-72 sm:h-52 md:h-64 scale-100'}`}
                        >
                          <Image
                            src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${img}`}
                            layout={'fill'}
                            objectFit={'contain'}
                          />
                        </div>
                      </div>
                    )}
                  </SwiperSlide>
                );
              })}
            </Swiper>
          </div>{' '}
        </div>
      </div>
    </div>
  );
};

export default Certificates;
