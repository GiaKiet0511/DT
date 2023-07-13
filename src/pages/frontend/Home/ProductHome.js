import ProductItem from "../../../components/ProductItem";
import { useEffect, useState } from "react";
import productservice from "./../../../services/ProductService";
import { Link } from "react-router-dom";

function ProductHome(props) {
  const { category } = props;
  const [products, setProducts] = useState([]);
  const [limit, setLimit] = useState(5);
  useEffect(() => {
    productservice.getProductHome(limit, props.category.id).then((res) => {
      setProducts(res.data.products);
    });
  }, [limit]);
  if (products != null) {
    return (
      <div className="container-product">
        <div className="product">
          <h3 className="text-left text-success text-center">
            {props.category.name}
          </h3>
          {products?.map(function (product, index) {
            if (product.category_id === category.id) {
            return <ProductItem key={index} product={product} />;
            }
          })}
        </div>
        <div className="text-center my-3">
          <Link onClick={() => setLimit(limit + 5)} className="btn btn-success">
            Xem thêm
          </Link>
        </div>
      </div>
    );
  }
}
export default ProductHome;
