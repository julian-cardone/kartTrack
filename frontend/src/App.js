import { Route, Switch } from "react-router-dom";

function App() {
  return (
    <>
      <Switch>
        <Route path="/">
          <p>Hello!</p>
        </Route>
      </Switch>
    </>
  );
}

export default App;
