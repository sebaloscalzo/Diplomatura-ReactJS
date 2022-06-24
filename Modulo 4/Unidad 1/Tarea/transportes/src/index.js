import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';

import './styles/components/layout/Footer.css';
import './styles/components/layout/Header.css';
import './styles/components/layout/Nav.css';

import './styles/components/pages/HomePage.css';
import './styles/components/pages/NosotrosPage.css';
import './styles/components/pages/ContactoPage.css';
import './styles/components/pages/NovedadesPage.css';


const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
