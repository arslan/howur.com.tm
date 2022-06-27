import { Menu, Transition } from "@headlessui/react";
import Link from "next/link";
import { Fragment, useEffect } from "react";
import { useRouter } from "next/router";
import { v4 as uuid_v4 } from "uuid";

import { GoChevronDown } from "react-icons/go";
import { layoutContext } from "../../pages/_app";
import { useContext } from "react";

export default function BurgerDropdown({ name }) {
  const router = useRouter();
  const currentPage = router.pathname;
  const {
    attributes: {
      locale,
      navbar: {
        under_navs: { data: underNav },
      },
    },
  } = useContext(layoutContext);

  return (
    <Menu as="div" className="relative inline-block">
      <div>
        <Menu.Button className="w-full pb-4 cursor-pointer relative flex hover:text-red text-xl text-black">
          {name}
          <div className="w-4 self-center ml-1">
            <GoChevronDown size={12} />
          </div>
        </Menu.Button>
      </div>
      <Transition
        as={Fragment}
        enter="transition ease-out duration-100"
        enterFrom="transform opacity-0 scale-95"
        enterTo="transform opacity-100 scale-100"
        leave="transition ease-in duration-75"
        leaveFrom="transform opacity-100 scale-100"
        leaveTo="transform opacity-0 scale-95"
      >
        <Menu.Items className="relative focus:outline-none text-black">
          <div className=" py-1 ">
            {underNav.map(({ attributes: { name, slug } }) => {
              return (
                <Menu.Item
                  className="absolute shadow-lg  focus:outline-none z-20 "
                  key={uuid_v4()}
                >
                  <Link href={`/services/${slug}`} locale={locale} passHref>
                    <span
                      className={`cursor-pointer hover:text-red group flex items-center rounded-md py-2 text-lg ${
                        currentPage === `/services/${slug}` ? "text-red" : ""
                      }`}
                    >
                      <span className="pl-6">{name}</span>
                    </span>
                  </Link>
                </Menu.Item>
              );
            })}
          </div>
        </Menu.Items>
      </Transition>
    </Menu>
  );
}
