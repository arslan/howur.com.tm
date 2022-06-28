import Image from "next/image";

const Hero = ({ data: { headVideo, head, desc } }) => {
	return (
		<div className='relative sm:h-48 md:h-64 lg:h-80 xl:h-[30rem]' id='home'>
			<Image
				src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${headVideo}`}
				layout='fill'
				alt=''
				priority
			/>
		</div>
	);
};

export default Hero;
