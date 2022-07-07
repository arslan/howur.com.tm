import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";

import { Navigation, Pagination, Mousewheel, Keyboard, Autoplay } from "swiper";
import { HiArrowNarrowLeft, HiArrowNarrowRight } from "react-icons/hi";

import ProductsGrid1 from "./ProductsGrid1";
import ProductsGrid2 from "./ProductsGrid2";
import ProductsGrid3 from "./ProductsGrid3";

const GridCarousel = ({ product_lists: { brands } }) => {
	const [tiady, onv, ob] = brands;
	return (
		<div className='relative'>
			<div className='sm:hidden xl:block absolute flex justify-end right-5 top-28  z-10'>
				<button as='div' className='prev-button-hero z-20'>
					<HiArrowNarrowLeft color='red' size={36} />
				</button>

				<button as='div' className='next-button-hero z-20'>
					<HiArrowNarrowRight color='red' size={36} />
				</button>
			</div>

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
				className='2xl:w-full sm:w-screen sm:px-12 2xl:px-0'
			>
				<SwiperSlide>
					<ProductsGrid1
						data={{
							tiady,
						}}
						className=''
					/>
				</SwiperSlide>
				<SwiperSlide>
					<ProductsGrid2
						data={{
							onv,
						}}
						className=''
					/>
				</SwiperSlide>
				<SwiperSlide>
					<ProductsGrid3
						data={{
							ob,
						}}
						className=''
					/>
				</SwiperSlide>
			</Swiper>
		</div>
	);
};

export default GridCarousel;
