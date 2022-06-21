import Link from "next/link";
import { useRouter } from "next/router";
// import { useTranslation } from 'next-i18next'
import { v4 as uuid_v4 } from "uuid";
import Lang from "./Lang";

// import Lang from './Lang'

function NavbarMain(props) {
  //   const { t } = useTranslation('common')
  const router = useRouter();
  const currentSection = router.asPath;
  const navigation = [
    { name: "home", href: "#home" },
    { name: "services", href: "#services" },
    { name: "aboutUs", href: "#aboutUs" },
    { name: "sertificates", href: "#sertificates" },
    { name: "contacts", href: "#contacts" },

  ];

// useState for hover effect

  return (
    <div {...props} className="">
      <ul className="flex justify-between mt-[5px] pr-2 mb-[6px]">
        {navigation.map(({ name, href }, i) => {
          return (
              <li className="text-black text-xl w-32" key={uuid_v4()}>
                <Link href={href} passHref>
                  <span
                    className={`cursor-pointer px-4 py-2 hover:text-red ${
                      currentSection === "/"+href ? " text-red border-t-2 border-red" : " "
                    }`}
                  >
                    {name}
                  </span>
                </Link>
              </li>
          );
        })}
      </ul>
    </div>
  );
}
export default NavbarMain;
