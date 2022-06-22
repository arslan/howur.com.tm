import { Menu, Transition } from "@headlessui/react";
import { useTranslation } from "next-i18next";
import Link from "next/link";
import { Fragment } from "react";
import { useRouter } from "next/router";
import { v4 as uuid_v4 } from "uuid";
import { AiOutlineCheck } from "react-icons/ai";

import { GoChevronDown } from "react-icons/go";

export default function Dropdown() {
  const { t } = useTranslation("common");
  const router = useRouter();
  const currentPage = router.pathname;
  const serviceItems = [
    { name: "Строительство", href: "/construction" },
    { name: "Проектирование", href: "/projection" },
    { name: "Пожарная безопасность", href: "/fireSafety" },
    { name: "Лифтовая диспетчеризация ", href: "/elevatorDispatching" },
    { name: "Проектирование сети ", href: "/network" },
  ];
  return (
    <Menu as="div" className="relative inline-block">
      <div>
        <Menu.Button className="w-full px-4  cursor-pointer relative flex hover:text-red text-xl">
          services
          <div className="w-4 self-center ml-2 mt-[3px]">
            <GoChevronDown />
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
        <Menu.Items className="absolute mt-6 w-64  rounded-sm bg-white shadow-lg focus:outline-none">
          <div className=" py-1 ">
            {serviceItems.map(({ href, name }) => {
              return (
                <Menu.Item
                  className="absolute shadow-lg  focus:outline-none z-20 "
                  key={uuid_v4()}
                >
                  <Link href={href} passHref className="">
                    <span
                      className={`cursor-pointer pt-2  hover:text-red group flex items-center rounded-md py-2 px-6 text-sm my-1 ${
                        currentPage === href
                          ? " bg-red rounded-md  text-white pl-3 hover:text-white"
                          : ""
                      }`}
                    >
                      {currentPage === href && <AiOutlineCheck />}
                      <span className="pl-6">{t(name)}</span>
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
