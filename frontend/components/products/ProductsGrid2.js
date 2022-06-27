import ProductCard from "./ProductCard";

const ProductsGrid2 = ({
	data: {
		descONV,
		onv: {
			attributes: {
				product_lists: { data },
			},
		},
	},
}) => {
	return (
		<>
			<h4 className='text-xl leading-7 w-1/2 pb-12 h-48'>{descONV}</h4>

			<div className='grid grid-cols-5 grid-rows-1 gap-4 h-[700px] pb-12'>
				<div className='col-span-3'>
					<ProductCard
						//   все 3 изображения не подтягиваются
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[0].attributes.img.data.attributes.url}`}
						desc={data[0].attributes.description}
					/>
				</div>
				<div className='grid grid-rows-2 grid-cols-1 col-span-2 gap-4'>
					<ProductCard
						//   все 3 изображения не подтягиваются
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[1].attributes.img.data.attributes.url}`}
						desc={data[1].attributes.description}
					/>
					<ProductCard
						//   все 3 изображения не подтягиваются
						src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[2].attributes.img.data.attributes.url}`}
						desc={data[2].attributes.description}
					/>
				</div>
			</div>
		</>
	);
};

export default ProductsGrid2;
