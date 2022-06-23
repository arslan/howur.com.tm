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
			},
		},
	} = useContext(layoutContext);

	return (
		<div className='w-full bg-grey'>
			<div className='max-w-7xl mx-auto flex py-2 w-full'>
				<div className='w-1/12 mr-12'>
					<span className='cursor-pointer'>
						<Link href='/'>
							<Image
								src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter}`}
								width={98}
								height={118}
								alt=''
							/>
						</Link>
					</span>
				</div>
				<div className='flex w-11/12 self-center '>
					<div className='mr-16 w-3/5'>
						<span className='leading-relaxed'>{description}</span>
					</div>
					<div className='mr-8 w-1/2'>
						<h3 className='font-bold '>{title_mail}</h3>
						<Link href='mailto:sales@pursatlyyorish.com'>{mail}</Link>
					</div>
					<div className='w-1/2 flex justify-end'>
						<Socialicons />
					</div>
				</div>
			</div>
			<div className='w-full h-14 bg-black'>
				<div className='max-w-7xl mx-auto flex items-center justify-between'>
					<p className='text-white'>{permission}</p>
					<span className='cursor-pointer self-center'>
						<Link href='https://hillitilsimat.com.tm/'>
							<Image
								src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${urlFooter_dev}`}
								width={200}
								height={54}
								alt='Hilli tilsimat'
							/>
						</Link>
					</span>
				</div>
			</div>
		</div>
	);
};

export default Footer;
