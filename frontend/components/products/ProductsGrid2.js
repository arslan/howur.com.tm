// import ProductCard from "./ProductCard";
// import { v4 as uuid_v4 } from "uuid";

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
		<div class='grid grid-rows-2 grid-cols-5 gap-6'>
			<p className='w-1/2 pt-12'>{descONV}</p>
			<div class='col-span-3 ...'>
				<ProductCard
					src={data[0].attributes.img.data.attributes.url}
					desc={data[0].attributes.description}
				/>
			</div>
			<div class='col-span-2'>
				<ProductCard
					src={data[1].attributes.img.data.attributes.url}
					desc={data[1].attributes.description}
				/>
				<ProductCard
					src={data[2].attributes.img.data.attributes.url}
					desc={data[2].attributes.description}
				/>
			</div>
		</div>
	);
};

export default ProductsGrid2;
