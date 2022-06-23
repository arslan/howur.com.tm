import ProductCard from "./ProductCard";
import { v4 as uuid_v4 } from "uuid";

const ProductsGrid2 = ({ data }) => {
	return (
		<div>
			<div className='w-full flex my-20'>
				<div className='w-1/2 h-full  '>
					<ProductCard
						src='/example.jpeg'
						desc='4 MP Fixed Color Maker Turret Camera. TC-C34XP'
					/>
				</div>

				<div className='w-1/2 h-full flex flex-wrap'>
					{data.map(
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
								<div
									key={uuid_v4()}
									className='w-[47%] ml-[3%] mb-[3%] relative'
								>
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

export default ProductsGrid2;
