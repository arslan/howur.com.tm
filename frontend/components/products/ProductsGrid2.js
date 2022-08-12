import ProductCard from './ProductCard';
import { v4 as uuid_v4 } from 'uuid';

const ProductsGrid2 = ({ data }) => {
  return (
    <div
      className="grid lg:grid-cols-3 lg:grid-rows-2 gap-4 lg:h-[700px] sm:h-screen pb-12 w-full mx-auto"
      key={uuid_v4()}
    >
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
          return i === 0 ? (
            <div className="col-span-2 row-span-2 box" key={uuid_v4()}>
              <ProductCard
                src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
                desc={description}
              />
            </div>
          ) : (
            <div key={uuid_v4()}>
              <ProductCard
                src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
                desc={description}
              />
            </div>
          );
        }
      )}
    </div>
  );
};

export default ProductsGrid2;
