import { useState, useRef, useEffect } from 'react';
import { useForm } from 'react-hook-form';
import HCaptcha from '@hcaptcha/react-hcaptcha';
import ReCAPTCHA from 'react-google-recaptcha';

const Form = ({ data: { formName, formMess, formMail, formButton } }) => {
  const [token, setToken] = useState(null);
  const captchaRef = useRef(null);
  const {
    register,
    handleSubmit,
    reset,
    formState: { errors },
  } = useForm({ mode: 'onBlur' });
  const onError = (errors, e) => console.log(errors, e);
  const onSubmit = (data) => {
    if (!token) {
      return alert('Captcha token required');
    }
    const requestOptions = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({ ...data, token: token }),
    };

    fetch(
      `${process.env.NEXT_PUBLIC_STRAPI_API_URL}/api/email`,
      requestOptions
    ).then((res) => {});

    reset();
    captchaRef.current.reset();
  };
  useEffect(() => {}, [token]);
  return (
    <form className="space-y-8" onSubmit={handleSubmit(onSubmit, onError)}>
      <input
        type="text"
        placeholder={formName}
        className={`h-12 pl-2 border-b-2 outline-none sm:w-full lg:w-4/5  ${
          errors?.name ? 'border-red' : 'border-greyDark'
        }`}
        {...register('name', { required: true, minLength: 4 })}
      />{' '}
      <input
        type="email"
        placeholder={formMail}
        className={`h-12 pl-2 border-b-2 outline-none sm:w-full lg:w-4/5  ${
          errors?.email ? 'border-red' : 'border-greyDark'
        }`}
        {...register('email', {
          required: true,
          minLength: 4,
          pattern: /^\S+@\S+$/i,
        })}
      />
      <textarea
        rows={3}
        placeholder={formMess}
        className={`h-32 pl-2 border-b-2 outline-none sm:w-full lg:w-4/5  ${
          errors?.message ? 'border-red' : 'border-greyDark'
        }`}
        {...register('message', { required: true, maxLength: 1000 })}
      />
      <ReCAPTCHA
        onChange={setToken}
        size="compact"
        badge="inline"
        onErrored={() => setToken(null)}
        onExpired={() => setToken(null)}
        ref={captchaRef}
        sitekey={process.env.NEXT_PUBLIC_RECAPTCHA_SITE_KEY}
      />
      <button
        type="submit"
        className="h-12 text-white rounded-md bg-red sm:w-full lg:w-4/5"
      >
        {formButton}
      </button>
    </form>
  );
};

export default Form;
