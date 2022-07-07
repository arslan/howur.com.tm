import ProductCard from "./ProductCard";

const ProductsGrid2 = ({
	data: {
		onv: {
			attributes: {
				description,
				product_lists: { data },
			},
		},
	},
}) => {
	return (
		<div className='sm:px-12 2xl:px-0 2xl:w-full sm:w-screen'>
			<h4 className='mb-2 ml-0.5 text-xl leading-7 sm:w-full xl:w-1/2 pb-12 h-48'>
				{description}
			</h4>

			<div className='grid lg:grid-cols-5 lg:grid-rows-1  gap-4 lg:h-[700px] sm:h-screen pb-12 w-full mx-auto'>
				<div className='col-span-3'>
					<ProductCard
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[0].attributes.img.data.attributes.url}`}
						desc={data[0].attributes.description}
					/>
				</div>
				<div className='grid lg:grid-rows-2 lg:grid-cols-1 sm:grid-rows-1 sm:grid-cols-2 sm:col-span-3 lg:col-span-2 gap-4'>
					<ProductCard
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[1].attributes.img.data.attributes.url}`}
						desc={data[1].attributes.description}
					/>
					<ProductCard
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[2].attributes.img.data.attributes.url}`}
						desc={data[2].attributes.description}
					/>
				</div>
			</div>
		</div>
	);
};

export default ProductsGrid2;
