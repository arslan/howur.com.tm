import { useState, useEffect } from "react";
import { useRouter } from "next/router";
import ReactPlayer from "react-player";
import styles from "../styles/Home.module.css";
const Hero = ({ data: { headVideo, head, desc } }) => {
	const [isPlaying, setIsPlaying] = useState(true);
	const [test, setTest] = useState("");
	const router = useRouter();
	useEffect(() => {
		setTest(() => {
			return (
				<ReactPlayer
					url={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${headVideo}`}
					playing={isPlaying}
					width={"100%"}
					height={"100%"}
					loop={true}
				/>
			);
		});
	}, []);
	return (
		<div className='max-w-7xl mx-auto py-12 2xl:px-0 sm:px-12 flex sm:flex-col sm:items-center xl:items-start sm xl:flex-row sm:space-x-0 xl:space-x-12 sm:space-y-6 xl:space-y-0'>
			<div className='sm:w-full xl:w-2/5'>
				<h1 className='w-full text-[32px] font-bold flex flex-wrap pb-8'>
					<p>{head}</p>
				</h1>
				<p>{desc}</p>
			</div>
			<div className='sm:w-full xl:w-3/5 max-h-96'>{test}</div>
		</div>
	);
};

export default Hero;
