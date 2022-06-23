import GridCarousel from "./GridCarousel";

const ProductsSection = ({ data: { proHeading, proDesc, product_lists } }) => {
	return (
		<>
			<div className='flex py-16 flex-col bg-[linear-gradient(228deg,#cd320212_0%,#cd320200_41.63%)]'>
				<div className='max-w-7xl mx-auto'>
					<div className='w-full pb-12'>
						<h2 className='font-bold text-3xl'>{proHeading}</h2>
						<p className='w-1/2 pt-12'>{proDesc}</p>
					</div>

					<GridCarousel product_lists={product_lists} />
				</div>
			</div>
		</>
	);
};

export default ProductsSection;
