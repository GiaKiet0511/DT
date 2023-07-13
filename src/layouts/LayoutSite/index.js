import { Outlet} from "react-router-dom";
import Menu from "./Menu";
import Header from "./Header";
import Footer from "./Footer";

import "bootstrap/dist/css/bootstrap.min.css";
import "bootstrap/dist/js/bootstrap.bundle.min.js";
function LayoutSite() {
  return (
    <>
      <Header />
      <Menu />
      <Outlet />
      <Footer />
    </>
  );
}
export default LayoutSite;
