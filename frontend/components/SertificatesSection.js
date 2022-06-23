import Image from "next/image";
import Link from "next/link";
import SertificatesCarousel from "./SertificatesCarousel";

const SertificatesSection = () => {
  return (
    <div className="bg-[linear-gradient(133deg,#cd320212_0%,#cd320200_41.63%)] pt-12">
      <div className="max-w-7xl mx-auto my-12" id="sertificates">
        <div className="flex flex-col items-center">
          <h2 className="font-bold text-3xl">Лицензии и Сертификаты</h2>
          <Link href="/" passHref>
            <a>
              <Image
                src='/hovurLogo.svg'
                width={98}
                height={118}
                alt=""
              />
            </a>
          </Link>
        </div>
        <SertificatesCarousel />
      </div>
    </div>
  );
};

export default SertificatesSection;
