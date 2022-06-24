import Link from "next/link";
import { useRouter } from "next/router";
import { v4 as uuid_v4 } from "uuid";
import Dropdown from "./Dropdown";
import { useContext } from "react";
import { layoutContext } from "../../pages/_app";

function NavbarMain(props) {
	const router = useRouter();
	const currentSection = router.asPath;
	const {
		attributes: {
			navbar: {
				navigations: { data: navigations },
			},
		},
	} = useContext(layoutContext);
	const navigation = [];
	navigations.map((e) => {
		console.log(e.attributes.name);
		switch (e.attributes.name) {
			case "Главная":
				navigation[0] = e;
				break;
			case "Home":
				navigation[0] = e;
				break;
			case "Oý":
				navigation[0] = e;
				break;
			case "Услуги":
				navigation[1] = e;
				break;
			case "Services":
				navigation[1] = e;
				break;
			case "Hyzmatlar":
				navigation[1] = e;
				break;
			case "О нас":
				navigation[2] = e;
				break;
			case "About Us":
				navigation[2] = e;
				break;
			case "Biz hakda":
				navigation[2] = e;
				break;
			case "Лицензии и сертификаты":
				navigation[3] = e;
				break;
			case "Licenses and certificates":
				navigation[3] = e;
				break;
			case "Ygtyýarnamalar we şahadatnamalar":
				navigation[3] = e;
				break;
			case "Контакты":
				navigation[4] = e;
				break;
			case "Contacts":
				navigation[4] = e;
				break;
			case "Aragatnaşyklar":
				navigation[4] = e;
				break;
			default:
				break;
		}
	});
	return (
		<div {...props} className=''>
			<ul className='flex justify-between mt-[5px] pr-2 mb-[6px]'>
				{navigation.map(({ attributes: { name, href } }, i) => {
					if (href === null) {
						return <Dropdown name={name} key={uuid_v4()} />;
					}
					return (
						<li className='text-black text-xl'>
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
