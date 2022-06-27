import ProductCard from "./ProductCard";

const ProductsGrid3 = ({
  data: {
    descOB,
    ob: {
      attributes: {
        product_lists: { data },
      },
    },
  },
}) => {
  const slide = [data[0], data[1], data[2], data[3], data[6], data[4]];
  return (
    <div className="sm:px-12 2xl:px-0">
      <h4 className="text-xl leading-7 sm:w-full xl:w-1/2 pb-12 h-48">
        {descOB}
      </h4>
      <div class="grid gap-4 sm:grid-cols-2 lg:grid-cols-4 sm:grid-rows-4 lg:grid-rows-2 lg:h-[700px] sm:h-screen pb-12 w-full mx-auto ">
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
              <div>
                <ProductCard
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
                  desc={description}
                />
              </div>
            );
          }
        )}
        <div className="col-span-2">
          <ProductCard
            src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${data[5].attributes.img.data.attributes.url}`}
            desc={data[5].attributes.description}
          />
        </div>
      </div>
    </div>
  );
};

export default ProductsGrid3;
