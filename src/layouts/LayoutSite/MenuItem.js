import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import menuservice from "../../services/MenuService";

function MenuItem(props) {
  const rowMenu = props.menu;
  const [menus, setMenus] = useState([]);
  useEffect(function () {
    (async function () {
      await menuservice
        .getByParentId("mainmenu", rowMenu.id)
        .then(function (result) {
          setMenus(result.data.menus);
        });
    })();
  }, []);
  if (menus == null) {
    return (
      <li className="nav-item">
        <Link className="nav-link text-black" to={rowMenu.link}>
          {rowMenu.name}
        </Link>
      </li>
    );
  } else {
    return (
      <li className="nav-item dropdown">
        <Link
          className="nav-link dropdown-toggle text-black"
          to="/"
          role="button"
          data-bs-toggle="dropdown"
          aria-expanded="false"
        >
          {rowMenu.name}
        </Link>
        <ul className="dropdown-menu">
          {menus.map(function (menu1, index) {
            return (
              <li key={index}>
                <Link className="dropdown-item" to={menu1.link}>
                  {menu1.name}
                </Link>
              </li>
            );
          })}
        </ul>
      </li>
    );
  }
}
export default MenuItem;
