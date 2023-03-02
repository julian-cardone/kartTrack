import { Route, Switch } from "react-router-dom";
import Login from "./components/Login";

function App() {
  return (
    <>
      <Switch>
        <Route path="/">
          <Login />
        </Route>
      </Switch>
    </>
  );
}

export default App;
