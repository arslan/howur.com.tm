import Image from "next/image";
import Link from "next/link";
import Socialicons from "./common/SocialIcons";
import { useContext } from "react";
import { layoutContext } from "../pages/_app";

const Footer = () => {
	const {
		attributes: {
			footer: {
				description,
				title_mail,
				mail,
				logo: {
					data: {
						attributes: { url: urlFooter },
					},
				},
			},
			footer_dev: {
				permission,
				logo_dev: {
					data: {
						attributes: { url: urlFooter_dev },
					},
				},
				logo_dev1: {
					data: {
						attributes: { url: urlFooter_dev1 },
					},
				},
			},
		},
	} = useContext(layoutContext);

	return (
		<div className='w-full bg-grey'>
			<div className='max-w-7xl mx-auto flex py-2 w-full sm:px-12 2xl:px-0'>
				<div className='w-1/12 mr-12'>
					<span className='cursor-pointer sm:hidden xl:block'>
						<Link href='/' passHref>
							<a>
								<Image
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter}`}
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
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter}`}
									width={42}
									height={55}
									alt=''
								/>
							</a>
						</Link>
					</span>
				</div>
				<div className='flex w-11/12 self-center '>
					<div className='lg:mr-4 xl:mr-16 w-3/5 sm:hidden xl:block'>
						<span className='leading-relaxed'>{description}</span>
					</div>
					<div className='lg:mr-1 xl:mr-8 w-1/2'>
						<h3 className='font-bold md:block sm:hidden'>{title_mail}</h3>
						<Link href='mailto:howurtm@gmail.com'>{mail}</Link>
					</div>
					<div className='w-1/2 flex justify-end ml-1'>
						<Socialicons />
					</div>
				</div>
			</div>
			<div className='w-full md:h-10 xl:h-14 sm:bg-grey xl:bg-black sm:px-12 2xl:px-0 '>
				<div className='max-w-7xl mx-auto flex items-center justify-between sm:border-t-2 sm:py-2 xl:py-1 sm:border-white xl:border-none'>
					<p className='xl:text-white sm:w-1/2 md:w-full sm:text-xs md:text-base'>
						{permission}
					</p>
					<span className='cursor-pointer self-center sm:hidden xl:block'>
						<Link href='https://hillitilsimat.com.tm/'>
							<a>
								<Image
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter_dev}`}
									width={200}
									height={54}
									alt='Hilli tilsimat'
								/>
							</a>
						</Link>
					</span>
					<span className='cursor-pointer self-center xl:hidden sm:block'>
						<Link href='https://hillitilsimat.com.tm/'>
							<a>
								<Image
									// Тут рендерится черный лого
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter_dev1}`}
									width={100}
									height={27}
									alt='Hilli tilsimat'
								/>
							</a>
						</Link>
					</span>
				</div>
			</div>
		</div>
	);
};

export default Footer;
