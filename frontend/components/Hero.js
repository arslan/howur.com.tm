import Image from "next/image";

const Hero = () => {
  return (
    <div className="relative h-[30rem]" id="home">
      <Image src='/hero.png' layout='fill' alt="" priority/>
    </div>
  );
};

export default Hero;
