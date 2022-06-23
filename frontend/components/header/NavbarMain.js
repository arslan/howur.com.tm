import Link from "next/link";
import { useRouter } from "next/router";
// import { useTranslation } from 'next-i18next'
import { v4 as uuid_v4 } from "uuid";
import Dropdown from "./Dropdown";
import Lang from "./Lang";
import { useContext } from "react";
import { layoutContext } from "../../pages/_app";

// import Lang from './Lang'

function NavbarMain(props) {
	//   const { t } = useTranslation('common')
	const router = useRouter();
	const currentSection = router.asPath;
	const {
		attributes: {
			navbar: {
				navigations: { data: navigations },
			},
		},
	} = useContext(layoutContext);

	// useState for hover effect

	return (
		<div {...props} className=''>
			<ul className='flex justify-between mt-[5px] pr-2 mb-[6px]'>
				{navigations.map(({ attributes: { name, href } }, i) => {
					if (href === null) {
						return <Dropdown name={name} key={uuid_v4()}/>;
					}
					return (
						<li className='text-black text-xl w-32' >
							<Link href={href} passHref>
								<a
									className={`cursor-pointer px-4 py-2 hover:text-red ${
										currentSection === "/" + href
											? " text-red border-t-2 border-red"
											: " px-4"
									}`}
								>
									{name}
								</a>
							</Link>
						</li>
					);
				})}
			</ul>
		</div>
	);
}
export default NavbarMain;
