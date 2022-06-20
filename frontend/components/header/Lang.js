import { Menu, Transition } from "@headlessui/react";
import { Fragment } from "react";
import Link from "next/link";
import { useRouter } from "next/router";
import { GoChevronDown } from "react-icons/go";
import { v4 as uuid_v4 } from "uuid";
import { AiOutlineCheck } from "react-icons/ai";



const flags = [
  {
    language: "ru",
    shortName: "Рус",
    longName: "Русский",
    iconPath: "/ru.svg",
  },
  {
    language: "en",
    shortName: "Eng",
    longName: "English",
    iconPath: "/gb.svg",
  },
  {
    language: "tk",
    shortName: "Tkm",
    longName: "Türkmen",
    iconPath: "/tm.svg",
  },
];

function Lang() {
  const router = useRouter();
  const currentLang = router.locale;
  const { pathname } = router;
  const lang = { ru: "Русский", en: "English", tk: "Tükmen" };

  return (
    <Menu as="div" className="relative inline-block text-grey">
      <Menu.Button className="w-full px-4 relative flex hover:text-blue">
        {lang[currentLang]}
        <div className="w-4 self-center ml-2">
          <GoChevronDown />
        </div>
      </Menu.Button>
      <Transition
        as={Fragment}
        enter="transition ease-out duration-100"
        enterFrom="transform opacity-0 scale-95"
        enterTo="transform opacity-100 scale-100"
        leave="transition ease-in duration-75"
        leaveFrom="transform opacity-100 scale-100"
        leaveTo="transform opacity-0 scale-95"
      >
        <Menu.Items className="absolute -left-[10%] mt-6 w-36 origin-top-right rounded-md bg-white dark:bg-black shadow-lg dark:shadow-xl focus:outline-none px-2">
          {flags.map(({ language, longName }) => {
            return (
              <Menu.Item key={uuid_v4()}>
                {({ active }) => (
                  <button
                    className={`cursor-pointer pt-2 hover:bg-gray-200 w-full dark:hover:text-black group flex items-center rounded-md py-2 px-5 text-sm my-1 ${
                    language === currentLang
                        ?  "dark:hover:text-white bg-[#2058D4] dark:bg-blue rounded-md hover:text-black text-white pl-2"
                        : ""
                    }`}
                  >
                   {language === currentLang && <AiOutlineCheck />} 
                    <Link href={pathname} locale={language}>
                      <a className="pl-3">
                        {longName}</a>
                    </Link>
                  </button>
                )}
              </Menu.Item>
            );
          })}
        </Menu.Items>
      </Transition>
    </Menu>
  );
}

export default Lang;
