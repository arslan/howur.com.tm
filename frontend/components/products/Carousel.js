import ProductsGrid1 from "./ProductsGrid1";
import ProductsGrid2 from "./ProductsGrid2";
import ProductsGrid3 from "./ProductsGrid3";
import { v4 as uuid_v4 } from 'uuid';


const Carousel = ({ props }) => {
	const dividing = props.length / 7;
	const a = parseInt(dividing);

	if (props.length === 3) {
		return <ProductsGrid2 data={props} key={uuid_v4()} />;
	}
	if (props.length === 5) {
		return <ProductsGrid1 data={props} key={uuid_v4()} />;
	}
	if (props.length === 7) {
		return <ProductsGrid3 data={props} key={uuid_v4()} />;
	}

	// return <ProductsGrid2 data={props} />;
};

export default Carousel;
