import Link from "next/link";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import { MdOutlineEmail } from "react-icons/md";
import Socialicons from "./common/SocialIcons";
import Form from "./Form";

const FormMapSection = () => {
  return (
    <div className="max-w-7xl mx-auto mb-12">
      <h2 className="font-bold text-3xl">
        They floated in the coffin for Armitage’s call.
      </h2>
      <div className="w-full flex my-16">
        <div className="w-1/2"><Form /></div>
        <div className="w-1/2  space-y-10 pl-12 py-8 border-solid border-2 border-red">
          <div className="flex items-center">
            <HiOutlineLocationMarker />
            <p className="text-black pl-2 pt-1">
              Туркменистан / Ашгабад, Парахат 1, Здание 68
            </p>
          </div>
          <div className="flex items-center">
            <MdOutlineEmail className="mr-2"/>
            <Link className="" href="mailto:sales@pursatlyyorish.com">
              sales@pursatlyyorish.com
            </Link>
          </div>
          <div className="flex items-center">
          <FiPhone />
              <a href="tel:+99365039539" className="text-black pl-2 pt-1">
                +993 65039539
              </a>
          </div>
          <Socialicons />
        </div>
      </div>
      <iframe
        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d810.104460991889!2d58.38682389460728!3d37.903098546057926!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f6ffd9da80a5487%3A0x27964b35d7a8cba2!2z0JTQvtC8IDY4LCA2OCwgQXNoZ2FiYXQsIFR1cmttZW5pc3Rhbg!5e0!3m2!1sen!2suk!4v1654780512502!5m2!1sen!2suk"
        width="100%"
        height="375px"
        allowFullScreen=""
        loading="lazy"
      ></iframe>
    </div>
  );
};

export default FormMapSection;
