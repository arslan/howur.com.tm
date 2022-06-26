import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

import { Navigation, Pagination, Mousewheel, Keyboard, Autoplay } from "swiper";
import { HiArrowNarrowLeft, HiArrowNarrowRight } from "react-icons/hi";
import {
  SideOverlayLeft,
  SideOverlayRight,
} from "../common/CarouselSideOverlays";
import ProductsGrid1 from "./ProductsGrid1";
import ProductsGrid2 from "./ProductsGrid2";
import ProductsGrid3 from "./ProductsGrid3";

const GridCarousel = ({
  product_lists: { descTiady, descONV, descOB, brands },
}) => {
  const [tiady, onv, ob] = brands;
  return (
    <>
      <button
        as="div"
        className="prev-button-hero relative btn left-[73rem] -bottom-24 z-20"
      >
        <HiArrowNarrowLeft color="red" size={36} />
      </button>

      <button
        as="div"
        className="next-button-hero relative btn left-[75rem] -bottom-24 z-20"
      >
        <HiArrowNarrowRight color="red" size={36} />
      </button>
      {brands.map(({ name }) => {
        return (
          <>
            <p>{name}</p>
          </>
        );
      })}

      <Swiper
        loop={true}
        navigation={{
          nextEl: ".next-button-hero",
          prevEl: ".prev-button-hero",
        }}
        pagination={{
          clickable: true,
        }}
        mousewheel={true}
        keyboard={true}
        autoplay={true}
        modules={[Navigation, Pagination, Mousewheel, Keyboard, Autoplay]}
        className="w-full"
      >
        <SwiperSlide>
          <ProductsGrid1
            data={{
              descTiady,
              tiady,
            }}
          />
        </SwiperSlide>
        <SwiperSlide>
          <ProductsGrid2
            data={{
              descONV,
              onv,
            }}
          />
        </SwiperSlide>
        <SwiperSlide>
          <ProductsGrid3
            data={{
              descOB,
              ob,
            }}
          />
        </SwiperSlide>
      </Swiper>
      <SideOverlayLeft />
      <SideOverlayRight />
    </>
  );
};

export default GridCarousel;
