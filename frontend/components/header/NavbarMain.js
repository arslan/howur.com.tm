import Link from "next/link";
import { useRouter } from "next/router";
// import { useTranslation } from 'next-i18next'
import { v4 as uuid_v4 } from "uuid";
import Lang from "./Lang";

// import Lang from './Lang'

function NavbarMain(props) {
  //   const { t } = useTranslation('common')
  const router = useRouter();
  const currentPage = router.pathname;
  const navigation = [
    { name: "home", href: "/" },
    { name: "gallery", href: "/" },
    { name: "vacancy", href: "/" },
    { name: "contact", href: "/" },
  ];

  return (
    <div {...props} className="">
      <ul className="flex justify-between m-2 p-4">
        {navigation.map(({ name, href }, i) => {
          return (
            <>
              <li className="text-black text-xl w-32" key={uuid_v4()}>
                <Link href={href} passHref>
                  <span
                    className={`cursor-pointer px-4 py-2 hover:text-red ${
                      currentPage === href ? " text-black" : "px-4"
                    }`}
                  >
                    {name}
                  </span>
                </Link>
              </li>
            </>
          );
        })}
      </ul>
    </div>
  );
}
export default NavbarMain;
