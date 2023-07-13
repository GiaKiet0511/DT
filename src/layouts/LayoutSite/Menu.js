import { Link } from "react-router-dom";
import menuservice from "../../services/MenuService";
import { useEffect } from "react";
import { useState } from "react";
import MenuItem from "./MenuItem";

function Menu() {
  const [menus, setMenus] = useState([]);
  const [parent_id, setParentId] = useState(0);
  useEffect(function () {
    (async function () {
      try {
        await menuservice
          .getByParentId("mainmenu", parent_id)
          .then(function (result) {
            setMenus(result.data.menus);
          });
      } catch (error) {
        console.error(error);
      }
    })();
  }, []);

  return (
    <section className="menu">
      <div className="container">
        <nav className="navbar navbar-expand-lg">
          <div className="container-fluid">
            <Link
              className="navbar-brand text-black d-md-none d-sm-block"
              to="/"
            >
              Smartpoint
            </Link>
            <button
              className="navbar-toggler text-white"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span className="navbar-toggler-icon"></span>
            </button>
            <div
              className="collapse navbar-collapse"
              id="navbarSupportedContent"
              style={{fontSize:"20px"}}
            >
              <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                {menus.map(function (menu, index) {
                  return <MenuItem key={index} menu={menu} />;
                })}
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </section>
  );
}

export default Menu;
