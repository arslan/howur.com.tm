import Link from "next/link";
import { useRouter } from "next/router";
// import { useTranslation } from 'next-i18next'
import { v4 as uuid_v4 } from "uuid";
import Lang from "./Lang";
import { layoutContext } from "../../pages/_app";
import { useContext } from "react";

// import Lang from './Lang'

function NavbarServices(props) {
	//   const { t } = useTranslation('common')
	const {
		attributes: {
			navbar: {
				under_navs: { data: underNav },
			},
		},
	} = useContext(layoutContext);
	const router = useRouter();
	const currentPage = router.pathname;

	return (
		<div {...props} className=''>
			<ul className='flex justify-between '>
				{underNav.map(({ attributes: { name, slug } }) => {
					return (
						<>
							<li
								className='text-black text-xl w-32 h-20 flex flex-wrap'
								key={uuid_v4()}
							>
								<Link href={`/services/${slug}`} passHref>
									<span
										className={`self-center cursor-pointer mx-1 p-2 hover:outline hover:outline-offset-0 hover:outline-red ${
											currentPage === slug ? " text-black" : ""
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
