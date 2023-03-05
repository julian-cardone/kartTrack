import { Route, Switch } from "react-router-dom";
import Login from "./components/Login";
import SplashPage from "./components/SplashPage";

function App() {
  return (
    <>
      <Switch>
        <Route path="/">
          <SplashPage />
        </Route>
      </Switch>
    </>
  );
}

export default App;
