import { useInput, useSubmit } from "../hooks";
import * as sessionActions from "../store/session";

function Login({ onSuccess }) {
  const [username, onUsernameChange] = useInput("username");
  const [password, onPasswordChange] = useInput("password");

  const [errors, onSubmit] = useSubmit({
    onSuccess,
    action: sessionActions.login({ username, password }),
  });

  return (
    <form onSubmit={onSubmit} id="loginform">
      <button type="submit" form="loginform">DEMO LOGIN</button>
    </form>
  );
}

export default Login;
