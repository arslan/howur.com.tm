import Image from "next/image";

const ServiceCard = (props) => {
	return (
		<div className='w-full flex h-60'>
			<span className='w-1/2'>
				<Image src={props.src} width={319} height={219} alt='' />
			</span>
			<span className='px-12 w-1/2 space-y-6'>
				<h4 className='text-xl'>{props.cardTitle}</h4>
				<p className=''>{props.cardDesc}</p>
			</span>
		</div>
	);
};

export default ServiceCard;
