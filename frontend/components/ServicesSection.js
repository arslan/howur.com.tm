import ServiceCard from "./common/ServiceCard";
import { v4 as uuid_v4 } from "uuid";

const ServicesSection = ({
	data: { heading, under_heading, description, button, service_lists },
}) => {
	return (
		<div className='bg-[linear-gradient(301.68deg,#cd320212_0%,#cd320200_41.63%)]'>
			<div className='max-w-7xl mx-auto' id='services'>
				<h2 className='font-bold text-3xl text-center'>{heading}</h2>
				<div className='flex py-6'>
					<div className='w-full text-right'>
						<h2 className='font-bold text-3xl'>{under_heading}</h2>
						<p className='w-1/2 ml-auto pt-12'>{description}</p>
					</div>
				</div>
				<div className='flex flex-wrap'>
					{service_lists.map(
						({
							attributes: {
								heading: cardTitle,
								description: cardDesc,
								img: {
									data: {
										attributes: { url: img },
									},
								},
							},
						}) => {
							return (
								<div key={uuid_v4()} className='w-1/2'>
									<ServiceCard
										src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${img}`}
										cardTitle={cardTitle}
										cardDesc={cardDesc}
									/>
								</div>
							);
						}
					)}
				</div>
			</div>
		</div>
	);
};

export default ServicesSection;
