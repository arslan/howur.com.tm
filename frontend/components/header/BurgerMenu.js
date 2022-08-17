import { slide as Menu } from "react-burger-menu";
import Link from "next/link";
import { useRouter } from "next/router";
import { v4 as uuid_v4 } from "uuid";
import { useContext } from "react";
import { layoutContext } from "../../pages/_app";
import BurgerDropdown from "./BurgerDropdown";
import BurgerLang from "./BurgerLang";

function BurgerMenu(props) {
	let styles = {
		bmBurgerButton: {
			position: "relative",
			width: "36px",
			height: "30px",
		},
		bmBurgerBars: {
			background: "#CD3202",
			height: "3px",
		},
		bmBurgerBarsHover: {
			background: "#a90000",
		},
		bmCrossButton: {
			height: "24px",
			width: "24px",
			marginRight: "12px",
			marginTop: "12px",
		},
		bmCross: {
			background: "#CD3202",
		},
		bmMenuWrap: {
			position: "fixed",
			height: "100%",
			left: "0",
			top: "0",
		},
		bmMenu: {
			background: "#fff",
			fontSize: "1.15em",
		},
		bmMorphShape: {
			fill: "#344151",
		},
		bmItemList: {
			color: "#ffffff",
			padding: "20px",
		},
		bmItem: {
			display: "block",
		},
		bmOverlay: {
			background: "#DBDBDB  ",
			left: "0",
			top: "0",
		},
	};

	const router = useRouter();
	const currentSection = router.asPath;
	const {
		attributes: {
			navbar: {
				navigations: { data: navigations },
			},
		},
	} = useContext(layoutContext);
	return (
		<Menu styles={styles}>
			<h4 className='mb-12 text-2xl font-bold text-greyDark'>Menu</h4>
			{navigations.map(({ attributes: { name, href } }, i) => {
				if (href === null) {
					return (
						<BurgerDropdown
							name={name}
							key={uuid_v4()}
							className='text-black'
						/>
					);
				}
				return (
					<li className='pb-4 text-xl text-black' key={uuid_v4()}>
						<Link href={href} passHref>
							<a
								className={`cursor-pointer hover:text-red ${
									currentSection === "/" + href ? " text-red" : ""
								}`}
							>
								{name}
							</a>
						</Link>
					</li>
				);
			})}
			<BurgerLang />
		</Menu>
	);
}

export default BurgerMenu;
