import React, { useRef, useState } from "react";
// Import Swiper React components
import { Swiper, SwiperSlide } from "swiper/react";
import { v4 as uuid_v4 } from "uuid";

// Import Swiper styles
import "swiper/css";
import "swiper/css/pagination";
import "swiper/css/navigation";

// import "./styles.css";

// import required modules
import { Keyboard, Pagination, Navigation, Autoplay } from "swiper";
import Image from "next/image";
import ProductsGrid1 from "./products/ProductsGrid1";

const SertificatesCarousel = () => {
  const sertificates = [
    { img: "/example.jpeg" },
    { img: "/example.jpeg" },
    { img: "/example.jpeg" },
    { img: "/example.jpeg" },
    { img: "/example.jpeg" },
  ];

  return (
    <>
      <Swiper
        slidesPerView={5}
        spaceBetween={30}
        loop={true}
        keyboard={{
          enabled: true,
        }}
        pagination={{
          clickable: true,
        }}
        autoplay={true}
        modules={[Keyboard, Pagination, Navigation, Autoplay]}
        className="mySwiper"
      >
        {sertificates.map(({ img }) => {
          return (
            <SwiperSlide className="" key={uuid_v4()}>
              {/* <Image src={img} alt="" layout="fill" objectFit="contain" /> */}
              <ProductsGrid1 />
            </SwiperSlide>
          );
        })}
      </Swiper>
    </>
  );
};

export default SertificatesCarousel;
