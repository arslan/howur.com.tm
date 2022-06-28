import { useState } from "react";
import ReactPlayer from "react-player";
import styles from "../styles/Home.module.css";
const Hero = ({ data: { headVideo, head, desc } }) => {
  const [isPlaying, setIsPlaying] = useState(true);
  return (
    <div className="max-w-7xl mx-auto py-12 2xl:px-0 sm:px-12 flex sm:flex-col sm:items-center xl:items-start sm xl:flex-row sm:space-x-0 xl:space-x-12 sm:space-y-6 xl:space-y-0">
      <div className="sm:w-full xl:w-2/5">
        <h1 className="w-full text-[32px] font-bold flex flex-wrap pb-8">
          <span className=''>{head}</span>
        </h1>
        <p className="">{desc}</p>
      </div>
      <div className="sm:w-full xl:w-3/5 max-h-96  bg-red">
        <ReactPlayer
          url={headVideo}
          playing={isPlaying}
          width={"100%"}
          height={"100%"}
        />
      </div>
    </div>
  );
};

export default Hero;
