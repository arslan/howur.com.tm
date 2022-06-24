import Link from "next/link";
import { FiPhone } from "react-icons/fi";
import { HiOutlineLocationMarker } from "react-icons/hi";
import { MdOutlineEmail } from "react-icons/md";
import Socialicons from "./common/SocialIcons";
import Form from "./Form";

const ContactSection = ({
  data: {
    formHead,
    formName,
    formMess,
    formMail,
    formButton,
    form_number,
    form_mail,
    form_address,
  },
}) => {
  return (
    <div className="bg-[linear-gradient(140deg,#cd320212_0%,#cd320200_41.63%)]">
      <div className="max-w-7xl mx-auto py-12" id="contacts">
        <h2 className="font-bold text-3xl">{formHead}</h2>
        <div className="w-full flex my-16">
          <div className="w-1/2">
            <Form data={{ formName, formMess, formMail, formButton }} />
          </div>
          <div className="w-1/2  space-y-10 pl-12 py-8 border-solid border-2 border-red">
            <div className="flex items-center">
              <HiOutlineLocationMarker />
              <p className="text-black pl-2 pt-1">{form_address}</p>
            </div>
            <div className="flex items-center">
              <MdOutlineEmail className="mr-2" />
              <Link className="" href="mailto:howur@gmail.com">
                <a>{form_mail}</a>
              </Link>
            </div>
            <div className="flex items-center">
              <FiPhone />
              <a href="tel:+99365039539" className="text-black pl-2 pt-1">
                {form_number}
              </a>
            </div>
            <Socialicons />
          </div>
        </div>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3148.6718832879487!2d58.34255391571648!3d37.891355413215805!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f70025ecc6a7673%3A0xf0ae0c7b777af2a4!2zQXJjaGFiaWwgSHd5IDU1LCBBc2hnYWJhdCwg0KLRg9GA0LrQvNC10L3QuNGB0YLQsNC9!5e0!3m2!1sru!2s!4v1656075780914!5m2!1sru!2s"
          width="100%"
          height="400px"
          allowFullScreen=""
          loading="lazy"
        ></iframe>
      </div>
    </div>
  );
};

export default ContactSection;
