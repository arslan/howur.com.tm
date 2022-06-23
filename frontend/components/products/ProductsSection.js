import GridCarousel from "./GridCarousel";
import ProductsGrid from "./ProductsGrid";
import Carousel from "./ProductsGrid";


const ProductsSection = () => {
    return (
        <div className="flex py-16 flex-col bg-[url('/q.svg')]">
            <div className="max-w-7xl mx-auto">

        <div className="w-full pb-12">
          <h2 className="font-bold text-3xl">
            Höwür - прочность, стойкость и уверенность.
          </h2>
          <p className="w-1/2 pt-12">
            They were dropping, losing altitude in a canyon of rainbow foliage,
            a lurid communal mural that completely covered the hull of the Villa
            bespeak a turning in, a denial of the bright void beyond the hull.
            Images formed and reformed: a flickering montage of the Sprawl’s
            towers and ragged Fuller domes, dim fi
          </p>
        </div>

        {/* <ProductsGrid /> */}
        {/* <GridCarousel /> */}
        <Carousel />
        </div>


      </div>
    );
}

export default ProductsSection;