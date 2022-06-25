import GridCarousel from "./GridCarousel";

const ProductsSection = ({
  data: { proHeading, descTiady, descONV, descOB, brands },
}) => {
  return (
    <>
      <div className="flex py-16 flex-col bg-[linear-gradient(228deg,#cd320212_0%,#cd320200_41.63%)]">
        <div className="max-w-7xl mx-auto">
          <div className="w-full">
            <h2 className="font-bold text-3xl">{proHeading}</h2>
          </div>
          <GridCarousel
            product_lists={{ descTiady, descONV, descOB, brands }}
          />
        </div>
      </div>
    </>
  );
};

export default ProductsSection;
