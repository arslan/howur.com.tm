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
      <div className="py-12 mx-auto max-w-7xl sm:px-12 2xl:px-0" id="contacts">
        <h2 className="text-3xl font-bold">{formHead}</h2>
        <div className="w-full my-16 lg:flex">
          <div className="lg:w-1/2 sm:w-full">
            <Form data={{ formName, formMess, formMail, formButton }} />
          </div>
          <div className="py-8 pl-12 space-y-10 border-2 border-solid lg:w-1/2 sm:w-full sm:mt-12 lg:mt-0 border-red">
            <div className="flex items-center">
              <HiOutlineLocationMarker />
              <p className="pt-1 pl-2 text-black">{form_address}</p>
            </div>
            <div className="flex items-center">
              <MdOutlineEmail className="mr-2" />
              <Link className="" href="mailto:howurtm@gmail.com">
                <a>{form_mail}</a>
              </Link>
            </div>
            <div className="flex items-center">
              <FiPhone />
              <a href="" className="pt-1 pl-2 text-black">
                {form_number}
              </a>
            </div>
            <Socialicons />
          </div>
        </div>
        <iframe
          src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d877.2115746508605!2d58.34831324617642!3d37.89117491551739!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f70025fe71f68c7%3A0xd4741d83aa694edf!2zQXLDp2FiaWwgxZ9hw71vbHkgNTIsIEHFn2dhYmF0LCBUdXJrbWVuaXN0YW4!5e0!3m2!1sen!2s!4v1660735896470!5m2!1sen!2s"
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
