import Image from "next/image";
import { v4 as uuid_v4 } from "uuid";

const ProductCard = ({ src, desc }) => {
  return (
    <div className="relative w-full h-full overflow-hidden">
      <Image src={src} layout="fill" alt="" objectFit="cover"/>
      <div className="absolute inset-x-0 bottom-0 flex items-center w-full h-1/4 bg-black/50 ">
        <p className="px-4 py-2 font-bold leading-10 text-white sm:text-sm lg:text-lg">
          {desc}
        </p>
      </div>
    </div>
  );
};

export default ProductCard;
