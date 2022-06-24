import { FaFacebookSquare, FaInstagram, FaLinkedinIn } from "react-icons/fa";

import Link from "next/link";

export default function Socialicons() {
	return (
		<div className='flex flex-row'>
			<Link href='https://www.facebook.com/'>
				<a className='pr-2'>
					<FaFacebookSquare />
				</a>
			</Link>
			<Link href='https://www.instagram.com/'>
				<a className='px-2'>
					<FaInstagram />
				</a>
			</Link>
			<Link href='https://tm.linkedin.com/company/'>
				<a className='pl-2'>
					<FaLinkedinIn />
				</a>
			</Link>
		</div>
	);
}
