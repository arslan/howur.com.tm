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
      marginRight:'12px',
      marginTop:'12px',
      
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
    <Menu styles={styles}>
      <h4 className="font-bold text-2xl  text-greyDark mb-12">
        Menu
      </h4>
      {navigation.map(({ attributes: { name, href } }, i) => {
        if (href === null) {
          return <BurgerDropdown name={name} key={uuid_v4()} className="text-black"/>;
        }
        return (
          <li className="text-black text-xl pb-4">
            <Link href={href} passHref>
              <a
                className={`cursor-pointer hover:text-red ${
                  currentSection === "/" + href
                    ? " text-red"
                    : ""
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
