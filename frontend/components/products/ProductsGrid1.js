import ProductCard from "./ProductCard";
import { v4 as uuid_v4 } from "uuid";

const ProductsGrid1 = ({
  data: {
    descTiady,
    tiady: {
      attributes: {
        product_lists: { data },
      },
    },
  },
}) => {
  const slide = [data[1], data[2], data[3], data[4]];
  return (
    <div className="">
      <h4 className="text-xl leading-7 w-1/2 pb-12 h-48">{descTiady}</h4>
      <div className="grid grid-rows-1 grid-cols-2 gap-4 h-[700px] pb-12">
        <div className="w-full  h-full">
          {/* Не подтягивает данные 1го изображения */}
          <ProductCard
            src={data[0].attributes.img.data.attributes.url}
            desc={data[0].attributes.description}
          />
        </div>
        <div className="w-full h-full grid grid-rows-2 grid-cols-2 gap-4">
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
      </div>
    </div>
  );
};

export default ProductsGrid1;
