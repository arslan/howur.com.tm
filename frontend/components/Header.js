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
		<div className='w-full bg-white sticky top-0 z-20'>
			<div className='max-w-7xl mx-auto w-full py-2'>
				<div className='flex justify-between items-center self-center sm:px-12 2xl:px-0'>
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
							<a href={`tel:${number}`} className='text-black pl-2 pt-1'>
								{number}
							</a>

							<span className='text-red pl-4'>
								<Socialicons />
							</span>
						</div>
						<div className='flex items-center text-red justify-end'>
							<HiOutlineLocationMarker />
							<p className='text-black pl-2 pt-1'>{address}</p>
						</div>
						<div className='flex items-center border-t-2 border-grey mt-2'>
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
