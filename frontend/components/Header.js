import Image from "next/image";
import Socialicons from "./common/SocialIcons";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import NavbarMain from "./header/NavbarMain";
import Lang from "./header/Lang";
import NavbarServices from "./header/NavbarServices";
import Link from "next/link";

const Header = () => {
  return (
    <div className="w-full bg-green h-64 ">
      <div className="max-w-7xl mx-auto w-full pt-2">
        <div className="flex justify-between items-center self-center pb-4">
          <span className="cursor-pointer">
            <Link href="/" >
              <Image src="/hovurLogo.svg" width={98} height={118} alt="" />
            </Link>
          </span>
          <div className="">
            <div className="flex items-center justify-end text-red">
              <FiPhone />
              <a href="tel:+99365039539" className="text-black pl-2 pt-1">
                +993 65039539
              </a>

              <span className="text-red pl-4">
                <Socialicons />
              </span>
            </div>
            <div className="flex items-center text-red justify-end">
              <HiOutlineLocationMarker />
              <p className="text-black pl-2 pt-1">
                Туркменистан / Ашгабад, Парахат 1, Здание 68
              </p>
            </div>
            <div className="flex items-center">
              <NavbarMain />
              <Lang />
            </div>
          </div>
        </div>
        <NavbarServices />
      </div>
    </div>
  );
};

export default Header;
