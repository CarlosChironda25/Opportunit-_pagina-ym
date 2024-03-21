import { Card } from "react-bootstrap";
import Footer from "./component/Footer";

import { BrowserRouter, Route, Routes } from "react-router-dom";
import BussinessCard from "./component/BussinessCard";
import Header from "./component/Header";
import Banner from "./component/Banner";
import Home from "./component/Home";
import Job from "./component/Job";

function App() {
  return (
    <div>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/job" element={<Job />} />
        </Routes>

        <Footer />
      </BrowserRouter>
    </div>
  );
}

export default App;
