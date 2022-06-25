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
  return (
    <>
      <p className="w-1/2 pt-12">{descOB}</p>
      <div class="grid gap-4 grid-cols-4 grid-rows-2">
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
              <div>
                <ProductCard
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
                  desc={description}
                />
              </div>
            );
          }
        )}
      </div>
    </>
  );
};

export default ProductsGrid3;
