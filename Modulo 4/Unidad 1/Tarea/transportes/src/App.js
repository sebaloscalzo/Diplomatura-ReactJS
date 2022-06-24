import { BrowserRouter, Routes, Route } from 'react-router-dom';

import './App.css';
import './styles/components/pages/HomePage.css';
import Header from './components/layout/Header';
import Nav from './components/layout/Nav';
import Footer from './components/layout/Footer';

import ContactoPage from './pages/ContactoPage';
import HomePage from './pages/HomePage';
import NosotrosPage from './pages/NosotrosPage';
import NovedadesPage from './pages/NovedadesPage';

function App() {
  return (
    <div className="App">
      <Header></Header>
      
      <BrowserRouter>
        <Nav></Nav>
        <Routes>
          <Route path="/" element={<HomePage />}></Route>
          <Route path="nosotros" element={<NosotrosPage />}></Route>
          <Route path="novedades" element={<NovedadesPage />}></Route>
          <Route path="contacto" element={<ContactoPage />}></Route>
        </Routes>
      </BrowserRouter>
      
      <Footer></Footer>
    </div>
  );
}

export default App;
