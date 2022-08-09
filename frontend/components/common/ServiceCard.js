import Image from "next/image";

const ServiceCard = (props) => {
  return (
    <div className="flex md:flex-row sm:flex-col w-full sm:bg-white md:bg-white/0 sm:shadow-xl md:shadow-none sm:h-[500px] md:h-full  rounded-sm">
      <div className="h-full md:w-1/2 relative sm:mb-4 md:mb-0 ">
        <Image src={props.src} alt="" layout="fill" objectFit="cover" />
      </div>
      <div className="relative md:w-1/2 px-4">
        <h3 className="text-base md:text-xl font-bold pb-4">{props.cardTitle}</h3>
        <p className="mt-1 text-sm md:text-lg ">{props.cardDesc}</p>
      </div>
    </div>
  );
};

export default ServiceCard;
