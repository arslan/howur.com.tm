import { useState } from "react";

const Form = () => {
  const [data, setData] = useState();

  const onSubmitData = () => {
    console.log(data);
  };
  return (
    <form className="space-y-8">
      <input
        type="text"
        minLength="4"
        placeholder="12345678"
        className="border-b-2 w-4/5 h-12 border-greyDark pl-2 outline-none"
        required
        onChange={(e) => setData({ ...data, name: e.target.value })}
      />
      <input
        type="email"
        minLength="4"
        placeholder="12345678"
        className="border-b-2 w-4/5 h-12 border-greyDark pl-2 outline-none"
        required
        onChange={(e) => setData({ ...data, email: e.target.value })}
      />
      <textarea
        rows={1}
        maxLength={1000}
        placeholder="12345678"
        className="border-b-2 w-4/5 h-12 border-greyDark pl-2 outline-none"
        required
        onChange={(e) => setData({ ...data, message: e.target.value })}
      />
      <button
        onClick={() => onSubmitData()}
        type="submit"
        className="bg-red w-4/5 h-12 rounded-md text-white"
      >
        Submit
      </button>
    </form>
  );
};

export default Form;
