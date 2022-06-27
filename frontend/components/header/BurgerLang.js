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
    <Menu as="div" className="relative inline-block">
      <Menu.Button className="ww-full pb-4 cursor-pointer relative flex hover:text-red text-xl text-black">
        {lang[currentLang]}
        <div className="w-4 self-center ml-1">
          <GoChevronDown size={12} />
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
        <Menu.Items className="relative focus:outline-none text-black">
          {flags.map(({ language, longName }) => {
            return (
              <Menu.Item key={uuid_v4()}>
                {({ active }) => (
                  <button
                    className={`cursor-pointer hover:text-red group flex items-center rounded-md py-2 text-lg ${
                      language === currentLang ? " text-red" : ""
                    }`}
                  >
                    <Link
                      href={pathname === "/services/[slug]" ? "/" : pathname}
                      locale={language}
                    >
                      <a className="pl-6">{longName}</a>
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
