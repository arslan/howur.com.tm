import Link from "next/link";
import { useRouter } from "next/router";
// import { useTranslation } from 'next-i18next'
import { v4 as uuid_v4 } from "uuid";
import Lang from "./Lang";

// import Lang from './Lang'

function NavbarServices(props) {
  //   const { t } = useTranslation('common')
  const router = useRouter();
  const currentPage = router.pathname;
  const navigation = [
    { name: "Строительство", href: "/" },
    { name: "Проектирование", href: "/" },
    { name: "Пожарная безопасность", href: "/" },
    { name: "Лифтовая диспетчеризация ", href: "/" },
    { name: "Проектирование сети ", href: "/" },

  ];

  return (
    <div {...props} className="">
      <ul className="flex justify-between">
        {navigation.map(({ name, href }) => {
          return (
            <>
              <li className="text-black text-xl" key={uuid_v4()}>
                <Link href={href} passHref>
                  <span
                    className={`cursor-pointer p-2 hover:border-red hover:border-2 ${
                      currentPage === href ? " text-black" : ""
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
export default NavbarServices;
