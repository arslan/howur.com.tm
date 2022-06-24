import Image from "next/image";
import Link from "next/link";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import { MdOutlineEmail } from "react-icons/md";
import Socialicons from "./common/SocialIcons";
import Form from "./Form";

const AboutUsSection = ({
	data: {
		aboutHeading,
		aboutUnderHeading,
		aboutHeadImg: {
			data: {
				attributes: { url: aboutHeadImg },
			},
		},
		aboutDesc,
		aboutDescImg: {
			data: {
				attributes: { url: aboutDescImg },
			},
		},
	},
}) => {
	return (
		<div className='bg-[linear-gradient(40deg,#cd320212_0%,#cd320200_41.63%)]'>
			<div className='max-w-7xl mx-auto ' id='aboutUs'>
				<div className='flex items-center'>
					<div className='w-1/2 relative'>
						<Image
							src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${aboutHeadImg}`}
							width={800}
							height={500}
							alt=''
						/>
					</div>
					<div className='bg-red w-4 -translate-x-2 h-20'></div>
					<h2 className='font-bold text-3xl'>{aboutHeading}</h2>
				</div>
				<div className='flex items-center'>
					<div className='w-1/2 pr-12'>
						<h2 className='font-bold text-[28px] w-1/2'>{aboutUnderHeading}</h2>
						<p>{aboutDesc}</p>
					</div>
					<div className=' -translate-y-10 translate-x-5'>
						<Image
							src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${aboutDescImg}`}
							width={800}
							height={500}
							alt=''
						/>
					</div>
				</div>
			</div>
		</div>
	);
};

export default AboutUsSection;
