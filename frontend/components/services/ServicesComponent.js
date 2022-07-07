import Head from "next/head";
import Image from "next/image";
import Link from "next/link";

import Router from "next/router";
import { useRouter } from "next/router";
import { useEffect, useState } from "react";
import { VscDebugStackframeDot } from "react-icons/vsc";
import { fetchAPI } from "../../lib/api";

export const ServicesComponent = ({
	props: {
		name,
		description,
		under_description,
		img1: {
			data: {
				attributes: { url: url1 },
			},
		},
		img2: {
			data: {
				attributes: { url: url2 },
			},
		},
		img3: {
			data: {
				attributes: { url: url3 },
			},
		},
	},
}) => {
	const router = useRouter();
	const [links, setLinks] = useState(false);
	const [loading, setLoading] = useState(true);
	const useFetch = async () => {
		const { data } = await fetchAPI("/pagas-services", {
			locale: router.locale,
		});
		const link = await data.map(({ attributes: { sort_id, name } }) => {
			return {
				src: `/services/${sort_id}`,
				name,
			};
		});
		setLinks(link);
		setLoading(false);
	};
	useEffect(() => {
		useFetch();
	}, []);

	return (
		<>
			<Head>
				<title>{name}</title>
				<meta name="Hovur's Website" content='Construction' />
				<link rel='icon' href='/favicon.ico' />
			</Head>

			<div>
				<div className='max-w-7xl mx-auto space-x-12 xl:flex p-12'>
					<div className='xl:w-1/4 sm:w-full flex sm:flex-row xl:flex-col items-center justify-center md:space-x-6 sm:space-x-0'>
						<div>
							<Image
								src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url1}`}
								width={316}
								height={238}
								className='rounded-sm'
							/>
							<div className='h-6'></div>
							<Image
								src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url2}`}
								width={316}
								height={347}
								className='rounded-sm'
							/>
						</div>
						<span className='sm:block xl:hidden sm:-translate-x-6 md:translate-x-0'>
							<Image
								src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
								width={316}
								height={500}
								className='rounded-sm '
							/>
						</span>
					</div>
					<div className='w-3/4'>
						<div className='bg-white rounded-lg drop-shadow-lg sm:w-full xl:w-1/2 py-10 xl:hidden sm:block'>
							<div className='border-l-4 border-red ml-6 px-6'>
								<p className='font-bold text-2xl'>{under_description}</p>
							</div>
						</div>
						<div className='flex space-x-8 h-3/5'>
							<div className='w-1/3 xl:block sm:hidden'>
								<Image
									src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${url3}`}
									width={316}
									height={406}
									className='rounded-sm'
								/>
							</div>

							<div className='xl:w-2/3 sm:w-full sm:mt-8 xl:mt-0'>
								<h1 className='text-[32px] font-bold pb-6 '>{name}</h1>
								<p className='leading-8'>{description}</p>
							</div>
						</div>
						<div className='flex space-x-8 xl:mt-16 2xl:mt-12'>
							<div className='bg-white rounded-lg drop-shadow-lg w-1/2 py-10 xl:block sm:hidden'>
								<div className='border-l-4 border-red sm:ml-0 xl:ml-6 px-6'>
									<p className='font-bold text-2xl'>{under_description}</p>
								</div>
							</div>

							{loading ? (
								<p>Loading...</p>
							) : (
								<div className='flex flex-wrap sm:w-full xl:w-1/2 sm:justify-start xl:justify-start xl:mt-0 sm:mt-8 sm:gap-y-6 xl:gap-y-0'>
									{links.map(({ name, src }) => {
										return (
											<Link href={src}>
												<a className='flex hover:text-red font-bold mr-4'>
													<VscDebugStackframeDot className='mt-1' />
													{name}
												</a>
											</Link>
										);
									})}
								</div>
							)}
						</div>
					</div>
				</div>
			</div>
		</>
	);
};
