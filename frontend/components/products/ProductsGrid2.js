import ProductCard from "./ProductCard";

const ProductsGrid2 = ({ data }) => {
	return (
		<div className='grid lg:grid-cols-3 lg:grid-rows-2 gap-4 lg:h-[700px] sm:h-screen pb-12 w-full mx-auto'>
			{data.map(
				(
					{
						attributes: {
							description,
							img: {
								data: {
									attributes: { url },
								},
							},
						},
					},
					i
				) => {
					return (
						<>
							{i === 0 && (
								<div className='box row-span-2 col-span-2'>
									<ProductCard
										src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
										desc={description}
									/>
								</div>
							)}
							{i !== 0 && (
								<div>
									<ProductCard
										src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
										desc={description}
									/>
								</div>
							)}
						</>
					);
				}
			)}
		</div>
	);
};

export default ProductsGrid2;
