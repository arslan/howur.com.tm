import ProductCard from "./ProductCard";
import { v4 as uuid_v4 } from "uuid";

const ProductsGrid1 = ({ data }) => {
	const slide = [data[1], data[2], data[3], data[4]];
	return (
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
	);
};

export default ProductsGrid1;
