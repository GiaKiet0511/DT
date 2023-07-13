import Home from "../pages/frontend/Home/Home";
import Introduce from "../pages/frontend/Introduce/Introduce";
import Product from "../pages/frontend/Product/Product";
import Contact from "../pages/frontend/Contact/Contact";
import Popularity from "../pages/frontend/Popularity/Popularity";
import ProductDetail from './../pages/frontend/Product/ProductDetail';
import ProductCategory from "../pages/frontend/ProductCategory";
import Policy from "../pages/frontend/Policy/guarantee";
import Policy1 from "../pages/frontend/Policy/sales";
import Policy2 from "../pages/frontend/Policy/return_policy";
import Policy3 from "../pages/frontend/Policy/transport";
import Cart from "../pages/frontend/Cart/cart";
import Login from "../pages/frontend/Account/login";
import Register from "../pages/frontend/Account/register";

const RouterPublic = [
  { path: "/", component: Home },
  { path: "/introduce", component: Introduce },
  { path: "/product", component: Product },
  { path: "/product-detail/:slug", component: ProductDetail },
  { path: "/product-category/:slug", component: ProductCategory },
  { path: "/contact", component: Contact },
  { path: "/popularity", component: Popularity },
  { path: "/guarantee", component: Policy },
  { path: "/sales", component: Policy1 },
  { path: "/return_policy", component: Policy2 },
  { path: "/transport", component: Policy3 },
  { path: "/cart", component: Cart },
  { path: "/login", component: Login },
  { path: "/register", component: Register },
];
export default RouterPublic;
