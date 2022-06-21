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
              <li className="text-black text-xl w-32 h-20 flex flex-wrap" key={uuid_v4()}>
                <Link href={href} passHref>
                  <span
                    className={`self-center cursor-pointer mx-1 p-2 hover:outline hover:outline-offset-0 hover:outline-red ${
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
