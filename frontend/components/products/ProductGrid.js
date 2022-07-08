import ProductCard from "./ProductCard";

const ProductGrid = () => {
    return (
        <div className="grid grid-cols-1 grid-rows-1 lg:max-h-[700px] sm:h-screen pb-12 w-full mx-auto">
            <ProductCard src='/example.jpeg' desc='blablabla'/>
        </div>
    );
}

export default ProductGrid;