import { Link } from "react-router-dom";

function Cart() {
  return (
    <div role="main" style={{ height: 300 }}>
      <div className="container mt-4">
        <div
          id="thongbao"
          className="alert alert-danger d-none face"
          role="alert"
        >
          <button
            type="button"
            className="close"
            data-dismiss="alert"
            aria-label="Close"
          >
            <span aria-hidden="true">×</span>
          </button>
        </div>

        <h1 className="text-center">Giỏ hàng</h1>
        <div className="row">
          <div className="col col-md-12">
            <table className="table table-bordered">
              <thead>
                <tr>
                  <th style={{ textAlign: "center" }}>#</th>
                  <th style={{ textAlign: "center" }}>Ảnh đại diện</th>
                  <th style={{ textAlign: "center" }}>Tên sản phẩm</th>
                  <th style={{ textAlign: "center" }}>Số lượng</th>
                  <th style={{ textAlign: "center" }}>Đơn giá</th>
                  <th style={{ textAlign: "center" }}>Thành tiền</th>
                  <th style={{ textAlign: "center" }}>Hành động</th>
                </tr>
              </thead>
              {/* <tbody id="datarow">
                <tr>
                  <td style={{ textAlign: "center" }}>
                    <input type="checkbox" />
                  </td>
                  <td style={{ textAlign: "center" }}>
                    <img src="#" alt="hinhanh" className="img-fluid" />
                  </td>
                  <td style={{ textAlign: "center" }}>
                    Apple Ipad 4 Wifi 16GB
                  </td>
                  <td className="text-right text-center">
                    <input type="number" min="1" max="50" />
                  </td>
                  <td className="text-right" style={{ textAlign: "center" }}>
                    11,800,000.00
                  </td>
                  <td className="text-right" style={{ textAlign: "center" }}>
                    23,600,000
                  </td>
                  <td style={{ textAlign: "center" }}>
                    <Link
                      id="delete_1"
                      data-sp-ma="2"
                      className="btn btn-danger btn-delete-sanpham"
                    >
                      <i className="fa fa-trash" aria-hidden="true"></i> Xóa
                    </Link>
                  </td>
                </tr>
              </tbody> */}
            </table>

            <Link to="/" className="btn btn-warning btn-md">
              <i className="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Quay
              về trang chủ
            </Link>
            <Link to="#" className="btn btn-primary btn-md mx-3">
              <i className="fa fa-shopping-cart" aria-hidden="true"></i>
              &nbsp;Thanh toán
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}
export default Cart;
