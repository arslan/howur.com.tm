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
      <h4 className="text-xl leading-7 w-1/2 pb-12 h-48">{descOB}</h4>
      <div class="grid gap-4 grid-cols-4 grid-rows-2 h-[700px] pb-12">
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
                  //   Не подтягивает текстовые данные изображения
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
