import ServiceCard from "./common/ServiceCard";
import { v4 as uuid_v4 } from "uuid";

const ServicesSection = ({
	data: { heading, under_heading, description, button, service_lists },
}) => {
	return (
		<div className='bg-[linear-gradient(326.68deg,#cd320212_0%,#cd320200_41.63%)]'>
			<div className='max-w-7xl mx-auto sm:px-12 2xl:px-0' id='services'>
				<h2 className='font-bold xl:text-3xl lg:text-2xl sm:text-xl mb-12'>{heading}</h2>
				{/* <div className='flex py-6'>
					<div className='w-full sm:text-center xl:text-right'>
						<h2 className='font-bold xl:text-3xl lg:text-2xl sm:text-xl'>{under_heading}</h2>
						<p className='sm:w-full xl:w-1/2 xl:ml-auto py-12'>{description}</p>
					</div>
				</div> */}
				<div className='grid xl:grid-cols-2 sm:grid-cols-1 gap-6 pb-12 mx-auto relative'>
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
								<div key={uuid_v4()} className='h-full'>
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
