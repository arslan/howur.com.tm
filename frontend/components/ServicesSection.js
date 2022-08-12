import ServiceCard from "./common/ServiceCard";
import { v4 as uuid_v4 } from "uuid";

const ServicesSection = ({
	data: { heading, service_lists },
}) => {
	return (
		<div className='bg-[linear-gradient(326.68deg,#cd320212_0%,#cd320200_41.63%)]'>
			<div className='mx-auto max-w-7xl sm:px-12 2xl:px-0' id='services'>
				<h2 className='mb-12 font-bold xl:text-3xl lg:text-2xl sm:text-xl'>{heading}</h2>
				<div className='relative grid gap-6 pb-12 mx-auto xl:grid-cols-2 sm:grid-cols-1'>
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
