import Image from "next/image";

const ProductCard = ({ src, desc }) => {
  return (
    <div className="relative w-full h-full overflow-hidden">
      <Image src={src} layout="fill" alt="" objectFit="contain" />
      <div class="absolute w-full h-1/4 flex items-center bottom-0 inset-x-0 bg-black/50 ">
        <p className="py-2 px-4 text-white text-2xl leading-10 font-bold">
          {desc}
        </p>
      </div>
    </div>
  );
};

export default ProductCard;
