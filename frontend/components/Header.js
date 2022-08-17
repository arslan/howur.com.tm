import Image from "next/image";
import Socialicons from "./common/SocialIcons";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import NavbarMain from "./header/NavbarMain";
import Lang from "./header/Lang";
import Link from "next/link";
import { useContext } from "react";
import { layoutContext } from "../pages/_app";
import BurgerMenu from "./header/BurgerMenu";

const Header = () => {
	const {
		attributes: {
			number: { number },
			navbar: {
				logo: {
					data: {
						attributes: { url },
					},
				},
			},
			address: { address },
		},
	} = useContext(layoutContext);
	return (
		<div className='sticky top-0 z-20 w-full bg-white sm:text-sm xl:text-md'>
			<div className='w-full py-2 mx-auto max-w-7xl'>
				<div className='flex items-center self-center justify-between sm:px-12 2xl:px-0'>
					<span className='cursor-pointer sm:hidden xl:block'>
						<Link href='/' passHref>
							<a>
								<Image
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
									width={98}
									height={118}
									alt=''
								/>
							</a>
						</Link>
					</span>
					<span className='cursor-pointer xl:hidden sm:block'>
						<Link href='/' passHref>
							<a>
								<Image
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url}`}
									width={42}
									height={55}
									alt=''
								/>
							</a>
						</Link>
					</span>
					<div className='sm:hidden xl:block'>
						<div className='flex items-center justify-end text-red'>
							<FiPhone />
							<a href={`tel:${number}`} className='pt-1 pl-2 text-black'>
								{number}
							</a>

							<span className='pl-4 text-red'>
								<Socialicons />
							</span>
						</div>
						<div className='flex items-center justify-end text-red'>
							<HiOutlineLocationMarker />
							<p className='pt-1 pl-2 text-black'>{address}</p>
						</div>
						<div className='flex items-center mt-2 border-t-2 border-grey'>
							<NavbarMain />
							<Lang />
						</div>
					</div>
					<div className='xl:hidden sm:block'>
						<BurgerMenu />
					</div>
				</div>
			</div>
		</div>
	);
};

export default Header;
