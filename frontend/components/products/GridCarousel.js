import { HiArrowNarrowLeft, HiArrowNarrowRight } from "react-icons/hi";
import { Swiper, SwiperSlide } from "swiper/react";
import "swiper/css";
import "swiper/css/navigation";
import "swiper/css/pagination";
import { v4 as uuid_v4 } from 'uuid';


import { Navigation, Pagination, Mousewheel, Keyboard, Autoplay } from "swiper";
import Carousel from "./Carousel";

const GridCarousel = ({ product_lists: { brands } }) => {
	// const [tiady, onv, ob] = brands;
	return (
		<div className='relative'>
			<div className='absolute z-10 flex justify-end sm:hidden xl:block right-5 top-28'>
				<button as='div' className='z-20 prev-button-hero'>
					<HiArrowNarrowLeft color='red' size={36} />
				</button>

				<button as='div' className='z-20 next-button-hero'>
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
				{brands.map(
					({
						attributes: {
							description,
							product_lists: { data: product_lists },
						},
					}) => {
						return (
							<SwiperSlide key={description}>
								<div className='sm:px-12 2xl:px-0 2xl:w-full sm:w-screen' >
									<h4 className='mb-2 ml-0.5 text-xl leading-7 sm:w-full xl:w-1/2 pb-12 h-48'>
										{description}
									</h4>
								</div>
								<Carousel props={product_lists} key={uuid_v4()}/>
							</SwiperSlide>
						);
					}
				)}
			</Swiper>
		</div>
	);
};

export default GridCarousel;
