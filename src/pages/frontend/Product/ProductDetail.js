import { useState } from "react";
import { useEffect } from "react";
import productservice from "./../../../services/ProductService";
import { useParams } from "react-router-dom";
import { urlImage } from "./../../../config";
import ProductItem from "./../../../components/ProductItem";

function ProductDetail() {
  const { slug } = useParams();
  const [product, setProduct] = useState([]);
  const [product_other, setProductOther] = useState([]);
  useEffect(
    function () {
      (async function () {
        await productservice.getProductBySlug(slug).then(function (result) {
          if (result.data.success === true) {
            setProduct(result.data.product);
            setProductOther(result.data.product_other);
          }
        });
      })();
    },
    [slug]
  );
  return (
    <section className="mainContent">
      <div className="container m-4">
        <div className="row">
          <div className="col-md-6">
            <img
              src={urlImage + "product/" + product.image}
              alt={product.image}
              className="img-fluid w-100"
            />
          </div>
          <div className="col-md-6">
            <h2>{product.name}</h2>
            <h3>
              Giá Ưu Đãi:{" "}
              <span style={{ fontSize: "36px" }}>{product.price} vnđ</span>
            </h3>
            <h4>
              Giá Cũ:{" "}
              <span
                style={{ textDecorationLine: "line-through", fontSize: "20px" }}
              >
                {product.price_sale} vnđ
              </span>
            </h4>
            <div className="max-md:hidden" style={{backgroundColor:"#0bbbe7"}}>
              <div className="box-cmt-info w-full rounded bg-pink p-2">
                <div>
                  <div className="flex items-center">
                    <svg
                      width="17"
                      height="15"
                      fill="none"
                    >
                      <path
                        d="M16.964 5.563v-.036c-.036-.035-.036-.071-.072-.071L8.787.542C8.75.506 8.715.506 8.679.506L.287.076C.143.076.072.148 0 .256V2.73c0 .108.036.18.143.215l2.08 1.291L.396 5.42a.326.326 0 0 0-.108.25l.108 3.695c0 .072.035.18.107.215l8.034 5.308c.036 0 .072.036.107.036.036 0 .072 0 .108-.036l8.034-5.308c.072-.036.107-.143.107-.215L17 5.671c0-.036 0-.072-.036-.108ZM8.572 1.044l7.209 4.304-7.424-.18L1.29.65l7.28.394Zm7.316 4.842-1.937 1.22H9.432l-.717-1.4 7.173.18Zm-15.35-3.3V.83l7.28 4.663-.968.932L.538 2.586Zm2.224 1.937 1.614 1.04-1.65 1.112-1.65-1.04 1.686-1.112Zm5.63 9.648L.897 9.186.825 6.137l7.567 4.698v3.336Zm.287-3.802L3.228 6.998l1.685-1.112 1.865 1.148c.108.071.252.036.323-.036l1.112-1.076.825 1.614c.036.107.143.143.251.143h3.802l-4.412 2.69Zm7.747-1.183L8.93 14.17v-3.336l7.568-4.698-.072 3.049Z"
                        fill="#BE1E2D"
                      ></path>
                    </svg>
                    <p className="px-2 text-14 font-bold">Bộ sản phẩm bao gồm</p>
                  </div>
                  <div className="relative my-2 text-justify text-14 antialiased">
                    <div className="info-content flex  flex-middle">
                      <div className="info-desc">
                        <p>
                          Máy mới nguyên seal 100%, chính hãng Việt Nam
                        </p>
                        <p>
                          Smartpoint là đại lý uỷ quyền chính thức của
                          Việt Nam
                        </p>
                        <p>&nbsp;</p>
                      </div>
                    </div>
                    <div className="info-content flex flex-middle">
                      <div className="info-desc">
                        <p>
                          <strong>Bộ sản phẩm:</strong>&nbsp;Thân máy, Hộp, Cáp,
                          Cây lấy sim, Sách hướng dẫn, Túi giấy cao cấp Di Động
                          Việt
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
                <div>
                  <div className="flex items-center">
                    <svg
                      width="17"
                      height="18"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <path
                        d="M15.262 2.915 8.755.054a.63.63 0 0 0-.51 0l-6.507 2.86a.705.705 0 0 0-.41.65v3.478c0 4.789 2.734 9.096 6.921 10.906.16.07.341.07.502 0 4.187-1.81 6.92-6.117 6.92-10.906V3.564a.705.705 0 0 0-.409-.65Zm-.918 4.127c0 4.07-2.258 7.818-5.844 9.491-3.49-1.628-5.844-5.31-5.844-9.491V4.033L8.5 1.464l5.844 2.57v3.008Zm-6.578 2.37L10.62 6.39a.638.638 0 0 1 .94 0c.259.274.259.72 0 .994l-3.324 3.52a.638.638 0 0 1-.94 0L5.441 8.937a.733.733 0 0 1 0-.994.638.638 0 0 1 .939 0l1.386 1.468Z"
                        fill="#BE1E2D"
                      ></path>
                    </svg>
                    <p className="px-2 text-14 font-bold">Bảo hành</p>
                  </div>
                  <div className="box-info relative my-2 text-justify text-14 antialiased">
                    <div>
                      Bảo hành hư lỗi - Đổi mới trong <strong>30 ngày </strong>
                      độc quyền tại Smartpoint. Bảo hành&nbsp;
                      <strong>12 tháng</strong>&nbsp;tại Trung tâm Bảo hành
                      Chính hãng
                    </div>
                    <div>&nbsp;</div>
                    <div>
                      Bảo hành hư lỗi - Đổi mới trong <strong>12 tháng</strong>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <button
              className="relative mt-3 flex cursor-pointer items-center justify-center"
              style={{
                width: "100%",
                height: "64",
                border: "none",
                backgroundColor: "red",
                borderBottomRightRadius: "6px",
                borderBottomLeftRadius: "6px",
                borderTopRightRadius: "6px",
                borderTopLeftRadius: "6px",
              }}
            >
              <div className=" cursor-pointer">
                <p className="text-center text-20 font-bold text-black">ĐẶT NGAY</p>
                <p className="text-center text-sm text-black">
                  Giao tận nơi hoặc nhận tại cửa hàng
                </p>
              </div>
            </button>
          </div>
        </div>

        <div className="row">
          <div className="col-md-12">
            <p>{product.detail}</p>
          </div>
        </div>
        <h3>Sản phẩm cùng loại</h3>
        <div className="row">
          <div className="col-md-12">
            {product_other.map(function (product, index) {
              return <ProductItem product={product} key={index} />;
            })}
          </div>
        </div>
      </div>
    </section>
  );
}
export default ProductDetail;
