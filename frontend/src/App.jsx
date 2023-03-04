import { Route, Switch } from "react-router-dom";
import Login from "./components/Login";

function App() {
  return (
    <>
      <Switch>
        <Route path="/">
          <h1 className="display-1">working??</h1>
          <p className="display-1">testing testing</p>

          <p className="lead">lead para</p>
          <p className="lead text-center">look at this!</p>

          <p className="text-decoration-underline">underline</p>
          <p className="fw-bold">this is bold text</p>
          <small>this is small text</small>
        </Route>
      </Switch>
    </>
  );
}

export default App;
