import { useEffect, useState } from "react";
import userservice from "./../../../services/UserService";
import { useNavigate, useParams } from "react-router-dom";
import axios from "axios";

function Login() {
    const navigate = useNavigate();

    const [email, setEmail] = useState("");
    const [username, setUsername] = useState("");
    const [password, setPassword] = useState("");
    const [roles, setRoles] = useState("");
    const [status, setStatus] = useState(1);
  
    const { id } = useParams();

    const [user, setUser] = useState([]);
    useEffect(function () {
      (async function () {
        await userservice.getAll().then(function (result) {
          setUser(result.data.user);
        });
      })();
    }, []);
    async function handleSubmit(event) {
      event.preventDefault();
      // alert("Thành công");
      var user = new FormData();
      user.append("email", email);
      user.append("username", username);
      user.append("password", password);
      user.append("roles", roles);
      user.append("status", status);
      await userservice.update(user,id).then(function (res) {
        alert(res.data.message);
        navigate("/", { replace: true });
      });
    }
  return (
    <form onSubmit={handleSubmit}>
      <h3 style={{ textAlign: "center" }}>Vui lòng đăng nhập</h3>
      <div className="login" style={{ marginLeft:"500px" }}>
        <div className="form-group">
          <label htmlFor="email">Email</label>
          <input
            type="email"
            style={{ width: 400}}
            className="form-control"
            id="email"
            aria-describedby="emailHelp"
            value={email}
            onChange={(event) => setEmail(event.target.value)}
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
        <div className="form-group" style={{ marginBottom: "2vh" }}>
          <button type="submit" className="btn btn-primary">
            Đăng nhập
          </button>
          &nbsp; <a href="/">Về trang chủ</a>
        </div>
      </div>
    </form>
  );
}
export default Login;
