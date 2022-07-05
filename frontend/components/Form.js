import { useState } from "react";

const Form = ({ data: { formName, formMess, formMail, formButton } }) => {
	const [data, setData] = useState();
	const [button, setButton] = useState(false);

	const onSubmitData = async () => {
		setButton(true);
		const requestOptions = {
			method: "POST",
			headers: {
				"Content-Type": "application/json",
			},
			body: JSON.stringify(data),
		};
		const response = await fetch(
			`${process.env.NEXT_PUBLIC_STRAPI_API_URL}/api/email`,
			requestOptions
		);
		const dataResponse = await response.json();
		if (dataResponse) {
			setButton(false);
		}
	};
	return (
		<form className='space-y-8'>
			<input
				type='text'
				minLength='4'
				placeholder={formName}
				className='border-b-2 sm:w-full lg:w-4/5 h-12 border-greyDark pl-2 outline-none'
				required
				onChange={(e) => setData({ ...data, name: e.target.value })}
			/>
			<input
				type='email'
				minLength='4'
				placeholder={formMail}
				className='border-b-2 sm:w-full lg:w-4/5 h-12 border-greyDark pl-2 outline-none'
				required
				onChange={(e) => setData({ ...data, email: e.target.value })}
			/>
			<textarea
				rows={1}
				maxLength={1000}
				placeholder={formMess}
				className='border-b-2 sm:w-full lg:w-4/5 h-12 border-greyDark pl-2 outline-none'
				required
				onChange={(e) => setData({ ...data, message: e.target.value })}
			/>
			<button
				disabled={button}
				onClick={onSubmitData}
				type='submit'
				className='bg-red sm:w-full lg:w-4/5 h-12 rounded-md text-white'
			>
				{formButton}
			</button>
		</form>
	);
};

export default Form;
