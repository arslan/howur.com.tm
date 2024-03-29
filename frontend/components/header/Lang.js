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
	const lang = { ru: "Русский", en: "English", tk: "Türkmen" };

	return (
		<Menu as='div' className='relative inline-block text-[#7A7A7A] ml-2'>
			<Menu.Button className='relative flex w-full sm:text-sm xl:text-md hover:text-red'>
				{lang[currentLang]}
				<div className='self-center w-4'>
					<GoChevronDown />
				</div>
			</Menu.Button>
			<Transition
				as={Fragment}
				enter='transition ease-out duration-100'
				enterFrom='transform opacity-0 scale-95'
				enterTo='transform opacity-100 scale-100'
				leave='transition ease-in duration-75'
				leaveFrom='transform opacity-100 scale-100'
				leaveTo='transform opacity-0 scale-95'
			>
				<Menu.Items className='absolute right-0 px-2 mt-6 origin-top-right bg-white rounded-md shadow-lg w-36 focus:outline-none'>
					{flags.map(({ language, longName }) => {
						return (
							<Menu.Item key={uuid_v4()}>
								{({ active }) => (
									<button
										className={`cursor-pointer pt-2 hover:bg-gray-200 hover:text-red w-full group flex items-center rounded-md py-2 px-5 text-sm my-1 ${
											language === currentLang
												? " bg-red rounded-md text-white pl-2 hover:text-white"
												: ""
										}`}
									>
										{language === currentLang && <AiOutlineCheck />}
										<Link
											href={pathname === "/services/[slug]" ? "/" : pathname}
											locale={language}
										>
											<a className='pl-3'>{longName}</a>
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
