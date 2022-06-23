import ProductCard from "./ProductCard";
import { v4 as uuid_v4 } from "uuid";

const ProductsGrid1 = () => {
  const items = [
    {
      img: "/example.jpeg",
      text: 'import ServiceCard from "./common/ServiceCard";',
    },
    {
      img: "/example.jpeg",
      text: 'import ServiceCard from "./common/ServiceCard";',
    },
    {
      img: "/example.jpeg",
      text: 'import ServiceCard from "./common/ServiceCard";',
    },
    {
      img: "/example.jpeg",
      text: 'import ServiceCard from "./common/ServiceCard";',
    },
  ];
  return (
    <div>
      <div className="w-full flex my-20">
        <div className="w-1/2 h-full  ">
          <ProductCard
            img="/example.jpeg"
            desc="4 MP Fixed Color Maker Turret Camera. TC-C34XP"
          />
        </div>

        <div className="w-1/2 h-full flex flex-wrap">
          {items.map(({ img, text }) => {
            return (
              <div key={uuid_v4()} className="w-[47%] ml-[3%] mb-[3%] relative">
                <ProductCard img={img} desc={text} />
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
};

export default ProductsGrid1;
