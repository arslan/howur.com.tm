import Image from "next/image";
const Hero = ({ img }) => {
	return (
		<div className='' id='home'>
			<Image
				src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${img}`}
				height={720}
				width={1920}
			/>
			<div className='bg-red w-[2px] h-16 ml-[50.3%] -translate-y-8 flex justify-center'></div>
		</div>
	);
};

export default Hero;
