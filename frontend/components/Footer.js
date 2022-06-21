import Image from "next/image";
import Link from "next/link";
import Socialicons from "./common/SocialIcons";

const Footer = () => {
  return (
    <div className="w-full bg-grey">
      <div className="max-w-7xl mx-auto flex py-2 w-full">
        <div className="w-1/12 mr-12">
          <span className="cursor-pointer">
            <Link href="/">
              <Image src="/hovurLogo.svg" width={98} height={118} alt="" />
            </Link>
          </span>
        </div>
        <div className="flex w-11/12 self-center ">
          <div className="mr-16 w-3/5">
            <span className="leading-relaxed">
              Индивидуальное предприятие “Höwür” - строительная компания,
              объединяющая талантливых инженеров, проектировщиков, строителей.
              Вместе мы строим будущее.
            </span>
          </div>
          <div className="mr-8 w-1/2">
            <h3 className="font-bold ">blablabla</h3>
            <Link href="mailto:sales@pursatlyyorish.com">
              sales@pursatlyyorish.com
            </Link>
          </div>
          <div className="w-1/2 flex justify-end">
            <Socialicons />
          </div>
        </div>
      </div>
      <div className="w-full h-14 bg-black">
        <div className="max-w-7xl mx-auto flex items-center justify-between">
          <p className="text-white">©2022 Pursatly Yorish. All Rights Reserved.</p>
          <span className="cursor-pointer self-center">
            <Link href="https://hillitilsimat.com.tm/">
              <Image
                src="/logo.svg"
                width={200}
                height={54}
                alt="Hilli tilsimat"
              />
            </Link>
          </span>
        </div>
      </div>
    </div>
  );
};

export default Footer;
