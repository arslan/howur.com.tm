import Image from "next/image";
import Link from "next/link";
import SertificatesCarousel from "./SertificatesCarousel";

const SertificatesSection = ({
  data: { headCert, underHeadCert, certificate_lists, logoCert },
}) => {
  return (
    <div className="bg-[linear-gradient(133deg,#cd320212_0%,#cd320200_41.63%)] pt-12">
      <div className="bg-[linear-gradient(40deg,#cd320212_0%,#cd320200_41.63%)]">
        <div className="max-w-7xl mx-auto py-12" id="sertificates">
          <div className="flex flex-col items-center">
            <h2 className="font-bold text-3xl">{headCert}</h2>
            <Link href="/" passHref>
              <a>
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${logoCert}`}
                  width={98}
                  height={118}
                  alt=""
                />
              </a>
            </Link>
          </div>
          <SertificatesCarousel data={certificate_lists} />
        </div>
      </div>
    </div>
  );
};

export default SertificatesSection;
