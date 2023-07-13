import axios from "axios";

const httpAxios = axios.create({
    baseURL: 'http://localhost/laravel_dtapi/public/api/',
    timeout: 60000,
    headers:{'X-Custom-Header': 'foobar'}
});
export default httpAxios;