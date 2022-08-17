import { Menu, Transition } from "@headlessui/react";
import Link from "next/link";
import { Fragment, useEffect } from "react";
import { useRouter } from "next/router";
import { v4 as uuid_v4 } from "uuid";
import { AiOutlineCheck } from "react-icons/ai";

import { GoChevronDown } from "react-icons/go";
import { layoutContext } from "../../pages/_app";
import { useContext } from "react";

export default function Dropdown({ name }) {
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
		<Menu as='div' className='relative inline-block'>
			<div>
				<Menu.Button className='relative flex px-4 cursor-pointer hover:text-red sm:text-sm xl:text-md'>
					{name}
					<div className='self-center ml-1 mt-[3px]'>
						<GoChevronDown />
					</div>
				</Menu.Button>
			</div>
			<Transition
				as={Fragment}
				enter='transition ease-out duration-100'
				enterFrom='transform opacity-0 scale-95'
				enterTo='transform opacity-100 scale-100'
				leave='transition ease-in duration-75'
				leaveFrom='transform opacity-100 scale-100'
				leaveTo='transform opacity-0 scale-95'
			>
				<Menu.Items className='absolute w-64 mt-6 bg-white rounded-sm shadow-lg focus:outline-none'>
					<div className='py-1 '>
						{underNav.map(({ attributes: { name, slug } }) => {
							return (
								<Menu.Item
									className='absolute z-20 shadow-lg focus:outline-none '
									key={uuid_v4()}
								>
									<Link href={`/services/${slug}`} locale={locale} passHref>
										<span
											className={`cursor-pointer pt-2  hover:text-red group flex items-center rounded-md py-2 px-6 text-sm my-1 ${
												currentPage === `/services/${slug}`
													? " bg-red rounded-md  text-white pl-3 hover:text-white"
													: ""
											}`}
										>
											{currentPage === `/services/${slug}` && (
												<AiOutlineCheck />
											)}
											<span className='pl-6'>{name}</span>
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
