import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import userservice from "../../../services/UserService";

function Register() {
  const navigate = useNavigate();
  const [user, setUser] = useState([]);
  useEffect(function () {
    (async function () {
      await userservice.getAll().then(function (result) {
        setUser(result.data.user);
      });
    })();
  }, []);
  const [name, setName] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [address, setAddress] = useState("");
  const [roles, setRoles] = useState("user");
  const [status, setStatus] = useState(1);
  async function userStore(event) {
    event.preventDefault();
    var user = new FormData();
    user.append("name", name);
    user.append("email", email);
    user.append("phone", phone);
    user.append("username", username);
    user.append("password", password);
    user.append("address", address);
    user.append("roles", roles);
    user.append("status", status);
    await userservice.create(user).then(function (res) {
      alert(res.data.message);
      navigate("/", { replace: true });
    });
  }
  return (
    <div class="container">
      <form onSubmit={userStore}>
        <h3 style={{ textAlign: "center" }}>ĐĂNG KÝ TÀI KHOẢN</h3>
        <div className="register" style={{ marginLeft: "350px" }}>
        <div className="form-group">
            <label htmlFor="name">Tên tài khoản</label>
            <input
              type="name"
              style={{ width: 400 }}
              className="form-control"
              id="name"
              value={name}
              onChange={(event) => setName(event.target.value)}
            />
          </div>
          <div className="form-group">
            <label htmlFor="email">Email</label>
            <input
              type="email"
              style={{ width: 400 }}
              className="form-control"
              id="email"
              aria-describedby="emailHelp"
              value={email}
              onChange={(event) => setEmail(event.target.value)}
            />
          </div>
          <div className="form-group">
            <label htmlFor="phone">Phone</label>
            <input
              type="phone"
              style={{ width: 400 }}
              className="form-control"
              id="phone"
              value={phone}
              onChange={(event) => setPhone(event.target.value)}
            />
          </div>
          <div className="form-group">
            <label htmlFor="username">Username</label>
            <input
              type="username"
              style={{ width: 400 }}
              className="form-control"
              id="username"
              value={username}
              onChange={(event) => setUsername(event.target.value)}
            />
          </div>
          <div className="form-group">
            <label htmlFor="password">Password</label>
            <input
              type="password"
              style={{ width: 400 }}
              className="form-control"
              id="password"
              value={password}
              onChange={(event) => setPassword(event.target.value)}
            />
          </div>
          <div className="form-group">
            <label htmlFor="address">Địa chỉ</label>
            <input
              type="address"
              style={{ width: 400 }}
              className="form-control"
              id="address"
              value={address}
              onChange={(event) => setAddress(event.target.value)}
            />
          </div>
          <div className="form-group" style={{ marginBottom: "2vh" }}>
            <button type="submit" className="btn btn-primary">
              Đăng Ký
            </button>
            &nbsp; <a href="/">Về trang chủ</a>
          </div>
        </div>
      </form>
    </div>
  );
}
export default Register;
