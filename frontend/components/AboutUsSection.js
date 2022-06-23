import Image from "next/image";
import Link from "next/link";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import { MdOutlineEmail } from "react-icons/md";
import Socialicons from "./common/SocialIcons";
import Form from "./Form";

const AboutUsSection = () => {
  return (
    <div className="max-w-7xl mx-auto my-12" id="aboutUs">
      <div className="flex items-center">
        <div className="w-1/2 relative">
          <Image src="/example.jpeg" width={800} height={500} alt="" />
        </div>
        <div className="bg-red w-4 -translate-x-2 h-20"></div>
        <h2 className="font-bold text-3xl">About us</h2>
      </div>
      <div className="flex items-center">
        <div className="w-1/2 pr-12">
          <h2 className="font-bold text-[28px] w-1/2">About us</h2>
          <p>
            Лорем ипсум долор сит амет, ин еос мелиус бонорум молестиае, еос ан
            деленити цонституам. Ад хомеро сцрипторем усу. Ет яуем солута
            вулпутате еам, вих ад пробатус партиендо ассуеверит. Меи ат
            сапиентем елояуентиам. Ин вих сцрибентур инструцтиор. Волумус
            адиписци диспутатиони ат нец, при еррор малорум не. Делицата
            ехплицари продессет мел те, вивендум симилияуе сцрипторем ан нам,
            усу аццоммодаре цонтентионес.
          </p>
        </div>
        <div className=" -translate-y-10 translate-x-5">
          <Image src="/example.jpeg" width={800} height={500} alt="" />
        </div>
      </div>
    </div>
  );
};

export default AboutUsSection;
