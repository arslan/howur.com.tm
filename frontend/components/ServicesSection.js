import ServiceCard from "./common/ServiceCard";
import { v4 as uuid_v4 } from "uuid";

const ServicesSection = () => {
  const serviceCardItems = [
    {
      img: "/hero.png",
      title: "blablabla",
      desc: "They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the Villa",
    },
    {
      img: "/hero.png",
      title: "blablabla",
      desc: "They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the Villa",
    },
    {
      img: "/hero.png",
      title: "blablabla",
      desc: "They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the Villa",
    },
    {
      img: "/hero.png",
      title: "blablabla",
      desc: "They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the Villa",
    },
    {
      img: "/hero.png",
      title: "blablabla",
      desc: "They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the Villa",
    },
    {
      img: "/hero.png",
      title: "blablabla",
      desc: "They were dropping, losing altitude in a canyon of rainbow foliage, a lurid communal mural that completely covered the hull of the Villa",
    },
  ];

  return (
    <div className="max-w-7xl mx-auto" id="services">
      <h2 className="font-bold text-3xl text-center">Services</h2>
      <div className="flex my-6">
        <div className="w-full text-right">
          <h2 className="font-bold text-3xl">
            Höwür - прочность, стойкость и уверенность.
          </h2>
          <p className="w-1/2 ml-auto pt-12">
            They were dropping, losing altitude in a canyon of rainbow foliage,
            a lurid communal mural that completely covered the hull of the Villa
            bespeak a turning in, a denial of the bright void beyond the hull.
            Images formed and reformed: a flickering montage of the Sprawl’s
            towers and ragged Fuller domes, dim fi
          </p>
        </div>
      </div>
      <div className="flex flex-wrap">
        {serviceCardItems.map(({ img, title, desc }) => {
          return (
            <div key={uuid_v4()} className="w-1/2 pl-12">
              <ServiceCard src={img} cardTitle={title} cardDesc={desc} />
            </div>
          );
        })}
      </div>
    </div>
  );
};

export default ServicesSection;
