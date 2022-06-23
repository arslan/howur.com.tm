import ProductCard from "./ProductCard";
import { v4 as uuid_v4 } from "uuid";

const ProductsGrid1 = ({ data }) => {
	return (
		<div>
			<div className='w-full flex my-20'>
				<div className='w-1/2 h-full  '>
					<ProductCard
						src={data[0].attributes.img.data.attributes.url}
						desc={data[0].attributes.description}
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

export default ProductsGrid1;
