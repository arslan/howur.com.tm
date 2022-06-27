import { useState } from "react";

const Form = ({ data: { formName, formMess, formMail, formButton } }) => {
	const [data, setData] = useState();

	const onSubmitData = () => {
		console.log(data);
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
				onClick={() => onSubmitData()}
				type='submit'
				className='bg-red sm:w-full lg:w-4/5 h-12 rounded-md text-white'
			>
				{formButton}
			</button>
		</form>
	);
};

export default Form;
