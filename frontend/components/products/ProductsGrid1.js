import ProductCard from "./ProductCard";
import { v4 as uuid_v4 } from "uuid";

const ProductsGrid1 = ({
	data: {
		descTiady,
		tiady: {
			attributes: {
				product_lists: { data },
			},
		},
	},
}) => {
	const slide = [data[1], data[2], data[3], data[4]];
	return (
		<div className='sm:px-12 2xl:px-0 2xl:w-full sm:w-screen'>
			<h4 className='mb-2 ml-0.5 text-xl leading-7 sm:w-full xl:w-1/2'>{descTiady}</h4>
			<div className='grid lg:grid-rows-1 lg:grid-cols-2 sm:grid-rows-2 sm:grid-cols-1 gap-4 lg:h-[700px] sm:h-screen pb-12 w-full mx-auto'>
				<div className='w-full  h-full'>
					<ProductCard
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[0].attributes.img.data.attributes.url}`}
						desc={data[0].attributes.description}
					/>
				</div>
				<div className='sm:w-full lg:w-5/6 xl:w-full h-full grid grid-rows-2 grid-cols-2 gap-4'>
					{slide.map(
						({
							attributes: {
								img: {
									data: {
										attributes: { url },
									},
								},
								description,
							},
						}) => {
							return (
								<div key={uuid_v4()}>
									<ProductCard
										src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
										desc={description}
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

export default ProductsGrid1;
