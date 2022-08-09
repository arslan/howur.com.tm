import dynamic from "next/dynamic";
import Link from "next/link";

import Highlighter from "react-highlight-words";
import HighlightWords from "./HighlightWords";

const ReactPlayer = dynamic(() => import("react-player"), { ssr: false });

const Hero = ({ data: { headVideo, head, desc, headButton } }) => {
	return (
		<div className='max-w-7xl mx-auto pt-12 pb-24 2xl:px-0 sm:px-12 flex sm:flex-col sm:items-center xl:items-start sm xl:flex-row sm:space-x-0 xl:space-x-12 sm:space-y-6 xl:space-y-0'>
			<div className='sm:w-full xl:w-2/5'>
				<h1 className='w-full text-[32px] font-bold  pb-8'>
					<HighlightWords className='opacity-10' text={head} />
				</h1>
				<p>{desc}</p>
				<div className='sm:w-full xl:w-1/2 py-2 text-center text-white mt-8 px-2 bg-red rounded'>
					<Link href='#contacts' passhref>
						<a className=''>{headButton}</a>
					</Link>
				</div>
			</div>
			<div className='sm:w-full xl:w-3/5 max-h-96'>
				<ReactPlayer
					url={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${headVideo}`}
					playing={true}
					width={"100%"}
					height={"100%"}
					loop={true}
					muted={true}
				/>
			</div>
		</div>
	);
};

export default Hero;
