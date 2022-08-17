import { BsSkype } from "react-icons/bs";

import Link from "next/link";

export default function Socialicons() {
	return (
		<div className='flex flex-row'>
			<Link href='skype:live:.cid.e179022cb53b02aa?chat/'>
				<a className=''>
					<BsSkype size={18} />
				</a>
			</Link>
		</div>
	);
}
