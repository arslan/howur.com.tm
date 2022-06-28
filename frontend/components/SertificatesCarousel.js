import Image from "next/image";
import React, { useState } from "react";
import { HiArrowNarrowLeft, HiArrowNarrowRight } from "react-icons/hi";
import styles from "../styles/Home.module.css";

const SertificateSlider = ({ data }) => {
  const img = data.map(
    ({
      attributes: {
        img: {
          data: {
            attributes: { url: img },
          },
        },
      },
    }) => ({ img })
  );
  console.log(img);
  const [slides, setSlides] = useState(img);
  let pivot = 2;

  const next = () => {
    let array = [];

    array.push(slides[4]);
    slides.map((item, i) => {
      i < 4 && array.push(item);
    });
    setSlides([...array]);
  };
  const prev = () => {
    let array = [];
    slides.map((item, i) => {
      i > 0 && array.push(item);
    });
    array.push(slides[0]);
    setSlides([...array]);
  };
  const clicked = async (index) => {
    if (index != pivot) {
      if (index == 0) {
        let array = [];
        array.push(slides[4]);
        array.push(slides[3]);
        slides.map((item, i) => {
          i < 3 && array.push(item);
        });
        setSlides([...array]);
      }
      if (index == 1) {
        next();
      }
      if (index == 1) {
        next();
      }
      if (index == 3) {
        prev();
      }
      if (index == 4) {
        let array = [];
        slides.map((item, i) => {
          i > 1 && array.push(item);
        });
        array.push(slides[0]);
        array.push(slides[1]);
        setSlides([...array]);
      }
    }
  };
  return (
    <>
      <div className="flex justify-center mt-6 ">
        <button onClick={() => prev()}>
          <HiArrowNarrowLeft color="red" size={36} />
        </button>
        <button onClick={() => next()}>
          <HiArrowNarrowRight color="red" size={36} />
        </button>
      </div>
      <div className="flex items-center relative">
        <div className="flex items-center justify-evenly w-full lg:py-8">
          {slides.map(({ img }, i) => {
            return (
              <div
                onClick={() => clicked(i)}
                key={i}
                className={
                  (pivot == i &&
                    " 2xl:w-[34rem]  2xl:h-[27rem] xl:w-[32rem] xl:h-[25rem] lg:w-[30rem] lg:h-[20rem] sm:w-[30rem] sm:h-[20rem] rounded-xl transition-all cursor-pointer object-cover relative") ||
                  ((pivot == i - 1 || pivot == i + 1) &&
                    "2xl:w-[29rem] 2xl:h-[24rem] xl:w-[25rem] xl:h-[20rem] lg:w-[23rem] lg:h-[18rem] md:w-[23rem] md:h-[18rem] sm:w-[23rem] sm:h-[18rem] mx-2 rounded-xl transition-all blur-[2px] relative cursor-pointer object-contain z-10") ||
                  ((pivot == i + 2 || pivot == i - 2) &&
                    "2xl:w-[20rem] 2xl:h-[16rem] xl:w-[19rem] xl:h-[13rem] lg:w-[18rem] lg:h-[12rem] mx-2 rounded-xl transition-all blur-[3px] relative cursor-pointer object-contain z-10")
                }
              >
                <Image
                  src={`${process.env.NEXT_PUBLIC_STRAPI_API_URL}${img}`}
                  alt=""
                  layout="fill"
                  objectFit="contain"
                  className="w-full h-full"
                />
                {/* {i != pivot && <div className='w-full h-full bg-black/50 absolute top-0'></div>} */}
              </div>
            );
          })}
        </div>
      </div>
      <div className="flex m-1 justify-center">
        <button
          onClick={() => clicked(0)}
          className="mr-4 rounded-sm w-28 h-1 bg-grey hover:bg-red"
        ></button>
        <button
          onClick={() => clicked(1)}
          className="mr-4 rounded-sm w-28 h-1 bg-grey hover:bg-red"
        ></button>
        <button className="mr-4 rounded-sm w-28 h-1 bg-red"></button>
        <button
          onClick={() => clicked(3)}
          className="mr-4 rounded-sm w-28 h-1 bg-grey hover:bg-red"
        ></button>
        <button
          onClick={() => clicked(4)}
          className="mr-4 rounded-sm w-28 h-1 bg-grey hover:bg-red"
        ></button>
      </div>
    </>
  );
};

export default SertificateSlider;
