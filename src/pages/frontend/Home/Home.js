import Slideshow from "./Slideshow";
import { useState } from "react";
import { useEffect } from "react";
import categoryservice from "../../../services/CategoryService";
import ProductHome from "./ProductHome";

function Home() {
  const [categorys, setCategorys] = useState([]);
  useEffect(function () {
    (async function () {
      await categoryservice.getCategoryByParentId(0).then(function (result) {
        setCategorys(result.data.categorys);
      });
    })();
  }, []);
  return (
    <section className="content">
      <div className="slider">
        <Slideshow />
      </div>

      <div className="category">
        {categorys.map(function (category, index) {
          return <ProductHome key={index} category={category} />;
        })}
      </div>
    </section>
  );
}

export default Home;
