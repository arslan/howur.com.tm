import { FaSkype } from "react-icons/fa";

import Link from "next/link";

export default function Socialicons() {
	return (
		<div className='flex flex-row'>
			<Link href='skype:live:.cid.e179022cb53b02aa?chat/'>
				<a className='pr-2'>
					<FaSkype />
				</a>
			</Link>
			{/* <Link href='https://www.instagram.com/'>
				<a className='px-2'>
					<FaInstagram />
				</a>
			</Link>
			<Link href='https://tm.linkedin.com/'>
				<a className='pl-2'>
					<FaLinkedinIn />
				</a>
			</Link> */}
		</div>
	);
}
