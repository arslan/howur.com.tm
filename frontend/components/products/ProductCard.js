import Image from "next/image";


const ProductCard = (props) => {
  return (
    <div>
      <div className="relative overflow-hidden">
        <div className="object-contain  ">
          <Image
            // layout="fill"
            // objectFit="cover"
            width={700}
            height={700}
            src={props.img}
            alt=""
          />
        </div>

        <div className="absolute bottom-2 px-8 w-full bg-[#000]/50">
          <h4 className="my-2 text-xl font-semibold tracking-tight text-white">
          4 MP Fixed Color Maker Turret Camera. TC-C34XP
          </h4>
        </div>
      </div>
    </div>
  );
};

export default ProductCard;
