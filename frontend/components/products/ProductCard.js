import Image from "next/image";

const ProductCard = ({ src, desc }) => {
  return (
    <div className="relative w-72 h-96 overflow-hidden">
      <Image src={src} layout="fill" alt="" objectFit="contain" />
      <div class="absolute w-full h-1/6 bottom-0 inset-x-0 bg-black/50 text-white text-xl leading-4 py-4">
        <p className="px-6">{desc} </p>
      </div>
    </div>
  );
};

export default ProductCard;
