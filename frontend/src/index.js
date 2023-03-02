import React from "react";
import ReactDOM from "react-dom";
import { Provider } from "react-redux";
import { BrowserRouter } from "react-router-dom";
import { UserProvider } from "./context/currentSession";
import "./reset.css";
import "./index.css";
import App from "./App";
import configureStore from "./store";
import csrfFetch from "./store/csrf";
import * as sessionActions from "./store/session";
import { createRoot } from 'react-dom/client';

const store = configureStore();
const domNode = document.getElementById("root");
const root = createRoot(domNode);

if (process.env.NODE_ENV !== "production") {
  window.store = store;
  window.csrfFetch = csrfFetch;
  window.sessionActions = sessionActions;
}

function Root() {
  return (
    // <UserProvider>
      <Provider store={store}>
        <BrowserRouter>
          <App />
        </BrowserRouter>
      </Provider>
  );
}

const renderApplication = () => {
  root.render(
    <React.StrictMode>
      <Root />
    </React.StrictMode>
  );
};

// if (
//   sessionStorage.getItem("currentUser") === null ||
//   sessionStorage.getItem("X-CSRF-Token") === null
// ) {
//   store.dispatch(sessionActions.restoreSession()).then(renderApplication);
// } else {
//   renderApplication();
// }

renderApplication();
