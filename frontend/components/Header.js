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
    <div className="w-full bg-white sticky top-0 z-50">
      <div className="max-w-7xl mx-auto w-full py-2">
        <div className="flex justify-between items-center self-center pb-4">
          <span className="cursor-pointer">
            <Link href="/" passHref>
              <a>
                <Image src="/hovurLogo.svg" width={98} height={118} alt="" />
              </a>
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
            <div className="flex items-center border-t-2 border-grey mt-2">
              <NavbarMain />
              <Lang />
            </div>
          </div>
        </div>
        {/* <NavbarServices /> */}
      </div>
    </div>
  );
};

export default Header;
