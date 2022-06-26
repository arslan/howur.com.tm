import Image from "next/image";

const Hero = ({ img }) => {
	return (
		<div className='relative h-[30rem]' id='home'>
			<Image
				src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${img}`}
				layout='fill'
				alt=''
				priority
			/>
		</div>
	);
};

export default Hero;
